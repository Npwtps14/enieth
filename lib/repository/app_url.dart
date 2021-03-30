class AppUrl {
  static const String liveBaseURL = "";
  static const String localBaseURL = "";

  static const String baseURL = liveBaseURL;
  static const String login = baseURL + "/session";
  static const String register = baseURL + "/registration";
  static const String forgotPassword = baseURL + "/forgot-password";
}
