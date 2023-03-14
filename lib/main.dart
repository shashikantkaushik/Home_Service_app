
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:homzy1/auth.dart';
import 'package:homzy1/screens/WelcomeScreen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),

      ],
      child: const MaterialApp(

        debugShowCheckedModeBanner: false,
        home: WelcomeScreen(),
        title: "Homzy",
      ),
    );
  }
}







/*


WidgetsFlutterBinding.ensureInitialized() is a method in the Flutter framework that ensures that the WidgetsFlutterBinding is properly initialized before running any other Flutter code.

WidgetsFlutterBinding is responsible for initializing various Flutter services like the rendering system, event handling, and other platform-specific services. It also provides access to the BuildContext of the current widget tree, which is used to build the UI.


ensureInitialized() is a method in the dart:io library in Dart that ensures that the Dart runtime is properly initialized before running any other Dart code.

When running Dart code outside of Flutter, it's necessary to call ensureInitialized() to ensure that the Dart runtime is initialized and available to the application. This method is often called at the beginning of an application's main() function.

If ensureInitialized() is not called before running other Dart code, the application may encounter errors and unexpected behavior because the Dart runtime may not be fully initialized or available.



If WidgetsFlutterBinding.ensureInitialized() is not called before running any other Flutter code, the application may encounter errors and unexpected behavior such as:

Application crashes: If the Flutter framework is not properly initialized, the application may crash at runtime.

UI not rendering: If the framework is not initialized, the application may not be able to render any UI elements or widgets, resulting in a blank screen or unresponsive UI.

Widget tree not being built: The BuildContext provided by WidgetsFlutterBinding is essential for building the widget tree, which is the backbone of a Flutter application's UI. Without it, the application may not be able to build the widget tree correctly or at all.

Platform-specific services not available: WidgetsFlutterBinding is responsible for initializing various platform-specific services like the rendering system, event handling, and other platform-specific services. If these services are not initialized, the application may not be able to function correctly on different platforms or devices.

In summary, calling WidgetsFlutterBinding.ensureInitialized() before running any other Flutter code is important to ensure that the Flutter framework is properly initialized and available to the application, avoiding potential errors and unexpected behavior.



Calling WidgetsFlutterBinding.ensureInitialized() before running any other Flutter code is important because it initializes the Flutter framework, which is required for any Flutter application to function correctly. If this method is not called, the application may encounter errors and unexpected behavior.
The code imports necessary packages for Firebase integration, Material design widgets, and Provider library.
The main function initializes the Firebase app using Firebase.initializeApp() and starts the application by calling runApp().
The MyApp class is a stateless widget that provides a MultiProvider to the application. The MultiProvider provides access to the AuthProvider, which is used to manage user authentication in the application.
The MaterialApp widget is the top-level widget of the application and sets the app's title, disables the debug banner, and sets the home screen to the WelcomeScreen.
Finally, the WelcomeScreen widget is the initial screen of the application and is displayed when the app starts.



In this code, the Firebase.initializeApp() function initializes the Firebase app, which is required before using any Firebase service. The AuthProvider is a custom class that is created to handle user authentication in the app. It uses Firebase Authentication API to handle user registration, login, and logout.

The ChangeNotifierProvider class from the provider package is used to provide the AuthProvider instance to the app's widget tree. This way, any child widget can access the AuthProvider instance and use its methods to manage user authentication.

When the app starts, the WelcomeScreen is displayed. The WelcomeScreen widget checks if the user is already logged in or not. If the user is not logged in, it shows the login and registration buttons. When the user taps on one of these buttons, it navigates to the appropriate screen for login or registration.

Overall, the Firebase integration and the authentication part of the code help to make the app more secure and allow users to sign in to the app using their credentials or social media accounts.


Firebase.initializeApp() is a function from the firebase_core package that initializes the Firebase app. This function should be called before any Firebase service is used in the application. It ensures that the Firebase app is initialized correctly and all necessary dependencies are set up.

The AuthProvider class is a custom class created to handle user authentication in the app. It uses the Firebase Authentication API to perform user authentication operations such as login, logout, and registration. The AuthProvider class encapsulates all the details related to user authentication and provides a simple interface for other parts of the app to use.

The ChangeNotifierProvider class from the provider package is used to provide the AuthProvider instance to the app's widget tree. The ChangeNotifierProvider is a special kind of widget that listens to changes in a ChangeNotifier instance and rebuilds the child widget tree whenever there is a change. In this case, the AuthProvider class extends the ChangeNotifier class, so any changes made to the AuthProvider instance will trigger a rebuild of the child widget tree.

By providing the AuthProvider instance to the app's widget tree using ChangeNotifierProvider, any child widget in the widget tree can access the AuthProvider instance and use its methods to manage user authentication. This means that any widget in the app can perform authentication operations such as login, logout, or registration, without having to worry about the details of the authentication implementation.
 */