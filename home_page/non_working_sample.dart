import 'package:flutter/material.dart';
import 'package:flutter_app/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NonWorkingSample extends StatefulWidget {
  @override
  _NonWorkingSampleState createState() => _NonWorkingSampleState();
}

class _NonWorkingSampleState extends State<NonWorkingSample> {
  Repository _repo;

  @override
  void initState() {
    _repo = context.read<Repository>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => Repository(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(),
            body: SafeArea(
              child: Center(
                child: Text(_repo.getNonWorkingSample()),
              ),
            ),
          );
        },
      ),
    );
  }
}
