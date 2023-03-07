import 'dart:convert';

import 'package:exercises_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  List videoInfo = [];
  bool playVideo = false;
  VideoPlayerController? _controller;
  bool isPlaying = false;
  bool _dispose = false;
  int isPlayingIndex = -1;
  double remained=0.0;

  initData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/videoinfo.json")
        .then((value) {
      setState(() {
        videoInfo = json.decode(value);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    initData();
  }

  @override
  void dispose() {
    _dispose = true;
    _controller?.pause();
    _controller?.dispose();
    _controller = null;
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: playVideo == false
            ? BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xff0f17ad).withOpacity(0.8),
                    const Color(0xFF6985e8).withOpacity(0.9),
                  ],
                  begin: const FractionalOffset(0.0, 0.4),
                  end: Alignment.topRight,
                ),
              )
            : const BoxDecoration(color: Color(0xFF6985e8)),
        child: Column(
          children: [
            playVideo == false
                ? Container(
                    padding:
                        const EdgeInsets.only(top: 70, left: 30, right: 30),
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: const Icon(
                                Icons.arrow_back_ios_new,
                                size: 20,
                                color: Color(0xFFb7bce8),
                              ),
                            ),
                            Expanded(child: Container()),
                            const Icon(
                              Icons.info_outline,
                              size: 20,
                              color: Color(0xFFb7bce8),
                            ),
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
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 90,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                    colors: [
                                      Colors.indigoAccent,
                                      Color(0xFF7986CB),
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.timer_outlined,
                                    size: 16,
                                    color: Color(0xFFf4f5fd),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '60 min',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFFf4f5fd),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 190,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                    colors: [
                                      Colors.indigoAccent,
                                      Color(0xFF7986CB),
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.handyman_outlined,
                                    size: 16,
                                    color: Color(0xFFf4f5fd),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Resistant band,Kettleble',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFFf4f5fd),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                : Container(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          padding: const EdgeInsets.only(
                              top: 50, left: 30, right: 30),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: const Icon(
                                  Icons.arrow_back_ios_new,
                                  size: 20,
                                  color: Color(0xFFb7bce8),
                                ),
                              ),
                              Expanded(child: Container()),
                              const Icon(
                                Icons.info_outline,
                                size: 20,
                                color: Color(0xFFb7bce8),
                              ),
                            ],
                          ),
                        ),
                        playView(context),
                        controlView(context),
                      ],
                    ),
                  ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        const Text(
                          "Circuit 1 : Legs Toning",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Expanded(child: Container()),
                        Row(
                          children: [
                            const Icon(
                              Icons.loop,
                              size: 25,
                              color: Color(0xFF5C6BC0),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '3 sets',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey[500]),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                    Expanded(
                      child: listView(),
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

  listView() {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        itemCount: videoInfo.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              onTapVideo(index);
              debugPrint(index.toString());
              setState(() {
                if (playVideo == false) {
                  playVideo = true;
                }
              });
            },
            child: _BuildCard(index),
          );
        });
  }

  var updateControllerTime;
  Duration ?_duration;
  Duration? _position;
  var _progress=0.0;
  void onControllerUpdate() async {
    if (_dispose) {
      return;
    }
    updateControllerTime = 0;
    final now = DateTime.now().microsecondsSinceEpoch;
    if (updateControllerTime > now) {
      return;
    }
    updateControllerTime = now + 500;
    final controller = _controller;
    if (controller == null) {
      debugPrint('ont is null');
      return;
    }
    if (!controller.value.isInitialized) {
      debugPrint('con can not ');
      return;
    }
    if(_duration==null){
      _duration=_controller?.value.duration;
    }
    var duration=_duration;
    if(duration==null)
      return;
    var position=await controller.position;
    _position=position;
    final playing = controller.value.isPlaying;
    if(playing){
      if(_dispose)
        return;
      setState(() {

        _progress=position!.inMicroseconds.ceilToDouble()/duration.inMicroseconds.ceilToDouble();
      });
    }
    isPlaying = playing;
  }

  initializeVideo(int index) async {
    final controller =
        VideoPlayerController.network(videoInfo[index]["videoUrl"]);
    final old = _controller;
    _controller = controller;
    if (old != null) {
      old.removeListener(onControllerUpdate);
      old.pause();
    }
    setState(() {});
    controller.initialize().then((_) {
      old?.dispose();
      isPlayingIndex = index;
      controller.addListener(onControllerUpdate);
      controller.play();
       setState(() {});
    });
  }

  onTapVideo(int index) {
    initializeVideo(index);
  }

  Widget playView(BuildContext context) {
    final controller = _controller;
    if (controller!.value.isInitialized) {
      return AspectRatio(
        aspectRatio: 16 / 9,
        child: VideoPlayer(controller),
      );
    } else {
      return AspectRatio(
          aspectRatio: 16 / 9,
          child: Center(
              child: Text(
            'Preparing',
            style: TextStyle(fontSize: 20, color: Colors.white60) ,
          )));
    }
  }
