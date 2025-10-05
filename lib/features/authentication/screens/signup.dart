import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defautSpace),
          child: Column(
            children: [
              Text(
                "Sign Up",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: MySizes.spaceBtwSections),
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: "First Name",
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                        const SizedBox(width: MySizes.spaceBtwInputFields),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: "Last Name",
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: MySizes.spaceBtwInputFields),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: "Username",
                        prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),
                    const SizedBox(height: MySizes.spaceBtwInputFields),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(Iconsax.direct),
                      ),
                    ),
                    const SizedBox(height: MySizes.spaceBtwInputFields),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: "Phone Number",
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                    const SizedBox(height: MySizes.spaceBtwInputFields),
                    TextFormField(
                      obscureText: true,
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Iconsax.user_edit),
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(height: MySizes.spaceBtwItems,),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {}, 
                        child: const Text("Create Account")),
                    ),
                    const SizedBox(height: MySizes.spaceBtwItems,),
                    Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark?MyColors.darkGrey:MyColors.grey,
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
                      color: dark?MyColors.darkGrey:MyColors.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: MySizes.spaceBtwInputFields,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: MyColors.grey
                      ),
                      borderRadius: BorderRadius.circular(100),
                      
                    ),
                    child: IconButton(
                      onPressed: (){},
                        icon: const Image(
                          width: MySizes.iconMd,
                          height: MySizes.iconMd,
                          image: AssetImage(
                            MyImages.google
                            ),
                          ),
                      ),
                  ),
                  const SizedBox(width: MySizes.spaceBtwItems,),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: MyColors.grey
                      ),
                      borderRadius: BorderRadius.circular(100),
                      
                    ),
                    child: IconButton(
                      onPressed: (){},
                        icon: const Image(
                          width: MySizes.iconMd,
                          height: MySizes.iconMd,
                          image: AssetImage(
                            MyImages.facebook
                            ),
                          ),
                      ),
                  ),

                ],
              )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
