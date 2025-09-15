import 'package:dopamind/ui/views/home/home_viewmodel.dart';
import 'package:dopamind/ui/widgets/common/glass_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  'Hello, ${viewModel.userName}',
                  style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                const Text('// TODO: Add Mood Picker Carousel'),
                const SizedBox(height: 30),
                const Text('// TODO: Add Focus Streak & Daily Quote Card'),
                const Spacer(),
                Center(
                  child: GlassButton(
                    onTap: viewModel.navigateToFocus,
                    text: 'Start Focus Session',
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
