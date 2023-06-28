// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:universal_platform/universal_platform.dart';

// extension BuildContextExtFile on BuildContext {
//   Future<T?> pickedFile<T>({
//     List<String>? extensions,
//     String? initialDirectory,
//     bool isImage = false,
//     bool allowMultiple = false,
//   }) async {
//     if (UniversalPlatform.isIOS || UniversalPlatform.isAndroid) {
//       try {
//         final files = await FilePicker.platform.pickFiles(
//           allowMultiple: allowMultiple,
//           allowedExtensions: isImage ? [] : extensions,
//           initialDirectory: initialDirectory,
//           type: isImage ? FileType.image : FileType.any,
//         );

//         if (files != null) {
//           if (allowMultiple) {
//             return files.files.map((e) => e.path ?? '').toList() as T;
//           } else {
//             return files.files.first.path as T;
//           }
//         }
//       } on PlatformException catch (e) {
//         debugPrint('Unsupported operation $e');
//       } catch (ex) {
//         debugPrint('$ex');
//       }
//     }
//     return null;
//   }

//   Future<T?> pickMedia<T>({
//     List<String>? extensions,
//     String? initialDirectory,
//     bool isImage = false,
//     bool allowMultiple = false,
//     bool allowCompression = true,
//   }) async {
//     if (UniversalPlatform.isIOS || UniversalPlatform.isAndroid) {
//       try {
//         final files = await FilePicker.platform.pickFiles(
//           allowMultiple: allowMultiple,
//           allowedExtensions: isImage ? [] : extensions,
//           initialDirectory: initialDirectory,
//           allowCompression: allowCompression,
//           type: FileType.media,
//         );

//         if (files != null) {
//           if (allowMultiple) {
//             return files.files.map((e) => e.path).toList() as T;
//           } else {
//             return files.files.first.path as T;
//           }
//         }
//       } on PlatformException catch (e) {
//         debugPrint('Unsupported operation $e');
//       } catch (ex) {
//         debugPrint('$ex');
//       }
//     }
//     return null;
//   }

//   Future<String?> pickVideo() async {
//     // return DeviceMediaServiceImpl().openPickVideo();
//     if (UniversalPlatform.isIOS || UniversalPlatform.isAndroid) {
//       try {
//         final files = await FilePicker.platform.pickFiles(
//           allowMultiple: false,
//           allowCompression: false,
//           type: FileType.video,
//         );

//         return files?.files.first.path;
//       } on PlatformException catch (e) {
//         debugPrint('Unsupported operation $e');
//       } catch (ex) {
//         debugPrint('$ex');
//       }
//     }
//     return null;
//   }
// }
