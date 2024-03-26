import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../bloc/bloc/image_picker_bloc.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    context.read<ImagePickerBloc>().add(CaptureCamera());
                  },
                  icon: Icon(Icons.camera)),
              IconButton(
                  onPressed: () {
                    context.read<ImagePickerBloc>().add(CaptureGallery());
                  },
                  icon: Icon(Icons.photo)),
            ],
          ),
          BlocBuilder<ImagePickerBloc, ImagePickerState>(
            builder: (context, state) {
              return Container(
                child: state.file == null
                    ? Text("No image")
                    : Image.file(File(state.file!.path.toString())),
              );
            },
          )
        ],
      ),
    );
  }
}
