import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'package:favorite_places/models/uuid.dart';

class FileHelper {
  FileHelper._internal();

  static Future<FileHelper> _initialize() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final imagesDirectory = Directory('${documentsDirectory.path}/Images');
    imagesDirectory.createSync(recursive: true);
    _imagesDirectory = imagesDirectory;
    return FileHelper._internal();
  }

  static final Future<FileHelper> instance = _initialize();
  static late Directory _imagesDirectory;

  Future<File?> loadImage(String name) async {
    final image = File('${_imagesDirectory.path}/$name');
    return await image.exists() ? image : null;
  }

  Future<File> saveImage(File image) async {
    return await image.copy('${_imagesDirectory.path}/${uuid.v1()}');
  }
}

extension FileName on File {
  String get name {
    return basename(path);
  }
}
