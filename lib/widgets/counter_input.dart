// import 'package:distribution_mall_flutter/constant/cf_constant.dart';
// import 'package:distribution_mall_flutter/widgets/icon_button.dart';
// import 'package:flutter/material.dart';

// class CounterController exte1ds GetxController {
//   int value = 0;
//   int steps = 1;

//   void decrement() {
//     value = (value - steps);
//   }

//   void increment() {}

//   void setStep(int step) {
//     steps = step;
//     update();
//   }
// }

// class CounterInputGroup extends StatelessWidget {
//   const CounterInputGroup({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 26,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(RadiusConstant.edge15),
//           border: Border.all(color: ColorConstant.grey228, width: 1)),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           EPIconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.remove,
//               size: 20,
//             ),
//           ),
//           SizedBox(
//             width: 40,
//             child: Material(
//               child: TextField(
//                 controller: TextEditingController(text: '1123123122321'),
//                 keyboardType: TextInputType.number,
//                 textAlign: TextAlign.center,
//                 cursorWidth: 0.5,
//                 cursorHeight: 10,
//                 textAlignVertical: TextAlignVertical.center,
//                 decoration: null,
//                 style: const TextStyle(
//                     fontSize: FontConstant.f13, // 设置字体大小为20
//                     color: Color.fromRGBO(61, 59, 59, 1)),
//                 onChanged: (str) {
//                   // int.tryParse(str) ?? 0;
//                 },
//               ),
//             ),
//           ),
//           EPIconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.add,
//               size: 20,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
