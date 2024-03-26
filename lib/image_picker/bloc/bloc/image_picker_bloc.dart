import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:equatable_asif_taj/image_picker/utils/image_service.dart';
import 'package:image_picker/image_picker.dart';

part 'image_picker_event.dart';
part 'image_picker_state.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  // dependency injection, creating instance
  ImageService service = ImageService();
  //passing the dependency injection to the bloc
  ImagePickerBloc(this.service) : super(const ImagePickerState()) {
    on<CaptureCamera>(camerafuncton);
    on<CaptureGallery>(galleryfunction);
  }

  FutureOr<void> camerafuncton(
      CaptureCamera event, Emitter<ImagePickerState> emit) async {
    XFile? file = await service.accessCamera();
    emit(state.copyWith(file: file));
  }

  FutureOr<void> galleryfunction(
      CaptureGallery event, Emitter<ImagePickerState> emit) async {
    XFile? file = await service.accessPhoto();
    emit(state.copyWith(file: file));
  }
}
