import 'package:elite_106/src/ui/screens/calendar/calendar_screen.dart';
import 'package:elite_106/src/ui/screens/settings/settings_screen.dart';
import 'package:elite_106/src/ui/screens/task_list/task_list_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedItem = 0;
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          setState(() {
            _selectedItem = index;
            print(_selectedItem);
          });
        },
        children: [
          TaskListScreen(),
          CalendarScreen(),
          SettingsScreen(),
        ],
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.event_available_sharp),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedItem,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          setState(
            () {
              _selectedItem = index;
              _pageController.animateToPage(_selectedItem,
                  duration: Duration(milliseconds: 200), curve: Curves.linear);
            },
          );
        },
      ),
    );
  }
}
// class MainScreen extends StatefulWidget {
//   @override
//   _MainScreenState createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {
//   int _selectedItem = 0;
//   PageController _pageController = PageController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         onPageChanged: (index) {
//           setState(() {
//             _selectedItem = index;
//             print(_selectedItem);
//           });
//         },
//         children: [
//           TaskListScreen(),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.white,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.event_available_sharp),
//             label: 'Tasks',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.calendar_today),
//             label: 'Calendar',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Settings',
//           ),
//         ],
//         currentIndex: _selectedItem,
//         selectedItemColor: Colors.amber[800],
//         onTap: (index) {
//           setState(
//             () {
//               _selectedItem = index;
//               _pageController.animateToPage(_selectedItem,
//                   duration: Duration(milliseconds: 200), curve: Curves.linear);
//             },
//           );
//         },
//       ),
//     );
//   }
// }
