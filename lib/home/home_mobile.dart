// import 'package:flutter/material.dart';
// import 'package:turn_digital_dashboard_test/home/header.dart';
//
// import '../header_video_embded.dart';
// import 'color_constant.dart';
// class HomeMobile extends StatefulWidget {
//   const HomeMobile({super.key});
//
//   @override
//   State<HomeMobile> createState() => _HomeMobileState();
// }
//
// class _HomeMobileState extends State<HomeMobile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: ConstantColor.backgroundColor,
//         drawer: const Drawer(),
//         body: SingleChildScrollView(
//           controller: _scrollController,
//           child: Column(
//             children: [
//               Header(),
//               SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height * 0.35,
//                   child: Center(child: HeaderVideoEmbed())),
//               OurService(),
//               StackImageDivider(
//                   scrollDirection: _scrollDirection,
//                   backGroundImage: "assets/agile.png",
//                   mobileHeight: MediaQuery.of(context).size.height * 0.7,
//                   aboveWidget: const FirstDividerText()),
//               const Offering(),
//               StackImageDivider(
//                   scrollDirection: _scrollDirection,
//                   backGroundImage: "assets/engaged-employees.jpg",
//                   mobileHeight: MediaQuery.of(context).size.height * 1,
//                   aboveWidget: const SecondDividerDescription()),
//               ClientWidget(),
//               TechnologyWidget(),
//               BoundarySection(),
//               Footer()
//             ],
//           ),
//         )
//
//       // Stack(
//       //   children: [
//       //     if (Responsive.isDesktop(context))
//       //       VideoSection(scrollController: _scrollController),
//       //     // Scrollable Content
//       //     SingleChildScrollView(
//       //       controller: _scrollController,
//       //       child: Column(
//       //         children: [
//       //           /// Top Spacer
//       //           Responsive.isDesktop(context)
//       //               ? SizedBox(height: MediaQuery.of(context).size.height * 0.8)
//       //               : SizedBox(
//       //                   width: MediaQuery.of(context).size.width,
//       //                   height: MediaQuery.of(context).size.height * 0.4,
//       //                   child: Center(child: HeaderVideoEmbed())),
//       //           HomeContentDividerWithImage(
//       //             scrollDirection: _scrollDirection,
//       //             backgroundImage: "assets/agile.png",
//       //             topWidget: OurService(),
//       //             isTopWidget: true,
//       //           ),
//       //           HomeContentWithImage(
//       //               scrollDirection: _scrollDirection,
//       //               backgroundImage: "assets/engaged-employees.jpg",
//       //               topWidget: const Offering(),
//       //               bottomWidget: ClientWidget()),
//       //           TechnologyWidget(),
//       //           BoundarySection(),
//       //
//       //           Footer()
//       //         ],
//       //       ),
//       //     ),
//       //   ],
//       // ),
//     );
//   }
// }
