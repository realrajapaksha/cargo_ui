import 'package:cargo_ui/pages/scan_page.dart';
import 'package:flutter/material.dart';

import '../widgets/main_button.dart';
import '../widgets/main_text_field.dart';
import '../widgets/navbar.dart';

class PickupPage extends StatefulWidget {
  const PickupPage({super.key});

  @override
  State<PickupPage> createState() => _PickupPageState();
}

class _PickupPageState extends State<PickupPage> {
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
                child: Navbar(title: "Pick up Cargo"),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: MainTextField(
                                  labelText: 'Track Number',
                                  onValueChanged: (bool value) {},
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const ScanPage()),
                                  );
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.blue,
                                  ),
                                  child: const Icon(
                                    Icons.qr_code,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          MainTextField(
                            labelText: 'Agent',
                            onValueChanged: (bool value) {},
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          MainTextField(
                            labelText: 'Origin',
                            onValueChanged: (bool value) {},
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          MainTextField(
                            labelText: 'Destination',
                            onValueChanged: (bool value) {},
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: MainTextField(
                                  labelText: 'AWB No',
                                  onValueChanged: (bool value) {},
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue,
                                ),
                                child: const Icon(
                                  Icons.qr_code,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
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
                          horizontal: 15, vertical: 10),
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
