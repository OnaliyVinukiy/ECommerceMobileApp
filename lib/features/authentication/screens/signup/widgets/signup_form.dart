import 'package:flutter/material.dart';
import 'package:mobile_app/utils/constants/colors.dart';
import 'package:mobile_app/utils/constants/sizes.dart';
import 'package:mobile_app/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobile_app/utils/helpers/helper_functions.dart';
import 'package:mobile_app/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
    
  });

  
  @override
  Widget build(BuildContext context) {
    
    return Form(child: Column(
      children:[
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.firstName,
                  prefixIcon: Icon(Iconsax.user)),
              ),
            ), 
            const SizedBox(width: TSizes.spaceBtwInputFields),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.lastName,
                  prefixIcon: Icon(Iconsax.user)),
              ),
            ),   
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
    
        ///username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.username,
            prefixIcon: Icon(Iconsax.user_edit)),
        ),
      const SizedBox(height: TSizes.spaceBtwInputFields),
      ///email
      TextFormField(
          decoration: const InputDecoration(
            labelText: TTexts.email,
            prefixIcon: Icon(Iconsax.direct)),
        ),
    
      const SizedBox(height: TSizes.spaceBtwInputFields),
    
      ///phone number
      TextFormField(
          decoration: const InputDecoration(
            labelText: TTexts.phoneNo,
            prefixIcon: Icon(Iconsax.call)),
        ),
    
    
      const SizedBox(height: TSizes.spaceBtwInputFields),
    
      ///password
      TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: TTexts.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
        ),
      ),
    
      const SizedBox(height: TSizes.spaceBtwSections),
    
    
      ///Terms & Conditions Checkbox
      const TTermsAndConditionCheckbox(),
      const SizedBox (height: TSizes.spaceBtwSections),
      ///Sign Up Button
      SizedBox(width:double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(TTexts.createAccount)))
      ],
    
    ),);
  }
}

