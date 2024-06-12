import 'package:flutter/material.dart';
import 'package:flutter_application_pizza/components/button.dart';
import 'package:flutter_application_pizza/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 25),
              Text('RIGALOVKA 3D',
                  style: GoogleFonts.dmSerifDisplay(
                      fontSize: 28, color: Colors.white)),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('lib/images/sushi-1.png'),
              ),
              Text('TUT VSE EBAT\' KAK VKUSNO',
                  style: GoogleFonts.dmSerifDisplay(
                      fontSize: 44, color: Colors.white)),
              Text(
                'Братан, жизнь — это движение. Держи удар, помогай своим и не сдавайся никогда',
                style: TextStyle(color: Colors.grey[300], height: 2),
              ),
              const SizedBox(height: 25),
              MyButton(
                text: "Rigaem vmeste",
                onTap: () {
                  // go to menu
                  Navigator.pushNamed(context, '/menupage');
                },
              )
            ]),
      ),
    );
  }
}
