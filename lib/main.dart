import 'package:flutter/material.dart';

import 'Fields/CommentField.dart';
import 'Fields/DropdownButtonCity.dart';
import 'Fields/SideBox.dart';
import 'Fields/TextFieldWithText.dart';
import 'components/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyTheme.defaultTheme,
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.light,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      
      body: Center(
        
        child : Container(
          color: Colors.white12,
          padding: const EdgeInsets.all(16.0), // Adiciona padding para os widgets dentro do Container
          child: Form(child: 
            Column(mainAxisAlignment: 
              MainAxisAlignment.center,
              
              children: [
      
                Container(
                  height: 800,
                  width: 500,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 17, 17, 18),
                      width: 1.0,
                      ),
                  ),
                  child: 
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text("Editar Perfil",
                                    style: TextStyle(fontSize: 24,
                                    fontStyle: FontStyle.normal)),
                      SizedBox(height: 20),
                      Row(children: [
                        Container(
                        height: 100,
                          padding: EdgeInsets.only(right: 0),
                        decoration: BoxDecoration(border:Border.all(
                          color: Color.fromARGB(255, 0, 0, 252),
                          width: 1.0,
                        )),
                        
                        child: Container(
                            color:Colors.deepPurpleAccent,
                            child:const Icon
                          (Icons.person_2,
                          size: 100,
                          color: Color.fromARGB(255, 17, 17, 15)),
                          ),
                        )
                      ],
                      ),
                        TextFieldWithText(title: "Nome Completo",),
                        TextFieldWithText(title:"Email"),
                        TextFieldWithText(title:"Telefone"),
                        DropDownButtonCity(),
                        CommentField(),
                        SideBox()

                        

                        ]),
                    ) 
                    ],
                  )
            )
            )
          )
        );
  } 
}

