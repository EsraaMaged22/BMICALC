import 'package:bmicalc/input_page.dart';
import 'package:flutter/material.dart';


class ResultsPage extends StatelessWidget {
  const ResultsPage({required this.bmiResult,required this.resultText,required this.feedback});
  final String bmiResult;
  final  String resultText;
  final String feedback;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Container( padding: EdgeInsets.all(15),
            child: Text('Your Result',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
          ),
          )
          )
      , Expanded( flex:5,
           child: Container(
    margin: EdgeInsets.all(15.0),
    decoration: BoxDecoration(
    color: Color(0xFF1D1E33),
    borderRadius: BorderRadius.circular(10.0),
    ),
          child: Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(resultText.toUpperCase(),style: TextStyle(fontSize: 22,color: Colors.green),),
              SizedBox(height: 50,),
              Text(bmiResult ,style: TextStyle(fontSize: 42,color: Colors.white),),
              SizedBox(height: 50),
               Text(feedback ,textAlign: TextAlign.center,style: TextStyle(fontSize: 32,color: Colors.white,),)
              ,SizedBox(height: 40,)
           ,
              Container(
    color: Colors.red,
   height: 80,
    width: double.infinity,
    margin: EdgeInsets.only(top: 10.0),
    child: Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [
    GestureDetector(onTap: (){ Navigator.pop(context, MaterialPageRoute(builder: (context)=>InputPage()));
    },
    child: Text('Recalculate ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),)),
    ],
          ), )
    ])
          )
    )],
      ),
    );



  }
}
