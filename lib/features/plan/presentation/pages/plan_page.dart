import 'package:diet_maker/core/app/router.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/core/utils/date_utils.dart';
import 'package:diet_maker/features/common/presentation/components/failure_view.dart';
import 'package:diet_maker/features/common/presentation/components/progress_view.dart';
import 'package:diet_maker/features/plan/presentation/bloc/plan_bloc.dart';
import 'package:diet_maker/features/plan/presentation/components/plan_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlanPage extends StatefulWidget {
  PlanPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _PlanPageState createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  @override
  Widget build(BuildContext context) => BlocProvider(
      create: (BuildContext context) =>
          PlanBloc.fromContext(context)..loadPlan(),
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(context),
      ));

  AppBar _buildAppBar() => AppBar(title: Text(widget.title));

  Widget _buildBody(BuildContext context) => BlocBuilder<PlanBloc, PlanState>(
        builder: (BuildContext context, PlanState state) => state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const ProgressView(),
          plan: (List<String> plan) => _buildList(context, plan),
          failed: (Failure failure) => Center(
            child: FailureView(failure: failure),
          ),
        ),
      );

  ListView _buildList(BuildContext context, List<String> plan) =>
      ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: plan.length,
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 10),
          itemBuilder: (context, index) => GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, Routes.kPlanDetailsPage),
                child: planTile(context, getCurrentDate(1650412800), plan),
              ));
}
