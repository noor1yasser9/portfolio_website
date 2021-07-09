class Project {
  final String title, description, link, lang;

  Project({this.title, this.description, this.link, this.lang});
}

const KOTLIN = "Kotlin";
const DART = "Dart";
const SWIFT = "Swift";

List<Project> demo_projects = [
  Project(
      title: "Chat Socket",
      description:
          "This is a simple chat demo for socket.io and Android. You can connect to https://socket-io-chat.now.sh using this app.",
      link: "https://github.com/noor1yasser9/ChatSocket",
      lang: "Kotlin"),
  Project(
      title: "Country Weather",
      description:
          "Weather app is a simple weather forecast app, which uses some APIs to fetch 5 day / 3 hour forecast data from the OpenWeatherMap and to fetch places,cities,counties,coords etc. from Algolia Places. The main goal of this app is to be a sample of how to build an high quality Android application that uses the Architecture components, Dagger etc. in Kotlin.",
      link: "https://github.com/noor1yasser9/CountryWeather",
      lang: "Kotlin"),
  Project(
      title: "Movie App Q",
      description:
          "MovieAppQ is a sample Android project using The Movie DB API based on MVVM architecture. It showcases the app development with well-designed architecture and up-to-date Android tech stacks.",
      link: "https://github.com/noor1yasser9/MovieAppQ",
      lang: "Kotlin"),
  Project(
      title: "Image App",
      description:
          "A simple Flutter application showing how to load basic UI components and fetch data from APIs.",
      link:
          "https://www.youtube.com/watch?v=TsUi0tcxF_c&list=PLIf5OoJZjgrBsmqnEcXHKnWvEe4_0j16C&index=2&ab_channel=NoorEl-Nahhal",
      lang: "Dart"),
  Project(
      title: "Chat App",
      description:
      "A chat app made by Flutter and Firebase, Support login with email account, chat with any user, send text, image and sticker, update avatar and profile, and show notifications are supported.",
      link:
      "https://www.youtube.com/watch?v=jDd5Z2pz8Yo&ab_channel=NoorEl-Nahhal",
      lang: "Dart"),
  Project(
      title: "Note App",
      description:
      "In this a simple app you can learn to deal with an API (add, update, delete, view)",
      link:
      "https://www.youtube.com/watch?v=ShG-00YMhwU&list=PLIf5OoJZjgrBsmqnEcXHKnWvEe4_0j16C&ab_channel=NoorEl-Nahhal",
      lang: "Dart"),
  Project(
      title: "Core Data Image List App",
      description:
          "Learn how to use Core Data for iOS to do local data storage! In this lesson, you'll learn how Core Data works and the basics of how you'll use it in your iOS app.",
      link:
          "https://www.youtube.com/watch?v=Qqh_I7SY64c&ab_channel=NoorEl-Nahhal",
      lang: "Swift"),
  Project(
      title: "Food Ordering App",
      description: "My first project in programming applications using Swift",
      link:
          "https://www.youtube.com/watch?v=n8XAUWWLz6Y&ab_channel=NoorEl-Nahhal",
      lang: "Swift"),
];
