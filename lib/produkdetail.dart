import 'package:dani_motionintern_week_1/homescreen.dart';
import 'package:dani_motionintern_week_1/transaksi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProdukDetail extends StatelessWidget {
  const ProdukDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: const Icon(Icons.arrow_back_ios),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                            );
                          },
                        ),
                        SizedBox(
                            width: 58,
                            height: 59,
                            child: Image.asset("assets/images/image 14.png")),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Image.asset("assets/images/Group 1681.png"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          child: const SizedBox(
                            width: 174,
                            child: Text(
                              "Chocolate Frappuccino",
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                        ),
                        const Text(
                          "\$20.00",
                          style:
                              TextStyle(color: Color(0xFF00623B), fontSize: 40),
                        )
                      ],
                    ),
                    const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros."),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.")
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF00623B),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Transaksi(),
                            ),
                          );
                        },
                        child: const Text("Add to bag"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
