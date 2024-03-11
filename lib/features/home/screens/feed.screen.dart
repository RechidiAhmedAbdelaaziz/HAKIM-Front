import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front/core/Theme/colors.dart';
import 'package:front/core/types/app_state.dart';
import 'package:front/core/widgets/separate.dart';
import 'package:front/features/posts/domain/entites/post.dart';
import 'package:front/features/posts/logic/index.dart';
import 'package:front/features/posts/view/post.box.dart';

import '../widgets/index.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Logo(),
        Scaffold(
          backgroundColor: AppColors.blue,
          appBar: hakimAppBar(
            showChat: () {},
            showNotification: () {},
          ),
          body: Column(
            children: [
              Expanded(
                child: BlocBuilder<PostListCubit, AppState<List<Post>>>(
                  builder: (context, state) {
                    return state.map(
                      initial: (value) => const Center(
                        child: CircularProgressIndicator(
                            color: Colors.amberAccent),
                      ),
                      loading: (value) => const Center(
                        child: CircularProgressIndicator(color: Colors.orange),
                      ),
                      loaded: (value) {
                        return ListView.separated(
                          itemBuilder: (context, index) {
                            return PostBox(value.x[index]);
                          },
                          separatorBuilder: (context, index) => height(12),
                          itemCount: value.x.length,
                        );
                      },
                      error: (value) => const Center(
                        child: CircularProgressIndicator(color: Colors.red),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
