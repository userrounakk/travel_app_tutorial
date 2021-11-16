import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  final IconData icon;
  final String title;
  final bool selected;
  const Options(
      {Key? key,
      required this.icon,
      required this.title,
      required this.selected})
      : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: widget.selected == true ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            widget.icon,
            color: widget.selected == true ? Colors.white : Colors.black,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          widget.title,
          style: const TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
