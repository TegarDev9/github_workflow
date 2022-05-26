import 'package:flutter/material.dart';
import 'package:flutter_app/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkingSample extends StatefulWidget {
  @override
  _WorkingSampleState createState() => _WorkingSampleState();
}

class _WorkingSampleState extends State<WorkingSample> {
  Repository _repo;

  @override
  void initState() {
    _repo = context.read<Repository>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Text(_repo.getWorkingSample()),
        ),
      ),
    );
  }
}
