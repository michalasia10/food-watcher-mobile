import 'package:diet_maker/core/app/router.dart';
import 'package:diet_maker/features/auth/presentation/bloc/login_cubit.dart';
import 'package:diet_maker/l10n/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(widget.title)),
    body: Container(
      color: Theme.of(context).backgroundColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              context.l10n.appTitle,
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: context.l10n.login,
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
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

  Future<void> login(BuildContext context) => LoginCubit.fromContext(context)
      .login()
      .whenComplete(() => Navigator.pushNamed(context, Routes.kHomePage));
}
