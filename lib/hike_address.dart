import 'package:design_to_flutter_ui/hike_name_and_address.dart';
import 'package:flutter/material.dart';

class HikeAddress extends StatefulWidget {
  const HikeAddress({super.key});

  @override
  State<StatefulWidget> createState() => HikeAddressState();
}

class HikeAddressState extends State<HikeAddress> {
  int counter = 41;
  IconData iconData = Icons.star;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const HikeNameAndAddress(),
        const Spacer(),
        IconButton(
          onPressed: () {
            counter++;
            setState(() {});
          },
          icon: const Icon(Icons.star),
          color: Colors.red,
        ),
        //Icon(Icons.star, color: Colors.red),
        const SizedBox(width: 4),
        Text(counter.toString()),
      ],
    );
  }
}

// class HikeAddress extends StatelessWidget {
//   const HikeAddress({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const HikeNameAndAddress(),
//         const Spacer(),
//         IconButton(
//           onPressed: () {
//             print("Button gedrückt");
//           },
//           icon: const Icon(Icons.star),
//           color: Colors.red,
//         ),
//         //Icon(Icons.star, color: Colors.red),
//         const SizedBox(width: 4),
//         const Text("41"),
//       ],
//     );
//   }
// }
