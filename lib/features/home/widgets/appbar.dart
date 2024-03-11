part of 'index.dart';

AppBar hakimAppBar({
  required void Function() showNotification,
  required void Function() showChat,
}) {
  return AppBar(
    backgroundColor: AppColors.blue,
    actions: [
      InkWell(
        onTap: showNotification,
        child: SvgPicture.asset(AppIcons.notification),
      ),
      InkWell(
        onTap: showChat,
        child: SvgPicture.asset(AppIcons.chat),
      ),
    ],
  );
}
