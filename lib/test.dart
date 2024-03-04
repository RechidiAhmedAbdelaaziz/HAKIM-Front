import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front/core/injection/dependency.dart';
import 'package:front/features/login/logic/login_cubit.dart';
import 'package:front/features/login/logic/login_state.dart';
import 'package:front/features/posts/domain/entites/post.dart';
import 'package:front/features/posts/domain/usecases/index.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return state.when(
            initial: () => _buildpage(context),
            loading: () => const Center(
                child: CircularProgressIndicator(color: Colors.purple)),
            success: (data) {
              final post = Post(
                  id: null,
                  text: "new post ",
                  poster: data,
                  likers: 0,
                  comments: 0,
                  date: DateTime.now());

              return _buildpage(context,
                  text: data.toModel().toJson().toString(), post: post);
            },
            error: (error) => Center(child: Text(error)),
          );
        },
      ),
    );
  }

  Center _buildpage(BuildContext context, {String? text, Post? post}) {
    return Center(
      child: TextButton(
        onPressed: () async {
          if (post != null) {
            final x = await locator<PostUseCases>().create(post);
            x.whenOrNull(
              sucess: (data) {
                if (data != null) post.copyWith(id: data);
              },
            );
          }

          // context.read<LoginCubit>().login();
          // context.read<LoginCubit>().posts();
          // context.read<LoginCubit>().getProfile();
        },
        child: Text(text ?? "Login"),
      ),
    );
  }
}
