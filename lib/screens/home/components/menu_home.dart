import 'package:flutter/material.dart';
import 'package:tik_tok_clone/screens/home/components/menu_buttons.dart';

class MenuHome extends StatelessWidget {

  const MenuHome({ super.key });

   @override
   Widget build(BuildContext context) {
       return ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 220, minWidth: 50),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 10),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          MenuButtons(icon: Icons.home, label: "Para Você", onTap: (){} ,iconColor: Colors.red[400], labelColor: Colors.red[400]),
                          MenuButtons(icon: Icons.person_search_outlined, label: "Seguindo", onTap: (){}),
                          MenuButtons(icon: Icons.people_alt_outlined, label: "Amigos", onTap: (){}),
                          MenuButtons(icon: Icons.explore_outlined, label: "Explorar", onTap: (){}),
                          MenuButtons(icon: Icons.videocam_outlined, label: "LIVE", onTap: (){}),
                          MenuButtons(icon: Icons.person_outline_sharp, label: "Perfil", onTap: (){}),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Divider(color: Colors.grey[200]),
                          ),
                          SelectableText(
                            "Faça login para seguir criadores, curtir vídeos e ver comentários.", 
                            style: TextStyle(color: Colors.grey[500], fontSize: 17),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            height: 50,
                            width: 200,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: const RoundedRectangleBorder(side: BorderSide(color: Colors.red)),
                              ),
                              onPressed: (){}, 
                              child: Text("Entrar", style: TextStyle(color: Colors.red[400], fontSize: 18, fontWeight: FontWeight.w700)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                            child: Divider(color: Colors.grey[200]),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const SelectableText("Empresa", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold)),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onHover: (_){},
                                      child: InkWell(
                                        onTap: (){},
                                        child: const Text("Sobre", style: TextStyle(color: Colors.grey, fontSize: 13, decoration: TextDecoration.underline, fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onHover: (_){},
                                      child: InkWell(
                                        onTap: (){},
                                        child: const Text("Sala de imprensa", style: TextStyle(color: Colors.grey, fontSize: 13, decoration: TextDecoration.underline, fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onHover: (_){},
                                      child: InkWell(
                                        onTap: (){},
                                        child: const Text("Contato", style: TextStyle(color: Colors.grey, fontSize: 13, decoration: TextDecoration.underline, fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const SelectableText("Empresa", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold)),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onHover: (_){},
                                      child: InkWell(
                                        onTap: (){},
                                        child: const Text("Sobre", style: TextStyle(color: Colors.grey, fontSize: 13, decoration: TextDecoration.underline, fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onHover: (_){},
                                      child: InkWell(
                                        onTap: (){},
                                        child: const Text("Sala de imprensa", style: TextStyle(color: Colors.grey, fontSize: 13, decoration: TextDecoration.underline, fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onHover: (_){},
                                      child: InkWell(
                                        onTap: (){},
                                        child: const Text("Contato", style: TextStyle(color: Colors.grey, fontSize: 13, decoration: TextDecoration.underline, fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const SelectableText("Empresa", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold)),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onHover: (_){},
                                      child: InkWell(
                                        onTap: (){},
                                        child: const Text("Sobre", style: TextStyle(color: Colors.grey, fontSize: 13, decoration: TextDecoration.underline, fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onHover: (_){},
                                      child: InkWell(
                                        onTap: (){},
                                        child: const Text("Sala de imprensa", style: TextStyle(color: Colors.grey, fontSize: 13, decoration: TextDecoration.underline, fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onHover: (_){},
                                      child: InkWell(
                                        onTap: (){},
                                        child: const Text("Contato", style: TextStyle(color: Colors.grey, fontSize: 13, decoration: TextDecoration.underline, fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const SelectableText("Empresa", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold)),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onHover: (_){},
                                      child: InkWell(
                                        onTap: (){},
                                        child: const Text("Sobre", style: TextStyle(color: Colors.grey, fontSize: 13, decoration: TextDecoration.underline, fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onHover: (_){},
                                      child: InkWell(
                                        onTap: (){},
                                        child: const Text("Sala de imprensa", style: TextStyle(color: Colors.grey, fontSize: 13, decoration: TextDecoration.underline, fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onHover: (_){},
                                      child: InkWell(
                                        onTap: (){},
                                        child: const Text("Contato", style: TextStyle(color: Colors.grey, fontSize: 13, decoration: TextDecoration.underline, fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const SelectableText("Empresa", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold)),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onHover: (_){},
                                      child: InkWell(
                                        onTap: (){},
                                        child: const Text("Sobre", style: TextStyle(color: Colors.grey, fontSize: 13, decoration: TextDecoration.underline, fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onHover: (_){},
                                      child: InkWell(
                                        onTap: (){},
                                        child: const Text("Sala de imprensa", style: TextStyle(color: Colors.grey, fontSize: 13, decoration: TextDecoration.underline, fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onHover: (_){},
                                      child: InkWell(
                                        onTap: (){},
                                        child: const Text("Contato", style: TextStyle(color: Colors.grey, fontSize: 13, decoration: TextDecoration.underline, fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
   }
}