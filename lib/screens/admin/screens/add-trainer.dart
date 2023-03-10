import 'package:details/details/constants.dart';
import 'package:details/screens/admin/controller/add_data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:details/screens/admin/widgets/custom_textfield.dart';

// import '../controller/add_travel_controller.dart';

class AddTrainer extends StatelessWidget {
  const AddTrainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Trainer'),
        backgroundColor: kPrimaryColor,
      ),
      resizeToAvoidBottomInset: false,
      body: form(context),
    );
  }
}

Widget form(context) {
  TextEditingController n = TextEditingController();
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return GetBuilder<AddDataController>(
      init: AddDataController(),
      builder: (_) {
        return Form(
          key: _.formKey,
          child: Container(
              // height: height * 0.65,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(46),
                  topRight: Radius.circular(46),
                ),
              ),
              child: ListView(
                padding: EdgeInsets.only(top: 5),
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 10),
                      CustomTextField(
                        controller: _.no,
                        validator: (value) {
                          return _.validateAddress(value!);
                        },
                        lable: 'Number',
                        icon: const Icon(Icons.person),
                        input: TextInputType.text,
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        controller: _.name,
                        validator: (value) {
                          return _.validateAddress(value!);
                        },
                        lable: 'Name',
                        icon: const Icon(Icons.numbers),
                        input: TextInputType.text,
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        controller: _.email,
                        validator: (value) {
                          return _.validateAddress(value!);
                        },
                        lable: 'Email',
                        icon: const Icon(Icons.person),
                        input: TextInputType.text,
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                          controller: _.password,
                          validator: (value) {
                            return _.validateAddress(value!);
                          },
                          lable: 'password',
                          icon: const Icon(Icons.key),
                          input: TextInputType.text),
                      // const SizedBox(height: 20),
                      // CustomTextField(
                      //     controller: logic.price,
                      //     validator: (value) {
                      //       return logic.validateAddress(value!);
                      //     },
                      //     lable: '??????????',
                      //     icon: const Icon(Icons.attach_money),
                      //     input: TextInputType.number),
                      // const SizedBox(height: 20),
                      // CustomTextField(
                      //     controller: logic.no,
                      //     validator: (value) {
                      //       return logic.validateAddress(value!);
                      //     },
                      //     lable: '?????? ??????????????',
                      //     icon: const Icon(Icons.numbers),
                      //     input: TextInputType.number),
                      // // const SizedBox(height: 20),

                      // TextButton(
                      //   onPressed: () {
                      //     logic.getDatetime(context);
                      //   },
                      //   child: const Text(' ?????????? ?????????????? '),
                      //   style: ButtonStyle(
                      //     padding: MaterialStateProperty.all(EdgeInsets.only(
                      //         top: height / 65,
                      //         bottom: height / 65,
                      //         left: width / 10,
                      //         right: width / 10)),
                      //     backgroundColor: MaterialStateProperty.all(
                      //         const Color.fromRGBO(19, 26, 44, 1.0)),
                      //     shape:
                      //         MaterialStateProperty.all<RoundedRectangleBorder>(
                      //             RoundedRectangleBorder(
                      //                 borderRadius: BorderRadius.circular(13),
                      //                 side: const BorderSide())),
                      //   ),
                      // ),
                      // CustomTextField(controller: logic.count, validator: (value){
                      //   return logic.validateAddress(value!);
                      // }, lable: '?????? ????????????'),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextButton(
                            onPressed: () async {
                              _.addTrainer();
                            },
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.only(
                                      top: height / 55,
                                      bottom: height / 55,
                                      left: width / 10,
                                      right: width / 10)),
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 4, 72, 77)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13),
                                      side: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 4, 72, 77)))),
                            ),
                            child: const Text(
                              'Save',
                              style: TextStyle(fontSize: 16),
                            )),
                      )
                    ],
                  ),
                ],
              )),
        );
      });
}
