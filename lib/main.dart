

import 'package:flutter/material.dart';

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

class _HomeActivityState extends State<HomeActivity> {

  Widget CalcBtn(String Btnval){
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
          child: Text(Btnval, style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w900,

          ),
          ),
          onPressed: ()=>{},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70.0)),
        ),

      ),
    );
  }
  Widget CalcBtn3(String Btnval){
    return Expanded(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 11, 0, 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            border: Border.all(color: Colors.transparent,width: 0),
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
          padding: EdgeInsets.all(10.0),
          child: Text(Btnval, style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.orange.shade300,

          ),
          ),
          onPressed: ()=>{},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70.0)),
        ),

      ),
    );
  }
  Widget CalcBtn1(String Btnval){
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
          child: Text(Btnval, style: TextStyle(
            fontSize: 22.0,

          ),
          ),
          // onPressed: ()=>{},
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70.0)),
        ),

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          body: Container(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 41),
                  child: Text("BMI",style: TextStyle(
                    fontSize: 20.00,
                    color: Colors.grey[500],
                  ),
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
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      color: Colors.red,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.yellow,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      color: Colors.purple,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.black,
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
                  flex: 4,
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

                                        CalcBtn("7"),
                                        CalcBtn("8"),
                                        CalcBtn("9"),



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

                                    CalcBtn1(""),
                                    CalcBtn("0"),
                                    CalcBtn("."),



                                  ],
                                ),
                              ),
                            ),




                            // Container(
                            //   width: 50,
                            //   color: Colors.blue,
                            //
                            // )






                          ],
                        ),
                      ),
                      Expanded(flex: 1,
                        child: Container(
                          // color: Colors.grey,

                          child: Column(
                            children: <Widget>[


                              // Row(


                              // children: <Widget>[

                              CalcBtn3("AC"),
                              CalcBtn3("←"),
                              CalcBtn3("GO"),



                              //   ],
                              // ),




                              // Container(
                              //   width: 50,
                              //   color: Colors.blue,
                              //
                              // )






                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
                Expanded(child: Row(
                  children: <Widget>[
                    CalcBtn1(""),
                    CalcBtn1(""),
                    CalcBtn1(""),

                  ],

                )
                )


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
}



