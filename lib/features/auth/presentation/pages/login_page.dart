import 'package:diet_maker/core/app/router.dart';
import 'package:diet_maker/features/auth/presentation/bloc/login_cubit.dart';
import 'package:diet_maker/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/error/failures.dart';
import '../../../common/presentation/components/failure_view.dart';
import '../../../common/presentation/components/progress_view.dart';

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
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return LoginCubit.fromContext(context);
      },
      child: _buildBody(context),
    );
  }

  Widget _buildBody(
    BuildContext context,
  ) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (BuildContext context, LoginState state) {
        return state.when(
          initial: () => _buildScaffold(context),
          loading: () => const ProgressView(),
          success: (String token) {
            Navigator.pushNamed(context, Routes.kHomePage);
            return SizedBox.shrink();
          },
          failed: (Failure failure) =>
              _buildScaffold(context, failure: failure),
        );
      },
    );
  }

  Widget _buildScaffold(BuildContext context, {Failure? failure}) => Scaffold(
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
                    onPressed: () => context.read<LoginCubit>().login(
                          _usernameController.text,
                          _passwordController.text,
                        ),
                    child: Text(context.l10n.signInAction),
                  ),
                ),
                if (failure != null) FailureView(failure: failure),
              ],
            ),
          ),
        ),
      );
}
