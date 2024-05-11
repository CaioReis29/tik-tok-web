import 'package:flutter/material.dart';
import 'package:tik_tok_clone/screens/home/components/menu_home.dart';
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
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    onHover: (value) {},
                    child: Image.asset("assets/tik_tok_logo.png", height: 42, width: 118),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.33,
                    height: 45,
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.search),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 213, 212, 212),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: Color.fromARGB(0, 225, 223, 223))),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: Color.fromARGB(0, 225, 223, 223))),
                        errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: Color.fromARGB(0, 225, 223, 223))),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: Color.fromARGB(0, 225, 223, 223))),
                        disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: Color.fromARGB(0, 225, 223, 223))),
                        focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: Color.fromARGB(0, 225, 223, 223))),
                        hintText: "Pesquisar",
                        contentPadding: const EdgeInsets.only(top: 10, left: 20),
                      ),
                    ),
                  ),
                   Row(
                    children: [
                      SizedBox(
                        height: 40,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(),
                          ),
                          onPressed: (){}, 
                          icon: const Icon(Icons.add, color: Colors.black), 
                          label: const Text("Carregar", style: TextStyle(color: Colors.black, fontSize: 18)),
                        ),
                      ),
                      const SizedBox(width: 15),
                      SizedBox(
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red[400],
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                          onPressed: (){}, 
                          child: const Text("Entrar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                        ),
                      ),
                      const SizedBox(width: 15),
                      PopupMenuButton<String>(
                        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                          const PopupMenuItem<String>(
                            value: 'item1',
                            child: Row(
                              children: [
                                Icon(Icons.language),
                                SizedBox(width: 5),
                                Text("Português")
                              ],
                            ),
                          ),
                          const PopupMenuItem<String>(
                            value: 'item2',
                            child: Row(
                              children: [
                                Icon(Icons.question_mark_outlined),
                                SizedBox(width: 5),
                                Text("Feedback e Ajuda")
                              ],
                            ),
                          ),
                          const PopupMenuItem<String>(
                            value: 'item3',
                            child: Row(
                              children: [
                                Icon(Icons.keyboard),
                                SizedBox(width: 5),
                                Text("Português")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
           body: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: Row(
              children: [
                const MenuHome(),
                Expanded(
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