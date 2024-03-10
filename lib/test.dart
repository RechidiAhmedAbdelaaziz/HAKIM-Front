import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front/core/types/app_state.dart';
import 'package:front/features/posts/data/models/post.dart';
import 'package:front/features/posts/domain/entites/post.dart';

import 'features/posts/logic/index.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<PostListCubit, AppState<List<Post>>>(
        builder: (context, state) {
          return state.when(
            initial: () => _buildpage(context),
            loading: () => const Center(
                child: CircularProgressIndicator(color: Colors.purple)),
            loaded: (posts) {
              return _buildpage(context,
                  text: posts.map((e) => e.toModel().toString()).toString());
            },
            error: (error) => Center(child: Text(error)),
          );
        },
      ),
    );
  }

  Center _buildpage(BuildContext context, {String? text}) {
    return Center(
      child: TextButton(
        onPressed: () async {
          context
              .read<PostListCubit>()
              .delete(Post.fromModel(PostModel.fromJson(const {
                "_id": "65dc44db7c88105aa88ef966",
              })));

          // context.read<LoginCubit>().login();
          // context.read<LoginCubit>().posts();
          // context.read<LoginCubit>().getProfile();
        },
        child: Text(text ?? "Login"),
      ),
    );
  }
}
