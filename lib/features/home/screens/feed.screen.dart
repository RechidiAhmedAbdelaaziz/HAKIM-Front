import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:front/core/Theme/colors.dart';
import 'package:front/core/constants/icons.dart';
import 'package:front/core/types/app_state.dart';
import 'package:front/core/widgets/separate.dart';
import 'package:front/features/posts/domain/entites/post.dart';
import 'package:front/features/posts/logic/index.dart';
import 'package:front/features/posts/view/post.box.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50.h,
          width: 126.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(132.r),
              image: const DecorationImage(
                image: AssetImage(AppImages.logoHorizontal),
                fit: BoxFit.cover,
              )),
        ),
        Scaffold(
          backgroundColor: AppColors.blue,
          appBar: AppBar(
            actions: [
              InkWell(
                child: SvgPicture.asset(AppIcons.notification),
              ),
            ],
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
