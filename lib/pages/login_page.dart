import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/components/my_button.dart';
import 'package:travel_app/components/my_textfield.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "App de Viajes",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            MyTextField(
                controller: emailController,
                hintText: "Correo",
                obscureText: false),
            const SizedBox(
              height: 10,
            ),

            MyTextField(
                controller: passwordController,
                hintText: "Contraseña",
                obscureText: true),
            const SizedBox(
              height: 10,
            ),

            MyButton(
              text: "Iniciar Sesión", 
              onTap: (){}),
            const SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "¿No estas registrado? ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary
                  ),   
                ),
                const SizedBox(width: 4),

                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Registrate Ahora",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),   
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
