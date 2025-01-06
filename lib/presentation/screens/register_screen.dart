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
              const SizedBox(height: 25),
              _RegisterForm(),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class _RegisterForm extends StatelessWidget {
  _RegisterForm();

  final formKey = GlobalKey<FormState>();
  String username = '';
  String email = '';
  String password = '';
  String confirmPassword = '';

  @override
  Widget build(BuildContext context) {

    return Form(
      key: formKey,
      child: Column(
      children: [
          CustomTextFormField(
            label: 'Username', 
            hintText: 'Enter Your Username', 
            onChanged: (value) => username = value,
            validator: (value) {
              if(value == null || value.trim().isEmpty) return 'You must write your username';
              if(value.trim().length < 3) return 'Your name must be a minimum of 3 characters';
              return null;
            },
          ),
          const SizedBox(height: 15),
          CustomTextFormField(
            label: 'Email', 
            hintText: 'Enter Your Email',
            onChanged: (value) => email = value,
            validator: (value) {
              if(value == null || value.trim().isEmpty) return 'You must write your username';

              final emailRegExp = RegExp(
                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
              );
              if(!emailRegExp.hasMatch(value)) return 'Your email is not in the correct format';
              return null;
            },
          ),
          const SizedBox(height: 15),
          CustomTextFormField(
            label: 'Password', 
            hintText: 'Enter Your Username', 
            isObscure: true,
            onChanged: (value) => password = value,
            validator: (value) {
              if(value == null || value.trim().isEmpty) return 'You must write your username';
              if(value.trim().length < 8) return 'Your password must be a minimum of 8 characters';
              return null;
            },
          ),
          const SizedBox(height: 15),
          CustomTextFormField(
            label: 'Confirm Password', 
            hintText: 'Enter Your Username', 
            isObscure: true,
            onChanged: (value) => confirmPassword = value,
            validator: (value) {
              if(value == null || value.trim().isEmpty) return 'You must write your username';
              if(value.trim().length < 8) return 'Your password must be a minimum of 8 characters';
              if(value != password) return 'Your passwords must be the same';
              return null;
            },
          ),

          const SizedBox(height: 15),

          FilledButton.tonalIcon(
            onPressed: (){
              final isValid = formKey.currentState!.validate();

              if(!isValid) return;
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