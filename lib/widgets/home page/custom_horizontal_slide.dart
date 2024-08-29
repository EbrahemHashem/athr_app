import 'package:flutter/material.dart';

class CustomHorizontalSlide extends StatelessWidget {
  CustomHorizontalSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return CustomSlide();
        },
      ),
    );
    //  Container(
    //     padding: EdgeInsets.only(top: 15),
    //     child: ListView.builder(
    //         scrollDirection: Axis.horizontal,
    //         itemCount: 4,
    //         itemBuilder: (context, index) {
    //           return CustomSlide();
    //         }));
  }
}

class CustomSlide extends StatelessWidget {
  const CustomSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(38),
        ),
        child: Image(
          image: AssetImage('assets/images/Rectangle .png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
// Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//         Center(
//           child: Text(
//             'كل ما تحتاجه من مكيفات',
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//           ),
//         ),
//         Text(
//           'أصبح سهلا الآن وبين يديك فقط أطب ما تحتاجه ونصله إليك',
//           style: TextStyle(color: Colors.white),
//         )
//       ]),
//     );
//   }
// }
