import 'package:flutter/material.dart';

class PointCounter extends StatefulWidget {
  const PointCounter({super.key});


  @override
  State<PointCounter> createState() => _PointCounterState();

}

class _PointCounterState extends State<PointCounter> {
 int teamAPoint =0  ;
int teamBPoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Point Counter",
              textAlign: TextAlign.end,
            ),
            backgroundColor: Colors.orange,
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 const Spacer(flex: 1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Team A",
                          style: TextStyle(fontSize: 32),
                        ),
                         Text(
                          '$teamAPoint',
                          style: const TextStyle(fontSize: 140),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                              minimumSize: const Size(140, 50)),
                          onPressed: (){
                            setState(() {
                              teamAPoint+=1;
                            });
                          },
                          child: const Text(
                            'add 1 point',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                              minimumSize: const Size(140, 50)),
                          onPressed: (){
                            setState(() {
                              teamAPoint+=2;
                            });
                          },
                          child: const Text(
                            'add 2 point',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                              minimumSize: const Size(140, 50)),
                          onPressed: (){
                            setState(() {
                              teamAPoint+=3;
                            });
                          },
                          child: const Text(
                            'add 3 point',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 450,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          "Team B",
                          style: TextStyle(fontSize: 32),
                        ),
                         Text(
                          "$teamBPoint",
                          style: const TextStyle(fontSize: 140),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                              minimumSize: const Size(140, 50)),
                          onPressed: (){
                            setState(() {
                              teamBPoint+=1;
                            });
                          },
                          child: const Text(
                            'add 1 point',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                              minimumSize: const Size(140, 50)),
                          onPressed:(){
                            setState(() {
                              teamBPoint+=2;
                            });
                          },
                          child: const Text(
                            'add 2 point',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                              minimumSize: const Size(140, 50)),
                          onPressed: (){
                            setState(() {
                              teamBPoint+=3;
                            });
                          },
                          child: const Text(
                            'add 3 point',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(flex: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          minimumSize: const Size(140, 50)),
                      onPressed: (){
                        setState(() {
                          teamBPoint = 0;
                          teamAPoint = 0;
                        });
                      },
                      child: const Text(
                        'reset',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),


                  ],
                ),
                const Spacer(flex: 2,),
              ],
            ),
          )),
    );
  }
}

