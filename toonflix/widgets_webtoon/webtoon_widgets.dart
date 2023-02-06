import 'package:flutter/material.dart';
import 'package:toonflix/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;
  const Webtoon(
      {super.key, required this.title, required this.id, required this.thumb});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //MaterialPageRoute 또 다른 클래스이며, 다른 스크린처럼 보이게 해준다.
        Navigator.push(
          context,
          // MaterialPageRoute(
          //   builder: (context) =>
          //       DetailScreen(title: title, id: id, thumb: thumb),
          //   fullscreenDialog: true,
          // ),
          PageRouteBuilder(transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = const Offset(0.0, 1.0);
            var end = Offset.zero;
            var curve = Curves.ease;
            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            return SlideTransition(position: animation.drive(tween), child: child,);
          },
          pageBuilder: (context, animation, secondaryAnimation) => DetailScreen(title: title, id: id, thumb: thumb),
          )
        );
      },
      child: Column(
        children: [
          Hero(
            tag: id,
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15,
                        offset: const Offset(10, 10),
                        color: Colors.black.withOpacity(0.7))
                  ]),
              width: 250,
              child: Image.network(thumb),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
