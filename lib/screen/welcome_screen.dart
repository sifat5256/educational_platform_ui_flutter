


import 'package:flutter/material.dart';

import 'home-screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/1.6,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color(0xFF674AEF),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(70),

                    ),

                  ),
                  child: Center(
                    child: Image.asset("assets/books-removebg-preview.png",height: 400,),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height/2.666,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Color(0xFF674AEF),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(70),

                      ),

                    ),

                  ),

                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height/2.666,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(70),

                      ),

                    ),
                    child:  Column(
                      children: [
                        Text("Learning is Everything",style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,

                        ),),
                        SizedBox(
                          height: 18,
                        ),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text("If you are intersted learning with us please join with IQRAMUL HASAN SIFAT",style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey


                          ),
                            textAlign: TextAlign.center,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                            },

                            child: Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFF674AEF),
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                  // Add other decoration properties as needed
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Get Started",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white
                                      ),),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(Icons.arrow_forward_ios,size: 20,color: Colors.white,)
                                  ],
                                )
                            ),
                          ),
                        ),

                      ],
                    ),

                  ),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
