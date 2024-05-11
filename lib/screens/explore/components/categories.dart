import 'package:flutter/material.dart';

class Categories extends StatelessWidget {

  const Categories({ super.key });

   @override
   Widget build(BuildContext context) {
       return Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 30),
                  child: SizedBox(
                    height: 70,
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: ScrollConfiguration(
                      behavior: const ScrollBehavior(),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            20,
                            (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 40,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: Colors.grey[300],
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  ),
                                  onPressed: () {},
                                  child: const Text("Category", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
  }
}