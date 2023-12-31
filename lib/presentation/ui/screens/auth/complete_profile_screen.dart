import 'package:crafty_bay/presentation/ui/screens/main_bottom_nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../widgets/app_logo.dart';

class CompleteProfilelScreen extends StatelessWidget {
  const CompleteProfilelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 48,),
              const AppLogo(
                height: 80,
              ),
              const SizedBox(height: 24,),
              Text('Complete Profile',style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontSize: 28,
              ),),
              const SizedBox(height: 4,),
              Text('Get started with us with your details',style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'First Name'
                ),
                textInputAction: TextInputAction.next
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Last Name'
                ),
                  textInputAction: TextInputAction.next

              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Mobile'
                ),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,

              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'City'
                ),
                  textInputAction: TextInputAction.next

              ),
              const SizedBox(height: 16,),
              TextFormField(
                maxLines: 4,
                decoration: const InputDecoration(
                    hintText: 'Shipping Address'
                ),
                  textInputAction: TextInputAction.done

              ),

              const SizedBox(height: 24,),
              SizedBox(
                width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                          Get.offAll(const MainBottomNabScreen());
                  }, child: const Text('Complete')))
            ],
          ),
        ),
      ),
    );
  }
}
