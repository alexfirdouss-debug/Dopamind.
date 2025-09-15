import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'personalization_viewmodel.dart';

class PersonalizationView extends StackedView<PersonalizationViewModel> {
  const PersonalizationView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PersonalizationViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(title: const Text('Personalize Your Experience')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'TODO: Build the personalization questionnaire here.',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  @override
  PersonalizationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PersonalizationViewModel();
}
