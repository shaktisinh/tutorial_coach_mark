import 'package:flutter/material.dart';

class CoachMarkDesc extends StatefulWidget {
  final String text;
  final String skip;
  final String next;
  final void Function()? onSkip;
  final void Function()? onNext;

  const CoachMarkDesc(
      {super.key,
      required this.text,
      required this.skip,
      required this.next,
      required this.onSkip,
      required this.onNext});

  @override
  State<StatefulWidget> createState() => _CoachMarkDescState();
}

class _CoachMarkDescState extends State<CoachMarkDesc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: widget.onSkip, child: Text(widget.skip)),
              const SizedBox(
                width: 16,
              ),
              ElevatedButton(onPressed: widget.onNext, child: Text(widget.next))
            ],
          )
        ],
      ),
    );
  }
}
