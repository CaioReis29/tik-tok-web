import 'package:flutter/material.dart';
import 'package:tik_tok_clone/screens/explore/components/categories.dart';
import 'package:tik_tok_clone/screens/explore/components/feed.dart';
import 'package:tik_tok_clone/screens/home/components/menu_home.dart';
import 'package:video_player/video_player.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
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
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Color.fromARGB(255, 188, 188, 188), width: 0.5)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              onHover: (value) {},
              child: Image.asset("assets/tik_tok_logo.png", height: 42, width: 118),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.33,
              height: 45,
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 213, 212, 212),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color.fromARGB(0, 225, 223, 223))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color.fromARGB(0, 225, 223, 223))),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color.fromARGB(0, 225, 223, 223))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color.fromARGB(0, 225, 223, 223))),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color.fromARGB(0, 225, 223, 223))),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color.fromARGB(0, 225, 223, 223))),
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
                    onPressed: () {},
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
                    onPressed: () {},
                    child: const Text("Entrar",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            const MenuHome(),
            Column(
              children: [
                const Categories(),
                Feed(lateInitialize: _lateInitialize, controller: controller),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
