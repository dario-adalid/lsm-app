//import 'dart:html';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/shared.dart';
import 'package:provider/provider.dart';
import 'package:email_validator/email_validator.dart';
import './menu_inicial.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
  var counter = 0;

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  var favorites = <WordPair>[];

  void toggleFavorite(){
    if(favorites.contains(current)){
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }
}


// ...

// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

class MyHomePage extends StatelessWidget {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    final ButtonStyle registerButtonStyle = ElevatedButton.styleFrom(
      disabledBackgroundColor: Colors.grey,
      backgroundColor: Colors.white,
      foregroundColor: Colors.red,
       );

    final ButtonStyle ingresarButtonStyle = ElevatedButton.styleFrom(
      disabledBackgroundColor: Colors.grey,
      backgroundColor: Colors.green,
      foregroundColor: Colors.white
    );

    return Scaffold(
      appBar: Shared.appBar,
      body: Column(
        children: [
          Center(
            heightFactor: 3.5,
            child: Text("LSM APP", textScaleFactor: 3),
          ),
          Text("Bienvenido/a/e", textScaleFactor: 3,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:12, horizontal:16),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: TextFormField(
                validator: (value) => EmailValidator.validate(value!) ? null: "Ingrese un email valido",
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Correo electrónico',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric( vertical: 12, horizontal: 16),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Contraseña',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                style: registerButtonStyle,
                onPressed: () { print("boton de registro oprimido");}, 
                child: Text("Registrarse"),
                ),
              SizedBox(width: 20,),
              ElevatedButton(
                style: ingresarButtonStyle,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MenuInicial()));
                }, 
                child: Text("Ingresar", )
                )
            ],
            
          )
        ]
        )
    );
  }
}

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigCard(pair: pair),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  appState.toggleFavorite();
                },
                icon: Icon(icon),
                label: Text('Like'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  appState.getNext();
                },
                child: Text('Next'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FavoritesPage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var messages = appState.favorites;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            color: Colors.red,
            child: Text('Liked Messages:',textScaleFactor: 1.8),
          ),
          for(var msg in messages)
            Card(
              color: Colors.blueGrey,
              child: Text(msg.asLowerCase, textAlign: TextAlign.justify, textScaleFactor: 1.3,),
            )
        ],
      ),
    );
  }

}

// ...
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    IconData icon;
    if(appState.favorites.contains(pair)){
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BigCard(pair: pair),
            SizedBox(height: 10,),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton.icon(onPressed: () {
                  appState.toggleFavorite();
                }, icon: Icon(icon), label: Text('Like')),

                SizedBox(width: 20,),

                ElevatedButton(
                  onPressed: () {
                    appState.getNext();
                    }, child: Text('Siguiente'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(color: theme.colorScheme.onPrimary, );
    //final style = theme.textTheme.displayMedium!.copyWith(color: theme.colorScheme.onPrimary, backgroundColor: Color.fromARGB(197, 16, 92, 255));

    return Card(
      color: theme.colorScheme.primary,
      // shadowColor: Color(0xff008800),
      // elevation: 16,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          pair.asLowerCase, 
          style: style,
          semanticsLabel: "${pair.first} or ${pair.second}",),
      ),
    );
  }
}