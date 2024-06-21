import 'package:flutter/material.dart';
import 'package:tik_tok_clone/screens/home/components/menu_home.dart';
import 'package:tik_tok_clone/widgets/header.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({ super.key });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late VideoPlayerController controller;
  late Future<void> _lateInitialize;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset("assets/video.mp4");
    _lateInitialize = controller.initialize().then((value) {
      controller.play();
      controller.setLooping(true);
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(
            shape: const RoundedRectangleBorder(side: BorderSide(color: Color.fromARGB(255, 188, 188, 188), width: 0.5)),
            title: const Header(),
            ),
           body: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: Row(
              children: [
                const Flexible(
                  flex: 1,
                  child: MenuHome(),
                ),
                Flexible(
                  flex: 3,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 300, top: 20, right: 300),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: (){},
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(Icons.person, size: 35, color: Colors.grey[200],),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        onHover: (_){},
                                        child: GestureDetector(
                                          onTap: (){},
                                          child: const Text("caio_reis", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: (){},
                                          child: const SelectableText("caio", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.black54)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onHover: (_){},
                                    child: GestureDetector(
                                      onTap: (){},
                                      child: const Text("Musica - musica", style: TextStyle(decoration: TextDecoration.underline)),
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              SizedBox(
                                height: 40,
                                width: 100,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    shape: const RoundedRectangleBorder(side: BorderSide(color: Colors.red)),
                                  ),
                                  onPressed: (){}, 
                                  child: Text("Seguir", style: TextStyle(color: Colors.red[400], fontSize: 18, fontWeight: FontWeight.w400)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Container(
                                  height: 550,
                                  width: 300,
                                  decoration: const BoxDecoration(
                                    color: Colors.black
                                  ),
                                  child: FutureBuilder(
                                    future: _lateInitialize,
                                    builder: (context, snapshot) {
                                      return Center(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                          child: MouseRegion(
                                            cursor: SystemMouseCursors.click,
                                            child: GestureDetector(
                                              behavior: HitTestBehavior.opaque,
                                              onDoubleTap: () {},
                                              onTap: () => setState(() {
                                                controller.value.isPlaying ? controller.pause() : controller.play();
                                              }),
                                              child: (controller.value.isInitialized)
                                                  ? AspectRatio(
                                                      aspectRatio: controller.value.aspectRatio,
                                                      child: VideoPlayer(controller),
                                                    )
                                                  : const Center(
                                                      child: CircularProgressIndicator(),
                                                    ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                  ),
                                ),
                              ),
                              const SizedBox(width: 25),
                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(Icons.favorite_rounded, size: 30, color: Colors.black),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text("10.9k", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                                  const SizedBox(height: 5),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(Icons.chat_rounded, size: 30, color: Colors.black),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text("10.9k", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                                  const SizedBox(height: 5),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(Icons.bookmark_outlined, size: 30, color: Colors.black),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text("10.9k", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                                  const SizedBox(height: 5),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(Icons.reply, size: 30, color: Colors.black),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text("10.9k", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                                  const SizedBox(height: 5),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                            child: Divider(color: Colors.grey[200]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
           ),
       );
  }
}