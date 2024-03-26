import 'package:image_picker/image_picker.dart';

class ImageService {
  final ImagePicker picker = ImagePicker();
  Future<XFile?> accessCamera() async {
    final XFile? file = await picker.pickImage(source: ImageSource.camera);
    return file;
  }

  Future<XFile?> accessPhoto() async {
    final XFile? file = await picker.pickImage(source: ImageSource.gallery);
    return file;
  }
}
