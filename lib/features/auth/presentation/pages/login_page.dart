import 'package:diet_maker/core/app/router.dart';
import 'package:diet_maker/features/auth/presentation/bloc/login_cubit.dart';
import 'package:diet_maker/l10n/l10n.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Container(
          color: Theme.of(context).colorScheme.background,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  context.l10n.appTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: context.l10n.login,
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: context.l10n.password,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () => login(context),
                    child: Text(context.l10n.signInAction),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Future<void> login(BuildContext context) async {
    final loginCubit = LoginCubit.fromContext(context);
    final username = _usernameController.text;
    final password = _passwordController.text;
    await loginCubit
        .login(username, password)
        .whenComplete(() => {Navigator.pushNamed(context, Routes.kHomePage)});
  }
}
