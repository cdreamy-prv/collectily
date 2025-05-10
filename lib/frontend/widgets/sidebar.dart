import 'package:collectily/frontend/helper/theme/app_colors.dart';
import 'package:collectily/frontend/screens/create_profile_screen.dart';
import 'package:flutter/material.dart';

class CustomeSideBar extends StatelessWidget {
  final String name;
  final List<Map<String, dynamic>> items = const [
    {'title': 'Home', 'icon': Icons.home},
    {'title': 'Favorites', 'icon': Icons.star_border_rounded},
    {'title': 'Trash', 'icon': Icons.delete},
    {'title': 'Statistics', 'icon': Icons.pie_chart},
    {'title': 'Wish List', 'icon': Icons.list_alt_rounded},
  ];

  final List<Map<String, dynamic>> menuButtonIcons = const [
    {'title': 'Settings', 'icon': Icons.settings},
    {'title': 'Help', 'icon': Icons.help_outline_rounded},
    {'title': 'About', 'icon': Icons.info_outline_rounded},
    {'title': 'Synch', 'icon': Icons.sync},
  ];
 
  const CustomeSideBar({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                      IconButton(onPressed: () {
                        Navigator.pop(context);
                      }, icon: Icon(Icons.close, color: AppColors.surface)),
                  ],
                ), 
              InkWell(
                onTap: () {
                  // Handle profile tap here
                Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CreateProfilePage()
                      ),
                    );
                },
                child:  Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Center horizontally
                    children: [
                    const CircleAvatar(
                      radius: 15,
                      backgroundColor: AppColors.surface,
                      backgroundImage: AssetImage('assets/images/Profile.jpg'),
                    ),
                    const SizedBox(width: 10),
                    Text(name, style: const TextStyle(fontSize: 15, color: AppColors.surface)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
               
                Divider(
                  color: AppColors.surface,
                  thickness: 1.5,
                  height: 20,
                )
              ],
              ),
            ),
            ...items.map((item) {
              return ListTile(
                 dense: true, // Makes the tile more compact
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
                leading: Icon(item['icon']),
                title: Text(item['title']),
                onTap: () {
                  // Handle navigation or action here
                  Navigator.pop(context); // Close the drawer
                },
              );
            }).toList(),

           SizedBox(height: MediaQuery.of(context).size.height * 0.08), // Add space between sections
            ...menuButtonIcons.map((item) {
                return ListTile(
                dense: true, // Makes the tile more compact
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
                leading: Icon(item['icon']),
                title: Text(item['title']),
                onTap: () {
                  // Handle navigation or action here
                  Navigator.pop(context); // Close the drawer
                },
                );
            }).toList(),
          ],
        ),
      );
  }
}