String convertTwo(int value){
    return value<10?"0$value":"$value";
}

  Widget controlView(BuildContext context) {
    final noMute=(_controller?.value?.volume??0)>0;
    final duration=_duration?.inSeconds??0;
    final head=_position?.inSeconds??0;
   // final remained=max(0,duration-head);
    int remained=0;
    final mins=convertTwo(remained~/60.0);
    final secs=convertTwo(remained %60);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          color: AppColor.gradientSecond,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               InkWell(
                 onTap: (){
                      if(noMute){
                        _controller?.setVolume(0);
                      }else{
                        _controller?.setVolume(1.0);
                      }
                      setState(() {

                      });
                 },
                 child: Padding(
                   padding: EdgeInsets.symmetric(
                     horizontal: 12,
                     vertical: 8,

                   ),
                   child:Container(
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       boxShadow: [
                         BoxShadow(
                           offset: Offset(0.0,0.0),
                           blurRadius: 4.0,
                           color: Color.fromARGB(50, 0, 0, 0)
                         ),
                       ],
                     ),
                     child: Icon(
                       noMute?Icons.volume_up:Icons.volume_off,
                     color: Colors.white,),
                   ) ,
                 ),
               ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.gradientSecond, elevation: 0.0),
                onPressed: () {
                  final index=isPlayingIndex-1;
                  if(index>=0&&videoInfo.length>=0){
                    initializeVideo(index);
                  }
                },
                child: Icon(
                  Icons.fast_rewind,
                  size: 27,
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.gradientSecond, elevation: 0.0),
                onPressed: () async {
                  if (isPlaying) {
                    setState(() {
                      isPlaying = false;
                    });
                    _controller?.pause();
                  } else {
                    setState(() {
                      isPlaying = true;
                    });
                    _controller?.play();
                  }
                },
                child: Icon(
                  isPlaying ? Icons.pause : Icons.play_arrow,
                  size: 27,
                   color: Colors.white,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.gradientSecond, elevation: 0.0),
                onPressed: ()async {
                  final index=isPlayingIndex+1;
                  if (index<=videoInfo.length-1){
                    initializeVideo(index);
                  }
                } ,
                child: Icon(
                  Icons.fast_forward,
                  size: 27,
                  color: Colors.white,
                ),
              ),
               Text("$mins:$secs",
               style: TextStyle(
                 color: Colors.white,
                 shadows: <Shadow>[
                   Shadow(
                     offset: Offset(0.0,1.0),
                     blurRadius: 4.0,
                     color: Color.fromARGB(150, 0, 0, 0),
                   )
                 ]
               ),),

            ],
          ),
        ),
      ],
    );
  }

  _BuildCard(int index) {
    return Container(
      height: 135,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  //color:Colors.teal,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(videoInfo[index]["thumbnail"]),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    videoInfo[index]["title"],
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Text(
                      videoInfo[index]["time"],
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Container(
                height: 20,
                width: 80,
                decoration: BoxDecoration(
                  color: const Color(0xFFeaeefc),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    '15s res',
                    style: TextStyle(
                      color: Color(0xFF839fed),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Row(
                children: [
                  for (int i = 0; i < 70; i++)
                    i.isEven
                        ? Container(
                            width: 3,
                            height: 1,
                            decoration: BoxDecoration(
                                color: const Color(0xFF839fed),
                                borderRadius: BorderRadius.circular(2)),
                          )
                        : Container(
                            width: 3,
                            height: 1,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(2)),
                          ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
