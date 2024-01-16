import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back_ios),
                  SizedBox(
                      width: 58,
                      height: 59,
                      child: Image.asset("assets/images/image 14.png")),
                  const Icon(
                    Icons.shopping_bag_outlined,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Our way of loving",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              const Text("you back",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 40,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefixIconConstraints: const BoxConstraints(
                    minHeight: 0,
                    minWidth: 0,
                  ),

                  prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Icon(Icons.search,
                              color: Colors.black.withOpacity(0.5)),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Search",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.5)),
                            ),
                          )
                        ],
                      )),
                  alignLabelWithHint: true,
                  fillColor: Colors.grey[350],
                  filled: true,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  border: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.transparent)),
                  disabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.transparent)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(55),
                      borderSide: const BorderSide(
                          width: 1, color: Colors.transparent)),
                  errorBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.transparent)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(55),
                      borderSide: const BorderSide(
                          width: 1, color: Colors.transparent)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(55),
                      borderSide: const BorderSide(
                          width: 1, color: Colors.transparent)),

                  // focusedBorder: OutlineInputBorder(
                  //   // borderSide: OutlinedBorder(),
                  //   borderRadius: BorderRadius.circular(55),
                  // )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
