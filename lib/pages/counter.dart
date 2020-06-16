import 'package:counter_bloc/blocs/counter_boc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counterBloc.counter.toString(),
                style: TextStyle(fontSize: 62),
              ),
              IncrementButton(),
              DecrementButton(),
            ],
          )
        ),
      ),
    );
  }
}

class IncrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return FlatButton.icon(
      icon: Icon(Icons.add),
      label: Text("Increment"),
      onPressed: () => counterBloc.increment(),
    );
  }
}

class DecrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    
    return FlatButton.icon(
      icon: Icon(Icons.remove),
      label: Text("Remove"),
      onPressed: () => counterBloc.decrement(),
    );
  }
}