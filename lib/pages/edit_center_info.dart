import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:details/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:details/constants.dart';
import 'package:get/get.dart';

class EditInfo extends StatelessWidget {
  // final AuthController controller = Get.put(AuthController());
  // String? doc;
  // booking(this.doc);
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      centerTitle: false,
      title: Text('booking'),
      actions: <Widget>[],
    );
  }

  var cs = FirebaseFirestore.instance.collection('center').snapshots();

  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (controller) {
          return Scaffold(
              appBar: buildAppBar(),
              backgroundColor: kPrimaryColor,
              body: SafeArea(
                  child: Column(children: <Widget>[
                const SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Expanded(
                    child: Stack(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      decoration: const BoxDecoration(
                          color: kBackgroundColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Form(
                            key: controller.formKey2,
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20, top: 70),
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  height: 54,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.grey[200],
                                    boxShadow: const [
                                      BoxShadow(
                                          offset: Offset(0, 10),
                                          blurRadius: 50,
                                          color: Color(0xffEEEEEE)),
                                    ],
                                  ),
                                  child: TextField(
                                    controller: controller.name,
                                    cursorColor:
                                        const Color.fromARGB(255, 4, 72, 77),
                                    decoration: const InputDecoration(
                                      icon: Icon(
                                        Icons.person,
                                        color: Color.fromARGB(255, 4, 72, 77),
                                      ),
                                      hintText: "Center Name",
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                                // Container(
                                //   alignment: Alignment.center,
                                //   margin:
                                //       const EdgeInsets.only(left: 20, right: 20, top: 20),
                                //   padding: const EdgeInsets.only(left: 20, right: 20),
                                //   height: 54,
                                //   decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(50),
                                //     color: Colors.grey[200],
                                //     boxShadow: const [
                                //       BoxShadow(
                                //           offset: Offset(0, 10),
                                //           blurRadius: 50,
                                //           color: Color(0xffEEEEEE)),
                                //     ],
                                //   ),
                                //   child: TextField(
                                //     controller: controller.email,
                                //     cursorColor: const Color.fromARGB(255, 4, 72, 77),
                                //     decoration: const InputDecoration(
                                //       icon: Icon(
                                //         Icons.email,
                                //         color: Color.fromARGB(255, 4, 72, 77),
                                //       ),
                                //       hintText: "Email",
                                //       enabledBorder: InputBorder.none,
                                //       focusedBorder: InputBorder.none,
                                //     ),
                                //   ),
                                // ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20, top: 20),
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  height: 54,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: const Color(0xffEEEEEE),
                                    boxShadow: const [
                                      BoxShadow(
                                          offset: Offset(0, 20),
                                          blurRadius: 100,
                                          color: Color(0xffEEEEEE)),
                                    ],
                                  ),
                                  child: TextField(
                                    controller: controller.number,
                                    cursorColor:
                                        const Color.fromARGB(255, 4, 72, 77),
                                    decoration: const InputDecoration(
                                      focusColor:
                                          Color.fromARGB(255, 4, 72, 77),
                                      icon: Icon(
                                        Icons.phone,
                                        color: Color.fromARGB(255, 4, 72, 77),
                                      ),
                                      hintText: "Phone Number",
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20, top: 20),
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  height: 54,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: const Color(0xffEEEEEE),
                                    boxShadow: const [
                                      BoxShadow(
                                          offset: Offset(0, 20),
                                          blurRadius: 100,
                                          color: Color(0xffEEEEEE)),
                                    ],
                                  ),
                                  child: TextField(
                                    controller: controller.loc,
                                    cursorColor:
                                        const Color.fromARGB(255, 4, 72, 77),
                                    decoration: const InputDecoration(
                                      focusColor:
                                          Color.fromARGB(255, 4, 72, 77),
                                      icon: Icon(
                                        Icons.location_on,
                                        color: Color.fromARGB(255, 4, 72, 77),
                                      ),
                                      hintText: "Enter Location",
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20, top: 20),
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  height: 54,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: const Color(0xffEEEEEE),
                                    boxShadow: const [
                                      BoxShadow(
                                          offset: Offset(0, 20),
                                          blurRadius: 100,
                                          color: Color(0xffEEEEEE)),
                                    ],
                                  ),
                                  child: TextField(
                                    controller: controller.pri,
                                    cursorColor:
                                        const Color.fromARGB(255, 4, 72, 77),
                                    decoration: const InputDecoration(
                                      focusColor:
                                          Color.fromARGB(255, 4, 72, 77),
                                      icon: Icon(
                                        Icons.price_change,
                                        color: Color.fromARGB(255, 4, 72, 77),
                                      ),
                                      hintText: "Enter price",
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20, top: 20),
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  height: 54,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: const Color(0xffEEEEEE),
                                    boxShadow: const [
                                      BoxShadow(
                                          offset: Offset(0, 20),
                                          blurRadius: 100,
                                          color: Color(0xffEEEEEE)),
                                    ],
                                  ),
                                  child: TextField(
                                    controller: controller.dep,
                                    cursorColor:
                                        const Color.fromARGB(255, 4, 72, 77),
                                    decoration: const InputDecoration(
                                      focusColor:
                                          Color.fromARGB(255, 4, 72, 77),
                                      icon: Icon(
                                        Icons.vpn_key,
                                        color: Color.fromARGB(255, 4, 72, 77),
                                      ),
                                      hintText: "Enter Department",
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.updateCenterInfo();
                            },
                            child: Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.only(
                                  left: 20, right: 20, top: 70),
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              height: 54,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      (Color.fromARGB(255, 4, 72, 77)),
                                      Color.fromARGB(255, 9, 90, 100)
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight),
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.grey[200],
                                boxShadow: const [
                                  BoxShadow(
                                      offset: Offset(0, 10),
                                      blurRadius: 50,
                                      color: Color(0xffEEEEEE)),
                                ],
                              ),
                              child: const Text(
                                "Update Info",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
              ])));
        });
  }
}
