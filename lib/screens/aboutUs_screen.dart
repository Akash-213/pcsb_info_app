import 'package:flutter/material.dart';
import '../widgets/mainDrawer.dart';

class AboutUsScreen extends StatelessWidget {
  static const routeName = '/aboutUs';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("About Us"),
        ),
        drawer: MainDrawer(),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            //info(),
            info1(),
            info2(),
            logo(),
          ],
        ),
      ),
    );
  }

//   Widget info() => Card(
//     shadowColor: Colors.grey,
//     elevation: 8,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(12),
//     ),
//     child: Container(
//       padding: EdgeInsets.all(16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Pune Institute of Computer Technology (PICT) CSI Student Branch was established in 2016 with an objective to facilitate research, knowledge sharing, learning and career enhancement for the students, while simultaneously inspiring and nurturing new entrants into the industry and helping them to integrate into the IT Community.',
//             style: TextStyle(fontSize: 18),
//             textAlign: TextAlign.center,
//           ),
//           const SizedBox(height: 20),
//           Text(
//             'PCSB works under Computer Society of India (CSI) to provide latest technology related knowledge to students. PCSB started with 147 members in the academic year 2016-2017.',
//             style: TextStyle(fontSize: 18),
//             textAlign: TextAlign.center,
//           ),
//           const SizedBox(height: 20),
//           Image(
//               image: AssetImage('assets/csi_logo.jpg'),
//           ),
//         ],
//       ),
//     ),
//
//   );
// }

  Widget info1() => Card(
    shadowColor: Colors.grey,
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    child: Container(
        padding: EdgeInsets.all(16),
        child:
        Text(
          'Pune Institute of Computer Technology (PICT) CSI Student Branch was established in 2016 with an objective to facilitate research, knowledge sharing, learning and career enhancement for the students, while simultaneously inspiring and nurturing new entrants into the industry and helping them to integrate into the IT Community.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        )
    ),
  );

  Widget info2() => Card(
    shadowColor: Colors.grey,
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    child: Container(
        padding: EdgeInsets.all(16),
        child:
        Text(
          'PCSB works under Computer Society of India (CSI) to provide latest technology related knowledge to students. PCSB started with 147 members in the academic year 2016-2017.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        )
    ),
  );

  Widget logo() => Card(
    shadowColor: Colors.grey,
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    child: Container(
      padding: EdgeInsets.all(16),
      child:
      Image(
        image: AssetImage('assets/images/PCSBlogo.jpg'),
      ),
    ),
  );
}