import 'package:flutter/material.dart';
import 'package:intro_flutter_bloc/presentation/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Screen'),
      ),
      body: const _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const FlutterLogo(size: 100),
              _RegisterForm(),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}

class _RegisterForm extends StatelessWidget {
  _RegisterForm();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Form(
      key: formKey,
      child: Column(
      children: [
          CustomTextFormField(label: 'Username', hintText: 'Enter Your Username',),
          const SizedBox(height: 15),
          CustomTextFormField(label: 'Email', hintText: 'Enter Your Email',),
          const SizedBox(height: 15),
          CustomTextFormField(label: 'Password', hintText: 'Enter Your Username', isObscure: true,),
          const SizedBox(height: 15),
          CustomTextFormField(label: 'Confirm Password', hintText: 'Enter Your Username', isObscure: true,),

          const SizedBox(height: 15),

          FilledButton.tonalIcon(
            onPressed: (){

            },
            icon: const Icon(Icons.save_rounded), 
            label: const Text('Save User')
          ),
          const SizedBox(height: 20,)
        ]
      )
    );
  }
}