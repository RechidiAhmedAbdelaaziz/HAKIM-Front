import 'package:flutter/material.dart';
import 'package:front/core/Theme/colors.dart';

import '../widgets/index.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Logo(),
        Scaffold(
          backgroundColor: AppColors.white,
          appBar: hakimAppBar(
            showChat: () {},
            showNotification: () {},
          ),
          body: const Column(
            children: [
              UpcomingAppointment(),
              Expanded(
                child: Posts(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
