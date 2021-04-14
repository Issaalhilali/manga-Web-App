import 'dart:io';

// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:manga/admin/providers/auth_provider.dart';
import 'package:manga/components/applocal.dart';
import 'package:provider/provider.dart';

class AddImage extends StatefulWidget {
  @override
  _AddImageState createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  File _image;
  // PickedFile _imageFile;
  @override
  Widget build(BuildContext context) {
    final _authData = Provider.of<AuthProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          _authData.getImage().then((value) {
            setState(() {
              _image = value;
            });
            if (value != null) {
              _authData.isPicAvil = true;
            }
          });
        },
        child: SizedBox(
          height: 150,
          width: 150,
          child: Card(
              child: _image == null
                  ? Center(
                      child: Text('${getLang(context, 'add_image')}'),
                    )
                  : Image.file(
                      _image,
                      fit: BoxFit.fill,
                    )),
        ),
      ),
    );
  }
}
// Widget _previewImage() {
   
//     if (_imageFile != null) {
//       if (kIsWeb) {
//         // Why network?
//         // See https://pub.dev/packages/image_picker#getting-ready-for-the-web-platform
//         return Image.network(_imageFile.path);
//       } else {
//         return Semantics(
//             child: Image.file(File(_imageFile.path)),
//             label: 'image_picker_example_picked_image');
//       }
//     }  else {
//       return const Text(
//         'You have not yet picked an image.',
//         textAlign: TextAlign.center,
//       );
//     }
//   }
  
// }
 