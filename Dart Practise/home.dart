import 'package:calc_app/style_button.dart';
import 'package:calc_app/styled_text.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool typingfirst = true;
  dynamic value;
  dynamic val1;
  dynamic val2 ;
  dynamic symbol;
  String input ='';
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title:Text('Calculator', style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
      ),
      body:
       Column(
         children: [
           SizedBox(height: 5,),
          Container(
            width: double.maxFinite,
            alignment: AlignmentDirectional.centerEnd,
            child: (val1 == 0 && val2 == 0)
                ? Text('')
                : Text(
                    '$val1 $symbol $val2',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
          ),
          SizedBox(height: 5,),
          Container(
            width: double.maxFinite,
            alignment: AlignmentDirectional.bottomEnd,
            child: Text('$value',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
          ),
          Expanded(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                spacing: 10,
                children: [  
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                spacing: 10,
                children: [
                 StyleButton(
                    onPressed: (){
                      setState(() {
                        if (typingfirst) {
                              val1 = val1 * 10 + 1;
                            } else {
                              val2 = val2 * 10 + 1;
                            }
                      });
                    },
                    child: StyledText('1'
                    ),
                  ),
           
                  StyleButton(
                    onPressed: (){
                      setState(() {
                        if (typingfirst) {
                              val1 = val1 * 10 + 2;
                            } else {
                              val2 = val2 * 10 + 2;
                            }
                      });
                    },
                    child: StyledText('2')
                  ),
           
                 StyleButton(
                    onPressed: (){
                      setState(() {
                       if (typingfirst) {
                              val1 = val1 * 10 + 3;
                            } else {
                              val2 = val2 * 10 + 3;
                            }
                      });
                    },
                    child:StyledText('3')
                  ),
           
                  StyleButton(
                    onPressed: () {
                     setState(() {
                       symbol = '*';
                       typingfirst = false;
                     });
                    },               
                    child:StyledText('*',
                    )
                  )
                ],
              ),
           
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                spacing: 10,
                children: [
                StyleButton(
                    onPressed: (){
                      setState(() {
                        if (typingfirst) {
                              val1 = val1 * 10 + 4;
                            } else {
                              val2 = val2 * 10 + 4;
                            }
                      });
                    },
                    child:StyledText('4')
                  ),
           
                  StyleButton(
                    onPressed: (){
                      setState(() {
                        if (typingfirst) {
                              val1 = val1 * 10 + 5;
                            } else {
                              val2 = val2 * 10 + 5;
                            }
                      });
                    },
                    child: StyledText('5')
                  ),
           
                  StyleButton(
                    onPressed: (){
                      setState(() {
                        if (typingfirst) {
                              val1 = val1 * 10 + 6;
                            } else {
                              val2 = val2 * 10 + 6;
                            }
                      });
                    },
                    child: StyledText('6')
                    ),
           
                  StyleButton(
                    onPressed: (){
                     setState(() {
                        symbol = '-';
                        typingfirst = false;
                     });
                    },
                    child: StyledText('-',),)
                  
                ],
              ),
                Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                spacing: 10,
                children: [
                  StyleButton(
                    onPressed: (){
                      setState(() {
                        if (typingfirst) {
                              val1 = val1 * 10 + 7;
                            } else {
                              val2 = val2 * 10 + 7;
                            }
                      });
                    },
                    child: StyledText('7'
                    ),
                  ),
                  
                   StyleButton(
                    onPressed: (){
                      setState(() {
                        if (typingfirst) {
                              val1 = val1 * 10 + 8;
                            } else {
                              val2 = val2 * 10 + 8;
                            }
                      });
                    },
                    child: StyledText('8'),
                    ),
           
                  StyleButton(
                    onPressed: (){
                      setState(() {
                        if (typingfirst) {
                              val1 = val1 * 10 + 9;
                            } else {
                              val2 = val2 * 10 + 9;
                            }
                      });
                    },
                    child: StyledText('9')
                  ),
           
                  StyleButton(
                    onPressed: () {
                       setState(() {
                         symbol = '+';
                         typingfirst = false;
                       });
                    },
                      child: StyledText('+')
                  ),
                ],
              ),
              
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                spacing: 10,
                children: [
                  StyleButton(
                    onPressed: (){
                      setState(() {
                        if (typingfirst) {
                              val1 = val1 * 10 + 0;
                            } else {
                              val2 = val2 * 10 + 0;
                            }
                      });
                    },
                    child: StyledText('0'),),
           
                 StyleButton(
                    onPressed: (){
                     setState(() {
                        symbol = '÷';
                        typingfirst = false;
                     });
                    },
                    child: StyledText('÷',),),
                   StyleButton(
                    onPressed: (){
                      setState(() {
                         val1 = 0;
                        val2 = 0;
                        value = 0;
                        symbol = '';
                        typingfirst = true;
                      });
                    },
                    child: StyledText('AC')
                  ),
           
                
                  StyleButton(
                    onPressed: (){
                      setState(() {
                       if(symbol == '÷')
                       {
                        value = val1 / val2;
                       }
                      else if(symbol == '*')
                       {
                        value = val1 *val2;
                       }
                      else if( symbol == '-')
                      {
                        value = val1 - val2;
                      }
                      else if(symbol == '+')
                      {
                        value = val1 + val2;
                      }
                      });
                    },
                    child: StyledText('='),
                  )
                ],
              )
            ],
                 ),
         ),
       ],),
    );
  }
}
