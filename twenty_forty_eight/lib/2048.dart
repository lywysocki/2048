import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';
import 'package:twenty_forty_eight/pieces/button.dart';
import 'package:twenty_forty_eight/pieces/empty_board.dart';

import 'assets/colors.dart';

//TODO: this will be the main driver for UI components of the game
class TwentyFortyEight extends ConsumerStatefulWidget {
  const TwentyFortyEight({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GameState();
}

class _GameState extends ConsumerState<TwentyFortyEight>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      autofocus: true,
      focusNode: FocusNode(),
      onKey: (RawKeyEvent event) {
        // move tiles based on keyboard arrows (lrud)
      },
      child: SwipeDetector(
        onSwipe: (direction, offset) {
          // move tile based on trackpad swipe
        },
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Your Very Own 2048 Game',
                      style: TextStyle(
                          color: darkTxtColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 50),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Button(
                              text: 'Restart Game',
                              onPressed: () {
                                //restart the game
                              },
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 32.0,
              ),
              Stack(
                children: [
                  const EmptyBoard(),
                  //TODO: add the tile board so theres moving peices
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
