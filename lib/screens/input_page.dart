import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalculator/components/icon_content.dart';
import 'package:bmicalculator/components/reusable_card.dart';
import 'package:bmicalculator/constant.dart';
import 'result_page.dart';
import 'package:bmicalculator/components/bottom_button.dart';
import 'package:bmicalculator/components/roundicon_button.dart';
import 'package:bmicalculator/calculator_brain.dart';
//we cant create enum inside the classes

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
//   Color malecardcolor = inactivecardcol;
//   Color femalecardcolor = inactivecardcol;
// //1=mal,2=male
//   void updatecolour(Gender selectedgender) {
//     if (selectedgender == Gender.male) {
//       if (malecardcolor == inactivecardcol) {
//         malecardcolor = activecolcul;
//         femalecardcolor = inactivecardcol;
//
//         malecardcolor==inactivecardcol?malecardcolor=activecolcul,femalecardcolor=inactivecardcol:malecardcolor=inactivecardcol;
//       } else {
//         malecardcolor = inactivecardcol;
//       }
//     }
//     if (selectedgender == Gender.female) {
//       if (femalecardcolor == inactivecardcol) {
//         femalecardcolor = activecolcul;
//         malecardcolor = inactivecardcol;
//       } else {
//         femalecardcolor = inactivecardcol;
//       }
//     }
//   }//-->using ternary operator we can do this same functionlity over thst app ntoo
  int height = 180;
  int weight = 60;
  int age = 22;
  Gender? selectedgender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(
              //   color: Colors.white,
              ),
        ),
        centerTitle: true,
        //    backgroundColor: Colors.blue,
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      //   backgroundColor: Colors.pink,
      // ),---->not reqired
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: reusablecard(
                    onpress: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    //-->we are wrapping reusable into textbutton so that whne it got pressed it produces the differnt color
                    colour: selectedgender == Gender.male
                        ? kActivecardcolour
                        : kInactivecolour,
                    cardchild: iconcontent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: reusablecard(
                    onpress: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    colour: selectedgender == Gender.female
                        ? kActivecardcolour
                        : kInactivecolour,
                    cardchild: iconcontent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: reusablecard(
              onpress: () {},
              colour: kActivecardcolour,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: klabeltextstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment:
                        CrossAxisAlignment.baseline, //deal with width
                    textBaseline: TextBaseline.alphabetic,
                    //1st child contain the heightnumber ans the secondchild contain the cm(centimeter)
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumbersize,
                      ),
                      Text(
                        'cm',
                        style: klabeltextstyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Color(0xFFEB1555), //linetrackingcolour
                      thumbColor: Color(0xFFEB1555), //roundcolor
                      overlayColor: Color(0x1fEB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newvalue) {
                        setState(() {
                          height = newvalue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: reusablecard(
                      onpress: () {},
                      colour: kActivecardcolour,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: klabeltextstyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumbersize,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // FloatingActionButton(
                              //   onPressed: () {},
                              //   child: Icon(Icons.add),
                              //   backgroundColor: Color(0xFF4C4F5E),
                              // ),
                              Roundiconbutton(
                                icon: FontAwesomeIcons.plus,
                                onpressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Roundiconbutton(
                                icon: FontAwesomeIcons.minus,
                                onpressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      )),
                ),
                Expanded(
                  child: reusablecard(
                    onpress: () {},
                    colour: kActivecardcolour,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Age',
                          style: klabeltextstyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumbersize,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Roundiconbutton(
                                icon: FontAwesomeIcons.plus,
                                onpressed: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            Roundiconbutton(
                                icon: FontAwesomeIcons.minus,
                                onpressed: () {
                                  setState(() {
                                    age--;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                  // child: Container(
                  //   //color: Color(0xFF1D1E33),-->if we are using boxdecoration then we must have to move color becuasecolor is the part of boxdecoration too dominatnt
                  //   margin: EdgeInsets.all(15.0),
                  //   decoration: BoxDecoration(
                  //     color: Color(0xFF1D1E33),
                  //     borderRadius:
                  //         BorderRadius.circular(10.0), //-->cornor round
                  //   ),
                  //   // height: 200,
                  //   // width: 170,
                  // ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttontitle: 'CALCULATE',
            ontap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (contexr) => Resultpage(
                            bmiresult: calc.calculatebmi(),
                            resluttext: calc.getresult(),
                            interpretation: calc.getInterpretation(),
                          )));
            },
          ),
        ],
      ),
    );
  }
}

/* SO HERE ACTALLY THE EXPANDED CONTRAINER CODE IS REPITING AGAIN AND again we
shold know that the code will not repeat to make it clean and dry


2. if container has no childern then they size by themselves as much as possible
3.we are warn to use only one floatingactionbutton persecreen

 */
