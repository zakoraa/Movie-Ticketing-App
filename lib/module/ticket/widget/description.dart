import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../home/controller/synopsis_controller.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.heightImage});

  final double heightImage;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SynopsisController());
    return Padding(
      padding: EdgeInsets.only(top: heightImage - 100),
      child: Container(
        width: Get.mediaQuery.size.width,
        height: 500,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              const Color(0xff1E1F27).withOpacity(0),
              const Color(0xff1E1F27).withOpacity(1),
              const Color(0xff1E1F27).withOpacity(1),
              const Color(0xff1E1F27).withOpacity(1),
              const Color(0xff1E1F27).withOpacity(1),
              const Color(0xff1E1F27).withOpacity(1),
              const Color(0xff1E1F27).withOpacity(1),
              const Color(0xff1E1F27).withOpacity(1),
              const Color(0xff1E1F27).withOpacity(1),
              const Color(0xff1E1F27).withOpacity(1),
            ])),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Spider-Man: No Way Home",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Obx(
                () => RichText(
                  text: TextSpan(style: GoogleFonts.poppins(), children: [
                    (controller.completeSynopsis.value == false)
                        ? const TextSpan(
                            text:
                                "After Quentin Beck frames Peter Parker for his murder and reveals Parker's identity as Spider-Man,[a] Parker, his girlfriend Michelle 'MJ' Jones-Watson, best friend Ned Leeds, and aunt May are interrogated by the Department of Damage Control. Lawyer Matt Murdock gets Parker's charges dropped...",
                            style: TextStyle(fontSize: 14),
                          )
                        : const TextSpan(
                            text:
                                "After Quentin Beck frames Peter Parker for his murder and reveals Parker's identity as Spider-Man,[a] Parker, his girlfriend Michelle 'MJ' Jones-Watson, best friend Ned Leeds, and aunt May are interrogated by the Department of Damage Control. Lawyer Matt Murdock gets Parker's charges dropped, but the group grapples with negative publicity. After Parker, MJ, and Ned's MIT applications are rejected, Parker goes to the New York Sanctum to ask Stephen Strange for help. Strange starts casting a spell that would make everyone forget Parker is Spider-Man, but it is corrupted when Parker repeatedly requests alterations to let his loved ones retain their memories, ultimately causing Strange to contain the spell to stop it.",
                            style: TextStyle(fontSize: 14),
                          ),
                    TextSpan(
                        text: (controller.completeSynopsis.value == false)
                            ? "More"
                            : "  Less",
                        style: const TextStyle(
                          color: Color(0xffD98639),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            controller.completedSynopsis();
                          })
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
