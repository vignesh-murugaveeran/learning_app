import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:learning_app/common/widgets/glass_button.dart';
import 'package:learning_app/common/widgets/glass_container.dart';
import 'package:learning_app/common/widgets/glass_textfield.dart';
import 'package:learning_app/common/widgets/gradient_appBar.dart';
import 'package:learning_app/core/constants/app_gradients.dart';

///Glassmorphism appBar

GlobalKey<FormBuilderState> formKey = GlobalKey();

class UIPractice extends StatefulWidget {
  const UIPractice({super.key});

  @override
  State<UIPractice> createState() => _UIPracticeState();
}

class _UIPracticeState extends State<UIPractice> {
  final AppGradients _appGradients = AppGradients();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: _appGradients.primary),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: GradientAppbar(appBarTitle: 'GlassMorphism'),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GlassContainer(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Login Page',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey[100],
                            ),
                          ),
                          const SizedBox(height: 20),
                          FormBuilder(
                            key: formKey,
                            child: Column(
                              children: [
                                GlassTextfield(
                                  name: 'email',
                                  label: 'Email',
                                  hint: 'Enter your name',
                                  type: TextInputType.emailAddress,
                                ),
                                const SizedBox(height: 15),
                                GlassTextfield(
                                  name: 'password',
                                  label: 'Password',
                                  hint: 'Enter your password',
                                  type: TextInputType.visiblePassword,
                                ),
                                const SizedBox(height: 25),
                                SizedBox(
                                  width: double.infinity,
                                  child: GlassButton(buttonText: 'Login'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
