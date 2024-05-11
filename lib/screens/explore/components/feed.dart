import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Feed extends StatefulWidget {

  final Future<void> lateInitialize;
  final VideoPlayerController controller;

  const Feed({ super.key, required this.lateInitialize, required this.controller });

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  late Future<void> _lateInitialize;
  late VideoPlayerController _controller;

  @override
  void initState() {
    _lateInitialize = widget.lateInitialize;
    _controller = widget.controller;
    super.initState();
  }

   @override
   Widget build(BuildContext context) {
       return SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.85,
                  height: MediaQuery.sizeOf(context).height * 0.75,
                  child: GridView.builder(
                    itemCount: 20,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 0.6,
                    ), 
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height: 420,
                                  width: 300,
                                  decoration: const BoxDecoration(color: Colors.black),
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
                                                  _controller.value.isPlaying ? _controller.pause() : _controller.play();
                                                }),
                                                child: (_controller.value.isInitialized)
                                                    ? AspectRatio(
                                                        aspectRatio: _controller.value.aspectRatio,
                                                        child: VideoPlayer(_controller),
                                                      )
                                                    : const Center(
                                                        child: CircularProgressIndicator(),
                                                      ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                              ),
                              const Positioned(
                                bottom: 10,
                                left: 10,
                                child: Row(
                                  children: [
                                    Icon(Icons.play_arrow_outlined, color: Colors.white),
                                    SizedBox(width: 5),
                                    Text(
                                      "10.9k",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("#hashtag #hashtag #hashtag", style: TextStyle(color: Colors.blue, fontSize: 16)),
                                const SizedBox(height: 5),
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                                      child: const Icon(Icons.person),
                                    ),
                                    const SizedBox(width: 5),
                                    const Text("caio"),
                                    const Spacer(),
                                    const Icon(Icons.favorite_border_rounded),
                                    const Text("10.9M", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w900, fontSize: 17)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                );
  }
}