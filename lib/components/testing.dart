// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   late ValueNotifier<int> notifier;
//   final List<GlobalKey> itemKeys = [
//     GlobalKey(),
//     GlobalKey(),
//     GlobalKey(),
//     GlobalKey(),
//     GlobalKey()
//   ];

//   @override
//   void initState() {
//     notifier = ValueNotifier(0);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     notifier.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//         child: ValueListenableBuilder<int>(
//       valueListenable: notifier,
//       builder: (context, val, widget) {
//         return Column(children: [
//           Menu(
//             valueChanged: (int value) {
//               print("$value");
//               notifier.value = value;
//               notifier.notifyListeners();
//               Scrollable.ensureVisible(itemKeys[value].currentContext!,
//                   duration: Duration(seconds: 1),
//                   // duration for scrolling time
//                   alignment: .5,
//                   // 0 mean, scroll to the top, 0.5 mean, half
//                   curve: Curves.easeInOutCubic);
//             },
//           ),
//           Item(title: "Home", key: itemKeys[0]),
//           Item(title: "About", key: itemKeys[1]),
//           Item(title: "Services", key: itemKeys[2]),
//           Item(title: "Testimonials", key: itemKeys[3]),
//           Item(title: "Contact", key: itemKeys[4]),
//         ]);
//       },
//     ));
//   }
// }

// class Item extends StatelessWidget {
//   const Item({Key? key, required this.title}) : super(key: key);
//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 400,
//       width: double.infinity,
//       color: Colors.deepPurpleAccent,
//       child: Text("$title"),
//     );
//   }
// }

// class Menu extends StatefulWidget {
//   Menu({Key? key, required this.valueChanged}) : super(key: key);
//   ValueChanged<int> valueChanged;

//   @override
//   State<Menu> createState() => _MenuState();
// }

// class _MenuState extends State<Menu> {
//   int selectedIndex = 0;
//   int hoverIndex = 0;
//   List<String> menuItems = [
//     "Home",
//     "About",
//     "Services",
//     "Testimonials",
//     "Contact"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 70 * 2.5),
//       constraints: BoxConstraints(maxWidth: 1110),
//       height: 100,
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(10),
//           topRight: Radius.circular(10),
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: List.generate(
//           menuItems.length,
//           (index) => Container(
//             color: selectedIndex == index ? Colors.red : Colors.green,
//             width: 100,
//             height: 100,
//             child: InkWell(
//               child: Text("${menuItems[index]}"),
//               onTap: () {
//                 setState(() {
//                   selectedIndex = index;
//                   widget.valueChanged((index));
//                 });
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class Testing extends StatelessWidget {
  const Testing({super.key});

  @override
  Widget build(BuildContext context) {
    var key1 = GlobalKey();
    var key2 = GlobalKey();

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            key: key1,
            color: Colors.yellow,
            height: MediaQuery.of(context).size.height - kToolbarHeight,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Scrollable.ensureVisible(key2.currentContext!);
                },
                child: const Text("Scroll down"),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            key: key2,
            height: MediaQuery.of(context).size.height - kToolbarHeight,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Scrollable.ensureVisible(key1.currentContext!);
                },
                child: const Text("Scroll up"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
