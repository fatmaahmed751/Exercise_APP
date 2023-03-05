import 'package:exercises_app/video.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState(){
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Training',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                Expanded(child: Container()),
                const Icon(
                  Icons.arrow_back_ios_new,
                  size: 20,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.calendar_today,
                  size: 20,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.black,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  'Your program',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                Expanded(child: Container()),
                Text(
                  'Details',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue[400],
                    // fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>const VideoPage()));
                  },
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    const Color(0xff0f17ad).withOpacity(0.8),
                    const Color(0xFF6985e8).withOpacity(0.9),
                  ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
                  color: Colors.indigo[600],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(80),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(5, 10),
                      blurRadius: 20,
                      color: const Color(0xFF6985e8).withOpacity(0.3),
                    ),
                  ]),
              child: Container(
                padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Next workout',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFf4f5fd),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
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
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.timer_outlined,
                              size: 15,
                              color: Color(0xFFf4f5fd),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              '60 min',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFf4f5fd),
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xff0f17ad),
                                blurRadius: 20,
                                offset: Offset(4, 8),
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.play_circle_fill,
                            size: 50,
                            color: Color(0xFFf4f5fd),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 160,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 20),
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: const DecorationImage(
                        alignment: Alignment.topLeft,
                        image: AssetImage("assets/images/r.jpg"),
                        //fit: BoxFit.fill
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(8, 10),
                          blurRadius: 40,
                          color: const Color(0xFF6985e8).withOpacity(0.3),
                        ),
                        BoxShadow(
                          offset: const Offset(-1, -5),
                          blurRadius: 10,
                          color: const Color(0xFF6985e8).withOpacity(0.3),
                        ),
                      ],
                    ),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'You are doing great',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6985e8),
                            // fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'keep it up\n',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[400],
                              // fontWeight: FontWeight.w600
                            ),
                            children: [
                              TextSpan(
                                text: 'stick to your plan',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey[400],
                                  // fontWeight: FontWeight.w600
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: const [
                Text(
                  'Area of focus',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: Color(0xFF302f51)),
                ),
              ],
            ),
            const SizedBox(height: 7,),
            Expanded(
                child:OverflowBox(
                 // minWidth: MediaQuery.of(context).size.width,
                  child: ListView.separated(
                    separatorBuilder: (context,index)=>const SizedBox(height: 5,),
                    itemCount:4,
                      itemBuilder: (_,i){
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children:  [
                                    Container(
                                      padding: const EdgeInsets.only(
                                          bottom: 5
                                      ),
                                      width: 130,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(14),
                                        image: const DecorationImage(
                                          image:AssetImage(
                                              "assets/images/ar.jpg"
                                          ),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 3,
                                            offset: const Offset(5,3),
                                            color: const Color(0xFF6985e8).withOpacity(0.2),
                                          ),
                                          BoxShadow(
                                            blurRadius: 3,
                                            offset: const Offset(-5,-5),
                                            color: const Color(0xFF6985e8).withOpacity(0.2),
                                          ),
                                        ],
                                      ),
                                      child:const Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text('glues',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xFF6985e8),
                                          ),),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children:  [
                                    Container(
                                      padding: const EdgeInsets.only(
                                          bottom: 5
                                      ),
                                      width: 130,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(14),
                                        image: const DecorationImage(
                                          image:AssetImage(
                                              "assets/images/ar.jpg"
                                          ),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 3,
                                            offset: const Offset(5,3),
                                            color: const Color(0xFF6985e8).withOpacity(0.2),
                                          ),
                                          BoxShadow(
                                            blurRadius: 3,
                                            offset: const Offset(-5,-5),
                                            color: const Color(0xFF6985e8).withOpacity(0.2),
                                          ),
                                        ],
                                      ),
                                      child:const Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text('glues',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xFF6985e8),
                                          ),),
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            ),
                          ],


                        );
                  }
                  ),
                ),),
          ],
        ),
      ),
    );

  }

}
