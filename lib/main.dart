
import 'package:calculator_bmi/PortraitModeMixin.dart';
import 'package:input_calculator/input_calculator.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeActivity(),

  )

);

class HomeActivity extends StatefulWidget {





  @override
  _HomeActivityState createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> with PortraitStatefulModeMixin<HomeActivity>{


  String equation = "0";
  String result = "0";
  double numOne = 0;
  String expression = "";
  double equationFontSize = 38.0;
  double resultFontSize = 58.0;


  buttonPressed(String buttonText){
    setState(() {

      if (buttonText == "AC"){
        equation = "0";
        result = "0";

      }else if(buttonText == "="){
        expression = equation;
        expression = expression.replaceAll("x", "*");
        expression = expression.replaceAll("÷", "/");
        // expression = expression.replaceAll("%", "/");

        try{
          Parser p = Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();

          result = "${exp.evaluate(EvaluationType.REAL, cm)}";

        }catch(e){
          result = "Error";
        }


      }  else if(buttonText == ',') {
        if(!equation.toString().contains(',')) {
          equation = equation.toString()+',';
        }
      }
      else if(buttonText == '%') {
          result = result + (double.parse(equation) / 100).toString();
      }


      else if(buttonText == '+/-') {
        equation.toString().startsWith('-') ? equation = equation.toString().substring(1): equation = '-'+equation.toString();
        equation = equation;

      }
      else {
        if(equation == "0"){
          equation = buttonText;
        }else {
          equation = equation + buttonText;
        }
      }


    });



}




  // double _value = 0.0;
  //
  //
  // set value(double value) {
  //   setState(() {
  //     _value = value;
  //   });
  // }

  // Widget buildButton(String buttonText, double buttonHeight, Color buttonColor){
  //   return Container(
  //     height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
  //     color: buttonColor,
  //     child: FlatButton(
  //         shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(0.0),
  //             side: BorderSide(
  //                 color: Colors.white,
  //                 width: 1,
  //                 style: BorderStyle.solid
  //             )
  //         ),
  //         padding: EdgeInsets.all(16.0),
  //         onPressed: () => buttonPressed(buttonText),
  //         child: Text(
  //           buttonText,
  //           style: TextStyle(
  //               fontSize: 30.0,
  //               fontWeight: FontWeight.normal,
  //               color: Colors.white
  //           ),
  //         )
  //     ),
  //   );
  // }
  Widget CalcBtn(String buttonText){
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(37),
            color: Colors.grey[200],
            boxShadow:[
              BoxShadow(
                color: Colors.grey[500],
                offset: Offset(2.0,2.0),
                blurRadius: 2.0,
                spreadRadius: 1.0,

              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-2.0,-2.0),
                blurRadius: 2.0,
                spreadRadius: 1.0,

              )
            ]

        ),
        child: MaterialButton(
          padding: EdgeInsets.all(20.0),
          child: Text(buttonText, style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w900,

          ),
          ),
          onPressed: ()=>buttonPressed(buttonText),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70.0)),
        ),

      ),
    );
  }
  Widget CalcBtn3(String buttonText){
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(9),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.transparent,width: 7),
            color: Colors.orange.shade300,
            boxShadow:[
              BoxShadow(
                color: Colors.grey[500],
                offset: Offset(2.0,2.0),
                blurRadius: 2.0,
                spreadRadius: 1.0,

              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-2.0,-2.0),
                blurRadius: 2.0,
                spreadRadius: 1.0,

              )
            ]

        ),
        child: MaterialButton(
          padding: EdgeInsets.all(10.0),
          child: Text(buttonText, style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,

          ),
          ),
          onPressed: ()=>buttonPressed(buttonText),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ),

      ),
    );
  }
  Widget CalcBtn1(String buttonText){
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            color: Colors.transparent,
            boxShadow:[
              BoxShadow(
                color: Colors.transparent,
                offset: Offset(2.0,2.0),
                blurRadius: 2.0,
                spreadRadius: 1.0,

              ),
              BoxShadow(
                color: Colors.transparent,
                offset: Offset(-2.0,-2.0),
                blurRadius: 2.0,
                spreadRadius: 1.0,

              )
            ]

        ),
        child: MaterialButton(
          padding: EdgeInsets.all(30.0),
          child: Text(buttonText, style: TextStyle(
            fontSize: 22.0,

          ),
          ),
          onPressed: ()=>buttonPressed(buttonText),
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70.0)),
        ),

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    super.build(context);






    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          body: Container(
            child: Column(
              children: <Widget>[
                Container(
                  child:FlatButton(onPressed: null,
                          child: Text("",style: TextStyle(
                            fontSize: 20.00,
                            color: Colors.grey[500],
                          ),
                          )
                  // alignment: Alignment.bottomCenter,
                  // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 41),
                  // child: Text("",style: TextStyle(
                  //   fontSize: 20.00,
                  //   color: Colors.grey[500],
                  // ),
                  // ),
                ),
                ),
                // Expanded(
                //
                //     child: Divider(
                //       color: Colors.grey[300],
                //       thickness: 3,
                //
                //     ),
                // ),
                Expanded(flex:2,
                    child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            // Expanded(
                            //   child: Column(
                            //     crossAxisAlignment: CrossAxisAlignment.stretch,
                            //     children: <Widget>[
                            //       Expanded(
                            //         child: Container(
                            //           color: Colors.red,
                            //         ),
                            //       ),
                            //       Expanded(
                            //         child: Container(
                            //           color: Colors.yellow,
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                                      child: Text(equation, style: TextStyle(fontSize: equationFontSize, color: Colors.grey[500]), ),
                                    )
                                  ),
                                  Expanded(
                                    child: Container(
                                      // color: Colors.black,
                                      alignment: Alignment.centerRight,
                                      padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                                      child: Text(result, style: TextStyle(fontSize: resultFontSize, ) ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )





                    //   children: [
                    //     // Expanded(child: Column)
                    //     Expanded(
                    //         child: Container(
                    //           color: Colors.yellow,
                    //           child: Column(
                    //             children: [
                    //               Text("Height",textAlign:TextAlign.left,style: TextStyle(
                    //
                    //                 fontSize: 20.00,
                    //                 color: Colors.grey[500],
                    //               ),
                    //               ),
                    //             ],
                    //
                    //
                    //           ),
                    //         )
                    //     ),
                    //     Expanded(
                    //         child: Container(
                    //           color: Colors.black,
                    //           child: Column(
                    //             children: [
                    //               Text("Height",textAlign:TextAlign.left,style: TextStyle(
                    //
                    //                 fontSize: 20.00,
                    //                 color: Colors.grey[500],
                    //               ),
                    //               ),
                    //             ],
                    //
                    //
                    //           ),
                    //         )
                    //     ),
                    //     Expanded(
                    //         child: Container(
                    //           color: Colors.yellow,
                    //           child: Row(
                    //             children: [
                    //               Text("Height",textAlign:TextAlign.left,style: TextStyle(
                    //
                    //                 fontSize: 20.00,
                    //                 color: Colors.grey[500],
                    //               ),
                    //               ),
                    //             ],
                    //
                    //
                    //           ),
                    //         )
                    //     )
                    //
                    // ],

                    ),

                Expanded(
                    child: Divider(color: Colors.grey[300], thickness: 3,)
                ),

                Expanded(
                  flex: 5,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              // flex: 1,

                              child: Row(



                                children: <Widget>[

                                  CalcBtn3("AC"),
                                  CalcBtn3("+/-"),
                                  CalcBtn3("%"),
                                  CalcBtn3("÷"),



                                ],
                              ),
                            ),



                                 Expanded(
                                   // flex: 1,

                                   child: Row(



                                      children: <Widget>[

                                        CalcBtn("7"),
                                        CalcBtn("8"),
                                        CalcBtn("9"),
                                        CalcBtn3("x"),



                                      ],
                                    ),
                                 ),
                            Expanded(
                              // flex: ,

                              child: Container(
                                // color: Colors.grey,
                                child: Row(



                                  children: <Widget>[

                                    CalcBtn("4"),
                                    CalcBtn("5"),
                                    CalcBtn("6"),
                                    CalcBtn3("-"),



                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              // flex: ,

                              child: Container(
                                // color: Colors.grey,
                                child: Row(



                                  children: <Widget>[

                                    CalcBtn("1"),
                                    CalcBtn("2"),
                                    CalcBtn("3"),
                                    CalcBtn3("+"),



                                  ],
                                ),
                              ),
                            ),

                            Expanded(
                              // flex: ,

                              child: Container(
                                // color: Colors.grey,
                                child: Row(



                                  children: <Widget>[

                                    CalcBtn("0"),
                                    CalcBtn(","),
                                    CalcBtn3("="),



                                  ],
                                ),
                              ),
                            ),




                          ],
                        ),
                      ),
                      // Expanded(flex: 1,
                      //   child: Container(
                      //     // color: Colors.grey,
                      //
                      //     child: Column(
                      //       children: <Widget>[
                      //
                      //
                      //         // Row(
                      //
                      //
                      //         // children: <Widget>[
                      //
                      //         CalcBtn3("AC"),
                      //         CalcBtn3("←"),
                      //         CalcBtn3("GO"),
                      //
                      //
                      //
                      //         //   ],
                      //         // ),
                      //
                      //
                      //
                      //
                      //         // Container(
                      //         //   width: 50,
                      //         //   color: Colors.blue,
                      //         //
                      //         // )
                      //
                      //
                      //
                      //
                      //
                      //
                      //       ],
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),

                ),
                // Expanded(child: Row(
                //   children: <Widget>[
                //     CalcBtn1(""),
                //     CalcBtn1(""),
                //     CalcBtn1("h"),
                //
                //   ],
                //
                // )
                // )


                // Padding(padding: const EdgeInsets.only(left: 10),
                //
                //   child: Row(
                //       children:<Widget>[
                //         CalcBtn("1"),
                //       ]
                //
                //   ),
                //
                //
                // ),


              ],

            ),




          ),





        )
    );

  }
  @override
  void dispose() {
    super.dispose();
  }
}



