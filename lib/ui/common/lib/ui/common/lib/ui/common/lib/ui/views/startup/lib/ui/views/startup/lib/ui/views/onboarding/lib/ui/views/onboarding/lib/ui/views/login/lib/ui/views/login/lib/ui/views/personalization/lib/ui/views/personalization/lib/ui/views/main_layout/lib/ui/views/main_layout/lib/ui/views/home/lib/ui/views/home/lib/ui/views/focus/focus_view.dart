import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'focus_viewmodel.dart';

class FocusView extends StackedView<FocusViewModel> {
  const FocusView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FocusViewModel viewModel,
    Widget? child,
  ) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Focus View\n\n// TODO: Build Timer UI, focus modes, etc.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  FocusViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FocusViewModel();
}
