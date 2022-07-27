class AppUrl {
  //static const String liveBaseURL = "https://shiny-awful-wildebeast.gigalixirapp.com/api/v1";
  static const String localBaseURL = "https://cryptowatch-server.herokuapp.com";

  static const String baseURL = localBaseURL;
  static const String login = baseURL + "/auth/login";
  static const String register = baseURL + "/auth/signup";
  static const String forgotPassword = baseURL + "/forgot-password";
}