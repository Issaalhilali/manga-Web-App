import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:manga/components/applocal.dart';

class AuthProvider extends ChangeNotifier {
  File _image;
  String pickerError = '';
  bool isPicAvil = false;
  BuildContext context;

  Future<File> getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      this._image = File(pickedFile.path);
      notifyListeners();
    } else {
      this.pickerError = '${getLang(context, 'No_image_select')}';
      print('No image selected.');
    }
    return this._image;
  }
}
