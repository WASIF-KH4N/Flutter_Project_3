import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );
   }
  }

  class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState()=> _MyHomePageState();}

  class _MyHomePageState extends State<MyHomePage>{
    var Controller_1=TextEditingController();
    var Controller_2=TextEditingController();
    var result='';
    @override
    Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Center(child: Text('CALCULATOR APP',style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,color: Colors.white70),),),
              backgroundColor: Colors.grey.shade700
            ),
          body:Container(
            color: Colors.grey.shade500,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    TextField(
                      controller: Controller_1,
                      keyboardType: TextInputType.number,
                    ),
                    TextField(
                      controller: Controller_2,
                      keyboardType: TextInputType.number,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(onPressed: (){
                              var no_1=int.parse(Controller_1.text.toString());
                              var no_2=int.parse(Controller_2.text.toString());
                              var sum=no_1+no_2;
                              result="THE ADDITION OF $no_1 AND $no_2 IS $sum.";
                              setState((){});
                          }, child: Text("ADD")),

                          ElevatedButton(onPressed: (){
                              var no_1=int.parse(Controller_1.text.toString());
                              var no_2=int.parse(Controller_2.text.toString());
                              var sub=no_1-no_2;
                              result="THE SUBTRACTION OF $no_1 AND $no_2 IS $sub.";
                              setState((){});
                          }, child: Text("SUB")),

                          ElevatedButton(onPressed: (){
                              var no_1=int.parse(Controller_1.text.toString());
                              var no_2=int.parse(Controller_2.text.toString());
                              var mul=no_1*no_2;
                              result="THE MULTIPLICATION OF $no_1 AND $no_2 IS $mul.";
                              setState((){});
                              }, child: Text("MUL")) ,

                          ElevatedButton(onPressed: (){
                              var no_1=int.parse(Controller_1.text.toString());
                              var no_2=int.parse(Controller_2.text.toString());
                              var div=no_1/no_2;
                              result="THE DIVISON OF $no_1 AND $no_2 IS ${div.toStringAsFixed(2)}";
                              setState((){});

                          }, child: Text("DIV")),
                        ],
                      ),
                    ),
                   Padding(padding: const EdgeInsets.all(20),child: Text(result,style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
                   )
                 ],
                ),
              ),
            )
          )
        )
    );
  }
}

