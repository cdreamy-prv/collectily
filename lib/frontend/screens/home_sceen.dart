import 'package:collectily/frontend/widgets/add_item_dialog.dart';
import 'package:collectily/frontend/widgets/category_item.dart';
import 'package:collectily/frontend/widgets/custom_text_field.dart';
import 'package:collectily/frontend/widgets/sidebar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String name;
  final List<Map<String, dynamic>> itmes = const [
    {'title': 'Home', 'description': '2 Itmes', 'icon': Icons.home},
    {'title': 'Favorites', 'description': '3 Itmes', 'icon': Icons.star_border_rounded},
    {'title': 'Trash', 'description': '8 Itmes', 'icon': Icons.delete},
    {'title': 'Statistics', 'description': '22 Itmes', 'icon': Icons.pie_chart},
    {'title': 'Wish List', 'description': '6 Itmes', 'icon': Icons.list_alt_rounded},
    {'title': 'Settings', 'description': '2 Itmes', 'icon': Icons.settings},
    {'title': 'Help', 'description': '3 Itmes', 'icon': Icons.help_outline_rounded},
    {'title': 'About', 'description': '8 Itmes', 'icon': Icons.info_outline_rounded},

  ];
  const HomeScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: 
      Padding(padding: const EdgeInsets.only(bottom: 20),
      child: 
      FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          // Handle floating action button tap here
          showDialog(
            context: context,
            builder: (context) {
              return AddItemDialog(
                onAddItem: () {
                  
                },
              );
            },
          );
        },
        child: const Icon(Icons.add),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Hello $name 👋'),
        centerTitle: true,
         leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Row(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width  * 0.8,
            height: 40,
      
            child: CustomTextField(
              labelText: 'Search',
              hintText: 'Search for something',
              suffixIcon: Icons.search,
              controller: TextEditingController(),
              hasError: false,
              errorText: '',
              errorStyle: const TextStyle(
                fontSize: 16, 
                color: Colors.red,
              ),
              onChanged: (value) {} // Add your search logic here
            ),
          ),
          const SizedBox(width: 10),
          
           IconButton(
              icon: const Icon(Icons.filter_list_rounded),
              onPressed: () {
                // Handle filter button tap here
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Filter Options'),
                      content: const Text('Filter options will be here.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
        
          ],),
          const SizedBox(height: 20),
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1.5,
            ),
            itemCount: itmes.length,
            itemBuilder: (context, index) {
              return ListItem(
                title: itmes[index]['title'], 
                description: itmes[index]['description'], 
                icon: itmes[index]['icon'], 
                onTap: () {
                
                  
                }
              );
            },
          ),

        ),
          
        ],
      ),
      drawer: CustomeSideBar(name: name)
    );
  }
}