import 'package:flutter/material.dart';
import 'package:myapp/database/app_database.dart';
import 'package:myapp/models/contact.dart';
import 'package:myapp/screens/contacts_form.dart';
import 'package:myapp/screens/dashboard.dart';

void main() {
  runApp(const PersistanceApp());
  save(Contact('bruno', 1000, 0)).then((id) {
    findAll().then((contacts) => debugPrint(contacts.toString()));
  });
}

class PersistanceApp extends StatelessWidget {
  const PersistanceApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.deepPurple[400],
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.purpleAccent[700],
            textTheme: ButtonTextTheme.primary,
          ),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: Colors.purpleAccent[700]),
        ),
        home: Dashboard());
  }
}
