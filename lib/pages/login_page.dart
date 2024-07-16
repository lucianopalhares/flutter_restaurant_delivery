import 'package:flutter/material.dart';
import 'package:testando_food/components/my_button.dart';
import 'package:testando_food/components/my_textfield.dart';
import 'package:testando_food/components/my_theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: myTheme.colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Icon(
            Icons.food_bank_outlined,
            size: 70,
            color: myTheme.colorScheme.inversePrimary,
          ),

          Text(
            'Restaurante Delivery SA', 
            style: TextStyle(
              fontSize: 16,
              color: myTheme.colorScheme.inversePrimary
            ),
          ),

          SizedBox(
            height: 25,
          ),

          MyTextfield(
            controller: emailController, 
            obscureText: false, 
            hintText: 'Email'
          ),

          const SizedBox(
            height: 25,
          ),

          MyTextfield(
            controller: passwordController, 
            obscureText: false, 
            hintText: 'Senha'
          ),

          const SizedBox(
            height: 10,
          ),

          const MyButton(text: 'Entrar'),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Não tem uma conta?',
                style: TextStyle(
                  color: myTheme.colorScheme.inversePrimary
                ),
              ),
              GestureDetector(
                onTap: () {
                  
                },
                child: Text(
                  'Cria uma conta',
                  style: TextStyle(
                    color: myTheme.colorScheme.primary, 
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          )
            
        ],
      ),
    );
  }
}