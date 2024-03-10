part of 'index.dart';

class PostBody extends StatelessWidget {
  final String _post;
  final String _pic;
  const PostBody(this._post, this._pic, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "  $_post",
          style: AppTextStyle.body,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ), //TODO Implement ReadMore functionality
        height(2),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(_pic),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
