import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:money_tracker/ui/utils/functions.dart';

enum ImageState { missing, processing, selected, uploaded }

class ProfileAvatar extends StatefulWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  @override
  State<ProfileAvatar> createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  final _storage = FirebaseStorage.instance;
  ImageState _imageState = ImageState.missing;
  XFile? _image;
  String _imageFolder = 'images';
  String _imageUrl = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await _setImageName();
    });
  }

  Future<void> _setImageName() async {
    final photoURL = await FirebaseAuth.instance.currentUser!.photoURL;
    if (photoURL != null && photoURL.isNotEmpty) {
      setState(() {
        _imageUrl = photoURL;
        _imageState = ImageState.uploaded;
      });
    }
  }

  Future _pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (image == null) {
      return;
    }

    final imageTmp = XFile(image.path);
    setState(() {
      _image = imageTmp;
      _imageState = ImageState.selected;
    });
  }

  Future _uploadImage() async {
    if (_image == null) {
      return;
    }

    final imageRef = _storage.ref().child('$_imageFolder/${_image?.name}');
    var imageUrl = '';

    try {
      setState(() {
        _imageState = ImageState.processing;
      });

      await imageRef.putFile(File(_image!.path));
      imageUrl = await imageRef.getDownloadURL();
      await FirebaseAuth.instance.currentUser!.updatePhotoURL(imageUrl);
    } on FirebaseException catch (e) {
      setState(() {
        _imageState = ImageState.selected;
      });

      showSnackBarError(context, e.toString());
    }

    setState(() {
      _imageUrl = imageUrl;
      _imageState = ImageState.uploaded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        onTap: _pickImage,
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: CircleAvatar(
            radius: 40,
            backgroundColor: const Color(0xffd0d0d0),
            backgroundImage: _imageState == ImageState.uploaded
                ? NetworkImage(_imageUrl) as ImageProvider
                : _imageState == ImageState.selected
                    ? FileImage(File(_image!.path))
                    : null,
            child: _imageState == ImageState.processing
                ? const CircularProgressIndicator()
                : _imageState == ImageState.missing
                    ? const Icon(
                        Icons.photo_camera,
                        size: 36,
                        color: const Color(0xffababab),
                      )
                    : null,
          ),
        ),
      ),
      const SizedBox(height: 10),
      if (_imageState == ImageState.selected)
        TextButton(
          onPressed: _uploadImage,
          child: const Text(
            'Сохранить',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
          ),
        ),
    ]);
  }
}
