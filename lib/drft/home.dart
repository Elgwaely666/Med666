import 'package:flutter/material.dart';

class Home extends StatefulWidget {


   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

List <Widget> shape=[];

TextEditingController total=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
          Stack(alignment:AlignmentDirectional.center,
              children: shape ),
            

            TextField(controller:total=TextEditingController(),),
            ElevatedButton(onPressed: (){
setState(() {
  if(total.text.isEmpty){
  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: const Text(' your data not complete'),
                  backgroundColor: Color.fromARGB(219, 213, 5, 5),
                ));
}else{
double x=double.parse(total.text);
shape.add(
Container(
                color: Color.fromARGB(3, 108, 70, 70),
                width:x, 
                height: x
                
));
}});

              
            }, child: Text('add'))
          ]
        ),
      ),
    );
  }
}
