part of 'index.dart';

class Posts extends StatelessWidget {
  const Posts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostListCubit, AppState<List<Post>>>(
      builder: (context, state) {
        return state.map(
          initial: (value) => const Center(
            child: CircularProgressIndicator(color: Colors.amberAccent),
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
    );
  }
}
