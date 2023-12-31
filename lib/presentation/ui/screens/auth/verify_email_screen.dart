import 'package:crafty_bay/presentation/ui/screens/auth/verify_otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../widgets/app_logo.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 160,),
              const AppLogo(
                height: 80,
              ),
              const SizedBox(height: 24,),
              Text('Welcome Back',style: Theme.of(context).textTheme.titleLarge,),
              const SizedBox(height: 4,),
              Text('Please Enter your Email address',style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Email'
                ),
        
              ),
              const SizedBox(height: 24,),
              SizedBox(
                width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Get.to(const VerifyOTPScreen());
                  }, child: const Text('Next')))
            ],
          ),
        ),
      ),
    );
  }
}
