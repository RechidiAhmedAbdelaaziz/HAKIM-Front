part of 'index.dart';

class PosterInfo extends StatelessWidget {
  final Doctor _poster;
  final DateTime _created;
  const PosterInfo(this._poster, this._created, {super.key});

  Text _dateCreation() {
    return Text(
      _created.toString(),
      style: AppTextStyle.hint,
    );
  }

  Text _posterName() {
    return Text(
      _poster.name!,
      style: AppTextStyle.title,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        width(9),
        ProfilePic(height: 50, pic: _poster.info!.pic!),
        width(8),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _posterName(),
            height(2),
            _dateCreation(),
          ],
        ),
      ],
    );
  }
}
