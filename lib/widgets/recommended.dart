import 'package:flutter/material.dart';

class Recommended extends StatefulWidget {
  final String url;
  final String place;
  const Recommended({Key? key, required this.url, required this.place})
      : super(key: key);

  @override
  _RecommendedState createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Stack(
        children: [
          Container(
            height: 150,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(widget.url),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.9), BlendMode.dstATop))),
          ),
          Positioned(
              bottom: 10,
              left: 10,
              child: Row(
                children: [
                  const Icon(
                    Icons.location_pin,
                    color: Colors.white,
                  ),
                  Text(
                    widget.place,
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
