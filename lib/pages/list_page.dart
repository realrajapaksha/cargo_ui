import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/main_button.dart';
import '../widgets/main_text_field.dart';
import '../widgets/navbar.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xFF001C31),
        body: SafeArea(
          child: Stack(
            children: [
              const Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Navbar(title: "List Page"),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 70,
                bottom: 10,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: 15,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.only(bottom: 100),
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF132F47),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "PAG 23456XY",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                    CupertinoSwitch(
                                        activeColor: const Color(0xFF0D6AD4),
                                        value: true, onChanged: (value){})
                                  ],
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: MainButton(
                        title: 'SUBMIT',
                        onTapped: () {},
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      color: const Color(0xFF223343),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF001C31),
                            ),
                            child: const Icon(
                              Icons.home_outlined,
                              color: Colors.blue,
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
      ),
    );
  }
}
