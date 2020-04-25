import 'package:flutter/material.dart';

class AddNewFriend extends StatefulWidget {
  @override
  _AddNewFriendState createState() => _AddNewFriendState();
}

class _AddNewFriendState extends State<AddNewFriend> {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        SizedBox(height: height*0.02,),
        Text(
          'Follow your friends and start your fitness journey together.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.0
          ),
        ),
        SizedBox(height: height*0.03,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(width: width*0.05,),
              Pattern(),
              SizedBox(width: width*0.05,),
              Pattern(),
              SizedBox(width: width*0.05,),
              Pattern(),
              SizedBox(width: width*0.05,),
              Pattern(),
              SizedBox(width: width*0.05,),
            ],
          ),
        )
      ],
    );
  }
}

class Pattern extends StatefulWidget {
  @override
  _PatternState createState() => _PatternState();
}

class _PatternState extends State<Pattern> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 159,
            child: ClipPath(
              child: Container(
                color: Colors.white,
                height: 80,
                width: 150,
                child: PathExample()
              ),
            ),
          ),
          Positioned(
            child: Container(
              height: 160,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PathExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: PathPainter(),
    );
  }
}

class PathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    Path path = Path();
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

enum ClipType { pointed, curved, arc, traingle, waved }

class ZigZag extends StatelessWidget {
  Widget child;
  ClipType clipType;

  ZigZag({this.child, this.clipType = ClipType.curved});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ZigZagClipper(clipType),
      child: child,
    );
  }
}

class ZigZagClipper extends CustomClipper<Path> {
  ClipType clipType;

  ZigZagClipper(this.clipType);

  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Paint paint = Paint()
      ..color = Colors.red;
    
    Path path = Path();
    if (clipType == ClipType.pointed)
      createPointedTraingle(size, path);
    else if (clipType == ClipType.arc)
      createBeziarArc(size, path);
    else if (clipType == ClipType.traingle) {
      createTriangle(size, path, paint);
    }else if (clipType == ClipType.waved) {
      createWave(size, path);
    }else
      createCurve(size, path);

    path.close();
    return path;
  }

  createTriangle(Size size, Path path, Paint paint) {
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, 0.0);
  }

  createArc(Size size, Path path) {
    path.lineTo(0, size.height);
    path.arcToPoint(Offset(size.width, size.height),
        radius: Radius.elliptical(30, 10));
    path.lineTo(size.width, 0);
  }

  createBeziarArc(Size size, Path path) {
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height - 100, size.width, size.height);
    path.lineTo(size.width, 0);
  }

  createCurve(Size size, Path path) {
    path.lineTo(0, size.height);

    var curXPos = 0.0;
    var curYPos = size.height;
    var increment = size.width / 20;
    while (curXPos < size.width) {
      curXPos += increment;
      path.arcToPoint(Offset(curXPos, curYPos), radius: Radius.circular(5));
    }
    path.lineTo(size.width, 0);
  }

  createPointedTraingle(Size size, Path path) {
    path.lineTo(0, size.height);

    var curXPos = 0.0;
    var curYPos = size.height;
    var increment = size.width / 40;
    while (curXPos < size.width) {
      curXPos += increment;
      curYPos = curYPos == size.height ? size.height - 30 : size.height;
      path.lineTo(curXPos, curYPos);
    }
    path.lineTo(size.width, 0);
  }

  createWave(Size size, Path path){
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width/4, size.height - 40, size.width/2, size.height-20);
    path.quadraticBezierTo(3/4*size.width, size.height, size.width, size.height-30);
    path.lineTo(size.width, 0);

  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}