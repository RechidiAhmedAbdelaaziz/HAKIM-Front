class ApiConsts {
  static const String baseUrl = "http://localhost:3000/api/v1/";

  static const String auth = "auth";

  static const String login = "auth/login";
  static const String signup = "auth/signup";
  static const String signupDr = "auth/signup-dr";

  static const String posts = "posts";
  static const String comments = "$posts/comment";

  static const String questions = "questions";
  static const String answers = "answers";

  static const String appointments = "appointments";

  static const String location = "location";

  static const String donation = "donations";
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
