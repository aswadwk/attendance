import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final String? type;

  ButtonWidget({
    Key? key,
    required this.title,
    required this.onPressed,
    this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: type == 'secondary'
            ? Colors.white
            : Theme.of(context).colorScheme.primary,

        // foregroundColor: Colors.white,
        minimumSize: const Size.fromHeight(50),
        // rounded 100%
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: type == 'secondary'
                  ? Theme.of(context).colorScheme.primary
                  : Colors.white,
            ),
      ),
    );
  }
}
