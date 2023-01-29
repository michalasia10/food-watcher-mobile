import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/l10n/l10n.dart';
import 'package:flutter/material.dart';

class FailureView extends StatelessWidget {
  const FailureView({
    Key? key,
    required this.failure,
  }) : super(key: key);

  final Failure failure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            context.l10n.somethingWentWrong,
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 12),
          Text(
            failure.getMessage(),
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
