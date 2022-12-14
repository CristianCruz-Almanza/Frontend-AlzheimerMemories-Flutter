import 'package:flutter/material.dart';
import 'package:frontent_alzheimermemories_flutter/providers/login_form_provider.dart';
import 'package:provider/provider.dart';

import 'package:frontent_alzheimermemories_flutter/ui/inputs/input_decorations.dart';
import 'package:frontent_alzheimermemories_flutter/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 250),
              CardContainer(
                  child: Column(
                children: [
                  const SizedBox(height: 10),
                  Text('Login', style: Theme.of(context).textTheme.headline4),
                  const SizedBox(height: 30),
                  ChangeNotifierProvider(
                    create: (_) => LoginFormProvider(),
                    child: _LoginForm(),
                  )
                ],
              )),
              const SizedBox(height: 50),
              const Text(
                'Crear una nueva cuenta',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);

    return Form(
      key: loginForm.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
                hintText: 'blon@gmail.com',
                labelText: 'Correo electr??nico',
                prefixIcon: Icons.alternate_email_rounded),
            onChanged: (value) => loginForm.email = value,
            validator: (value) {
              String pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regExp = RegExp(pattern);

              return regExp.hasMatch(value ?? '')
                  ? null
                  : 'El valor ingresado no luce como un correo';
            },
          ),
          const SizedBox(height: 30),
          TextFormField(
            autocorrect: false,
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
                hintText: '*****',
                labelText: 'Contrase??a',
                prefixIcon: Icons.lock_outline),
            onChanged: (value) => loginForm.password = value,
            validator: (value) {
              return (value != null && value.length >= 6)
                  ? null
                  : 'La contrase??a debe de ser de 6 caracteres';
            },
          ),
          const SizedBox(height: 30),
          // MaterialButton(
          //   shape:
          //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          //   disabledColor: Colors.grey,
          //   elevation: 0,
          //   color: Colors.deepPurple,
          //   onPressed: loginForm.isLoading
          //       ? null
          //       : () async {
          //           FocusScope.of(context).unfocus();

          //           if (!loginForm.isValidForm()) return;

          //           loginForm.isLoading = true;

          //           await Future.delayed(const Duration(seconds: 2));

          //           loginForm.isLoading = false;

          //           // ignore: use_build_context_synchronously
          //           Navigator.pushReplacementNamed(context, 'home');
          //         },
          //   child: Container(
          //     padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
          //     child: Text(
          //       loginForm.isLoading ? 'Espere' : 'Ingresar',
          //       style: const TextStyle(color: Colors.white),
          //     ),
          //   ),
          // ),
          Container(
            margin: const EdgeInsets.all(20),
            width: 250,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.deepPurple,
                ],
                begin: FractionalOffset.centerLeft,
                end: FractionalOffset.centerRight,
              ),
            ),
            child: TextButton(
              onPressed: loginForm.isLoading
                  ? null
                  : () async {
                      FocusScope.of(context).unfocus();

                      if (!loginForm.isValidForm()) return;

                      loginForm.isLoading = true;

                      await Future.delayed(const Duration(seconds: 2));

                      loginForm.isLoading = false;

                      // ignore: use_build_context_synchronously
                      Navigator.pushReplacementNamed(context, 'home');
                    },
              child: Text(
                loginForm.isLoading ? 'Espere' : 'Ingresar',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            //margin: const EdgeInsets.all(20),
            width: 250,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [
                  Colors.deepPurple,
                  Colors.blue,
                ],
                begin: FractionalOffset.centerLeft,
                end: FractionalOffset.centerRight,
              ),
            ),
            child: TextButton(
              child: const Text(
                'Ingresar con google',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
