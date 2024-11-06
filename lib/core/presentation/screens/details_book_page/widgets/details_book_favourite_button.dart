import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DetailsBookFavouriteButton extends HookWidget {
  const DetailsBookFavouriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isFilled = useState(false);

    final controller = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );

    final onPressed = useCallback(() {
      if (controller.isCompleted) {
        controller.reverse();
      } else {
        controller.forward();
      }

      isFilled.value = !isFilled.value;
    });

    final animation = useAnimation(
      Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: controller,
          curve: Curves.easeOut,
        ),
      ),
    );

    return IconButton(
      onPressed: () => onPressed(),
      icon: Stack(
        children: [
          const Icon(Icons.favorite_border),
          Opacity(
            opacity: animation,
            child: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
