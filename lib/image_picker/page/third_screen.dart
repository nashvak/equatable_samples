import 'dart:io';

import 'package:equatable_asif_taj/todo/page/todo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc/image_picker_bloc.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TodoScreen(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_forward),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  context.read<ImagePickerBloc>().add(CaptureCamera());
                },
                icon: const Icon(Icons.camera),
              ),
              IconButton(
                onPressed: () {
                  context.read<ImagePickerBloc>().add(
                        CaptureGallery(),
                      );
                },
                icon: const Icon(Icons.photo),
              ),
            ],
          ),
          BlocBuilder<ImagePickerBloc, ImagePickerState>(
            builder: (context, state) {
              return Container(
                child: state.file == null
                    ? const Text("No image")
                    : Image.file(
                        File(
                          state.file!.path.toString(),
                        ),
                      ),
              );
            },
          )
        ],
      ),
    );
  }
}
