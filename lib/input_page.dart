import 'package:bmicalc/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'functionality.dart';

enum Gender {
  male,
  female,
}int height=160;
int weight=60;
int age=18;
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
 Gender selectedGender=Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 180,
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: selectedGender == Gender.male ? Color(0xFF8DE98) : Color(0xFF1D1E33),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 60,
                          ),
                          SizedBox(height: 15,),
                          Text(
                            'MALE',
                            style: TextStyle(
                              fontSize: 18,
                              color: selectedGender == Gender.male ? Colors.white : Color(0xFF8DE98),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 180,
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: selectedGender == Gender.female ? Color(0xFF8DE98) : Color(0xFF1D1E33),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 60,
                          ),
                          SizedBox(height: 15,),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              fontSize: 18,
                              color: selectedGender == Gender.female ? Colors.white : Color(0xFF8DE98),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 250,
              width: 320,
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(10.0),
              ),
           child: Column ( mainAxisAlignment:MainAxisAlignment.center,children: [Text('HEIGHT',style: TextStyle(
              fontSize: 18,
              color: Colors.white),
           )
             ,
           Row( mainAxisAlignment:MainAxisAlignment.center,
             children: [
             Text(height.toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),)
        , Text('cm',style: TextStyle(fontSize: 18) ) ],)

          , SliderTheme( data: SliderTheme.of(context).copyWith(
               thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15)
                 ,overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
               thumbColor: Color(0xFFEB1555),
               activeTrackColor: Colors.white,
               inactiveTrackColor: Color(0xFF8D8E98)

             ),
            child: Slider(value: height.toDouble()
                 ,min: 120,max: 200,
    onChanged:(double newValue) {
              setState(() { height=newValue.round();

              });
                 }),
          ),
          ],
           ),
            ),
            ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    width: 180,
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
               child: Column
                 ( mainAxisAlignment:MainAxisAlignment.center,
                 children: [
                   Text('WEIGHT',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white24),)
                 ,Text(weight.toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700),
                   ),
                 Row( mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     SizedBox(height: 50,width: 50,
                       child: FloatingActionButton( backgroundColor:Color(0xFF4C4F5E),child:Icon(Icons.remove,color: Colors.white,)
                         ,  onPressed:(){
                         setState(() {
                           weight--;
                         });
                           }),
                     ),
                     SizedBox(width: 10,)

                    , SizedBox(height: 50,width: 50,
                      child: FloatingActionButton(  backgroundColor:Color(0xFF4C4F5E),child:Icon(Icons.add,color: Colors.white,)
                           ,onPressed:(){
                            setState(() {
                              weight++;
                            });
                          }),
                    ),  ],
                 )
                 ]
                 ,)
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    width: 180,
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0),
                    ),

    child: Column
    ( mainAxisAlignment:MainAxisAlignment.center,
    children: [
    Text('AGE',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white24),)
    ,Text(age.toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700),
    ),
    Row( mainAxisAlignment: MainAxisAlignment.center,
    children: [
    SizedBox(height: 50,width: 50,
    child: FloatingActionButton( backgroundColor:Color(0xFF4C4F5E),child:Icon(Icons.remove,color: Colors.white,)
    ,  onPressed:(){
    setState(() {
    age--;
    });
    }),
    ),
    SizedBox(width: 10,)

    , SizedBox(height: 50,width: 50,
    child: FloatingActionButton(  backgroundColor:Color(0xFF4C4F5E),child:Icon(Icons.add,color: Colors.white,)
    ,onPressed:(){
    setState(() {
    age++;
    });
    }),
    ),  ],
    )
    ] ),
                ),
                ),]
            ),
          ),
          Container(
            color: Colors.red,
            height: 80.0,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(onTap: (){ Functionality calc=Functionality(height: height,weight: weight);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultsPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    feedback: calc.getFeedback(),
                  )));
                  },
                    child: Text('Calculate your BMI',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

