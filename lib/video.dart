import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
               const Color(0xff0f17ad).withOpacity(0.8),
              const Color(0xFF6985e8).withOpacity(0.9),
            ],
            begin: const FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
          ),

        ),
        child:Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70,left: 30,right: 30),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap:(){
                          Navigator.of(context).pop(
                          );
                        },
                        child:  Icon(
                          Icons.arrow_back_ios_new,size: 20,
                         color: Color(0xFFb7bce8),),
                      ),
                      Expanded(child: Container()),
                      const Icon(Icons.info_outline,size: 20,
                        color: Color(0xFFb7bce8),),
                    ],
                  ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Legs Toning',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFf4f5fd),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'and Glutes Workout',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFf4f5fd),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          Container(
                            width: 90,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: const [
                                Colors.indigoAccent,
                                  Color(0xFF7986CB),
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.timer_outlined,
                                size: 16,
                                  color: Color(0xFFf4f5fd),),
                                SizedBox(width: 5,),
                                Text('60 min', style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFFf4f5fd),
                                ),),
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            width: 190,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: const [
                                    Colors.indigoAccent,
                                    Color(0xFF7986CB),
                                  ],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.handyman_outlined,
                                  size: 16,
                                  color: Color(0xFFf4f5fd),),
                                SizedBox(width: 5,),
                                Text('Resistant band,Kettleble', style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFFf4f5fd),
                                ),),
                              ],
                            ),
                          ),
                        ],
                      ),
                ],
              ),
            ),
            Expanded(child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight:Radius.circular(70), ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      Text("Circuit 1 : Legs Toning",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),),
                      Expanded(child: Container()),
                      Row(
                        children: [
                          Icon(Icons.loop,
                          size: 25,
                          color: Color(0xFF5C6BC0),),
                          SizedBox(width: 10,),
                          Text('3 sets',
                          style: TextStyle(
                            fontSize: 15,
                            color:Colors.grey[500]
                          ),),
                        ],
                      ),
                      SizedBox(width: 20,)
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          image: DecorationImage(
                            image: AssetImage('assets/images/aro.jpg'),
                          )
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
