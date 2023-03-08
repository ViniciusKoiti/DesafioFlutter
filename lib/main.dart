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
          color: Color.fromRGBO(238,237,242,255),
          padding: const EdgeInsets.fromLTRB(1, 0, 10, 0), 
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
                      Text("Foto de perfil"),
                      SizedBox(height: 10),
                      Row(children: [
                        
                        Container(
                        height: 100,
                        color: Color.fromARGB(255,238,237,242),
                          padding: EdgeInsets.only(right: 0),
                        
                        
                        child: Container(
                            
                            child:const Icon
                          (Icons.person_2,
                          size: 100,
                          color: Color.fromARGB(255, 119, 108, 187)),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text("Adicionar imagem"),
                            SizedBox(height:5),
                            Text("Fotos apenas em formato em PNG ou JPG."),
                            SizedBox(height:10),
                            Row(children: [
                              
                              
                              TextButton(onPressed: onPressed, child: Text("Escolha uma imagem"),
                                  style: ButtonStyle(side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Colors.blue, width: 2)))
                              ),
                              TextButton(
                              onPressed:onPressed, 
                              child: Text("Remover"),
                              style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(Colors.grey)),
                              )


                            ])
                          ],
                        )
                      ],
                      ),
                        TextFieldWithText(title: "Nome Completo",),
                        TextFieldWithText(title:"Email"),
                        TextFieldWithText(title:"Telefone"),
                        DropDownButtonCity(),
                        Text("Sobre mim"),
                        SizedBox(height: 10,),
                        TextField(
                          maxLines: null,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
          labelText: "Sobre mim",
        border:OutlineInputBorder(),
        floatingLabelBehavior: FloatingLabelBehavior.never,
                          )), 
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

  void onPressed() {
  }
}

