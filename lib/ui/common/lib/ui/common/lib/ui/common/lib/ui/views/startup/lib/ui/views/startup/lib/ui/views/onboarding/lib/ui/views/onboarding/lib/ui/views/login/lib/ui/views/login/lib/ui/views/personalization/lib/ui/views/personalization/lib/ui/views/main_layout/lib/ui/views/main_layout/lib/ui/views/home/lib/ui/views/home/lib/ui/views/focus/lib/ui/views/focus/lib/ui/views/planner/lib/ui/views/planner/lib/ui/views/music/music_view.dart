import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'music_viewmodel.dart';

class MusicView extends StackedView<MusicViewModel> {
  const MusicView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MusicViewModel viewModel,
    Widget? child,
  ) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Music View\n\n// TODO: Build music player, Spotify integration, etc.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  MusicViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MusicViewModel();
}
