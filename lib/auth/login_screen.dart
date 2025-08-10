import 'package:flutter/material.dart';
import 'signup_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const TextField(
               decoration: InputDecoration(labelText: 'Email'),
             ),
             const SizedBox(height: 10),
             const TextField(
               obscureText: true,
               decoration: InputDecoration(labelText: 'Password'),
             ),
             const SizedBox(height: 20),
             ElevatedButton(
               onPressed: () {


                 // TODO: Add login logic




               },
               child: const Text('Login'),
             ),
             const SizedBox(height: 20),
             TextButton(
               onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (_) => const SignupScreen()),
                 );
               },
               child: const Text("Don't have an account? Sign up"),
             )
           ],
         ),
       ),
     );







    

  }
}




// // class LoginScreen extends StatelessWidget {
// //   const LoginScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: const Text('Login')),
// //       body: Padding(
// //         padding: const EdgeInsets.all(20),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             const TextField(
// //               decoration: InputDecoration(labelText: 'Email'),
// //             ),
// //             const SizedBox(height: 10),
// //             const TextField(
// //               obscureText: true,
// //               decoration: InputDecoration(labelText: 'Password'),
// //             ),
// //             const SizedBox(height: 20),
// //             ElevatedButton(
// //               onPressed: () {


// //                 // TODO: Add login logic




// //               },
// //               child: const Text('Login'),
// //             ),
// //             const SizedBox(height: 20),
// //             TextButton(
// //               onPressed: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(builder: (_) => const SignupScreen()),
// //                 );
// //               },
// //               child: const Text("Don't have an account? Sign up"),
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
