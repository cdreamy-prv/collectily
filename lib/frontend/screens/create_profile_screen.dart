import 'package:collectily/frontend/helper/theme/app_colors.dart';
import 'package:collectily/frontend/screens/home_sceen.dart';
import 'package:collectily/frontend/widgets/custome_button.dart';
import 'package:collectily/frontend/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreateProfilePage extends StatelessWidget {
  const CreateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final ValueNotifier<bool> hasError = ValueNotifier<bool>(false);
    return Scaffold(
      body: 
      Stack(
        children: [
             Positioned.fill(
            child: SvgPicture.asset(
              'assets/images/Background.svg',
              fit: BoxFit.cover,
              placeholderBuilder: (context) => Container(
                color: Colors.grey[200],
                child: const Center(child: CircularProgressIndicator()),
              ),
            ),
          ),
         Padding(padding: const EdgeInsets.only(top: 50, left: 20),
            child: BackButton(
              color: AppColors.surface,
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
            ),
            
           Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          
            const SizedBox(height: 20),
        CircleAvatar(
          radius: 70, 
          backgroundColor: AppColors.surface,
          child: Icon(Icons.add_a_photo, size: 60, color: Colors.grey[700]),
        ),
        SizedBox(height: 20),
        ValueListenableBuilder<bool>(
          valueListenable: hasError,
          builder: (context, showError, _) {
            return CustomTextField(
              labelText: 'Name',
              hintText: 'Enter your name',
              prefixIcon: Icons.person,
              controller: nameController,
              hasError: showError,
              errorText: 'Please enter your name',
              errorStyle: TextStyle(
                fontSize: 16, 
                fontWeight: FontWeight.bold,
                color: Colors.red.shade700, 
                letterSpacing: 0.5,
              ),
              onChanged: (value) {
                if (hasError.value && value.isNotEmpty) {
                  hasError.value = false;
                }
              },
            );
          }
        ),
        SizedBox(height: 20),
             CustomLoginButton(
                text: 'Start now',
                onPressed: () {
                  if (nameController.text.isEmpty) {
                    // Fehler anzeigen, wenn das Feld leer ist
                    hasError.value = true;
                  } else {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(name: nameController.text),
                      ),
                    );
                  }
                },
                icon: Icons.login,
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                borderRadius: 8.0,
              ),
          ],
      
      ),
        ],
      )
     
    );
  }
}
