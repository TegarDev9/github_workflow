import 'package:flutter/material.dart';
import 'package:flutter_app/non_working_sample.dart';
import 'package:flutter_app/repository.dart';
import 'package:flutter_app/working_sample.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Samples'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => RepositoryProvider(
                    create: (_) => Repository(),
                    child: WorkingSample(),
                  ),
                ),
              ),
              child: const Text('Working Sample'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => NonWorkingSample()),
              ),
              child: const Text('Non Working Sample'),
            ),
          ],
        ),
      ),
    );
  }
}
