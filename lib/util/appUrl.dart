class AppUrl {
  //static const String liveBaseURL = "https://shiny-awful-wildebeast.gigalixirapp.com/api/v1";
  static const String localBaseURL = "https://git.heroku.com/cryptowatch-server.git";

  static const String baseURL = localBaseURL;
  static const String login = baseURL + "/auth/login";
  static const String register = baseURL + "/registration";
  static const String forgotPassword = baseURL + "/forgot-password";
}