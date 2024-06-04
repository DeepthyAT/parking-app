import 'package:firebase_cached_image/firebase_cached_image.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

extension FirebaseImage on Image {
  /// Image from firebase storage
  static Image storage(String url) {
    final isAbsolute = url.startsWith('gs://') || url.startsWith('https://');
    final firebaseUrl = isAbsolute
        ? FirebaseUrl(url)
        : FirebaseUrl.fromReference(FirebaseStorage.instance.ref(url));
    return Image(
      image: FirebaseImageProvider(firebaseUrl),
      errorBuilder: (context, error, stackTrace) {
        if (error is ImageNotFoundException) {
          return const Text('Image not found!');
        } else {
          return Text('Error loading image: $error');
        }
      },
      loadingBuilder: (_, Widget child, ImageChunkEvent? loadingProgress) =>
          loadingProgress != null ? const CircularProgressIndicator() : child,
    );
  }
}
