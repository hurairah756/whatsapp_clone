import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void showSnackBar({required BuildContext context, required String content}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}

Future<File?> pickImageFromGallery(BuildContext context) async {
  File? image;
  try {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      image = File(pickedImage.path);
    }
  } catch (e) {
    showSnackBar(context: context, content: e.toString());
  }
  return image;
}

Future<File?> pickVideoFromGallery(BuildContext context) async {
  File? video;
  try {
    final pickedVideo =
        await ImagePicker().pickVideo(source: ImageSource.gallery);

    if (pickedVideo != null) {
      video = File(pickedVideo.path);
    }
  } catch (e) {
    showSnackBar(context: context, content: e.toString());
  }
  return video;
}

// Future<GiphyData?> pickGIF(BuildContext context) async {
//   GiphyData? gif;
//   try {
//     final flutterGiphy =
//         FlutterGiphy(apiKey: 'gUmEfFaWD4zJKzKovktmPKYgpSv63oqh');
//     flutterGiphy.showGifPicker(
//       context: context,
//       apikey: 'gUmEfFaWD4zJKzKovktmPKYgpSv63oqh',
//       onSelected: (GiphyData value) {
//         gif = value;
//         print(gif);
//       },
//     );
//   } catch (e) {
//     showSnackBar(context: context, content: e.toString());
//   }
//   return gif;
// }
