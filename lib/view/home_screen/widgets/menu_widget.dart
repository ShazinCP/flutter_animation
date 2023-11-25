import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => ZoomDrawer.of(context)!.toggle(),
      icon: const Icon(Icons.menu),
    );
  }
}

// class MenuWidget extends StatelessWidget {
//   final BuildContext context;

//   const MenuWidget({Key? key, required this.context}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       onPressed: () => ZoomDrawer.of(this.context)?.toggle(),
//       icon: const Icon(Icons.menu),
//     );
//   }
// }
