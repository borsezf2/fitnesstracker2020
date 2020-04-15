// import 'package:flutter/material.dart';
// import 'package:share/share.dart';

// class Share extends StatefulWidget {
//   @override
//   ShareState createState() => ShareState();
// }

// class ShareState extends State<Share> {
//   String text = '';
//   String subject = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Share Plugin Demo'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextField(
//               decoration: const InputDecoration(
//                 labelText: 'Share text:',
//                 hintText: 'Enter some text and/or link to share',
//               ),
//               maxLines: 2,
//               onChanged: (String value) => setState(() {
//                 text = value;
//               }),
//             ),
//             TextField(
//               decoration: const InputDecoration(
//                 labelText: 'Share subject:',
//                 hintText: 'Enter subject to share (optional)',
//               ),
//               maxLines: 2,
//               onChanged: (String value) => setState(() {
//                 subject = value;
//               }),
//             ),
//             const Padding(padding: EdgeInsets.only(top: 24.0)),
//             RaisedButton(
//               child: const Text('Share'),
//               onPressed: text.isEmpty
//                 ? null
//                 : () {
//                     // final RenderBox box = context.findRenderObject();
//                     Share.share('check out my website https://example.com');
//                   },
//             ),
//           ],
//         ),
//       )
//     );
//   }
// }