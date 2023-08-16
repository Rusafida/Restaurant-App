import 'package:flutter/material.dart';

class NumberStepper extends StatefulWidget {
  final int initialValue;
  final int min;
  final int max;
  final int step;
  final Function(int) onChanged;

  const NumberStepper({
    Key? key,
    required this.initialValue,
    required this.min,
    required this.max,
    required this.step,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<NumberStepper> createState() => _NumberStepperState();
}

class _NumberStepperState extends State<NumberStepper> {
  int _currentValue = 3;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 79, 75, 4),
            ),
          ),
          child: Center(
            child: IconButton(
              onPressed: () {
                setState(() {
                  if (_currentValue > widget.min) {
                    _currentValue -= widget.step;
                  }
                  widget.onChanged(_currentValue);
                });
              },
              icon: Icon(
                Icons.remove,
                size: 15,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 79, 75, 4),
            ),
          ),
          child: Center(
            child: Text(
              _currentValue.toString(),
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 79, 75, 4),
            ),
          ),
          child: Center(
            child: IconButton(
              onPressed: () {
                setState(() {
                  if (_currentValue < widget.max) {
                    _currentValue += widget.step;
                  }
                  widget.onChanged(_currentValue);
                });
              },
              icon: Icon(
                Icons.add,
                size: 15,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
