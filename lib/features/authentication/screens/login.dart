import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/features/authentication/screens/signup.dart';
import 'package:e_commerce_app/navbar.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyle.appBarPadding,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(height: 150, image: AssetImage(MyImages.appLogo)),
                  Text(
                    "Welcome Back!",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: MySizes.sm),
                  Text(
                    "Enter your creditonals",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: MySizes.spaceBtwSections,
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: "Email",
                        ),
                      ),
                      const SizedBox(height: MySizes.spaceBtwInputFields),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: "Password",
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: MySizes.spaceBtwInputFields),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text("Remeber Me"),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text("Forgot Fassowrd"),
                          ),
                        ],
                      ),
                      const SizedBox(height: MySizes.spaceBtwSections),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () => Get.to(() => Navbar()),
                          child: const Text("Sign-in"),
                        ),
                      ),
                      SizedBox(height: MySizes.spaceBtwInputFields),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () => Get.to(() => const SignUpScreen()),
                          child: const Text("Create Account"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark ? MyColors.darkGrey : MyColors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(
                    "Or Sign-In With",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                    child: Divider(
                      color: dark ? MyColors.darkGrey : MyColors.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: MySizes.spaceBtwInputFields),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: MyColors.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: MySizes.iconMd,
                        height: MySizes.iconMd,
                        image: AssetImage(MyImages.google),
                      ),
                    ),
                  ),
                  const SizedBox(width: MySizes.spaceBtwItems),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: MyColors.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: MySizes.iconMd,
                        height: MySizes.iconMd,
                        image: AssetImage(MyImages.facebook),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  googleSignIn() {
    GoogleAuthProvider.credential(
      accessToken: 
    );
    FirebaseAuth.instance.signInWithCredential(credential);
  }
}
