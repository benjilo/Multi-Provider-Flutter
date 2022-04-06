import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutterapp/state/counter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multi Provider App (${context.watch<Count>().count})'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Push button: ${context.watch<Count>().count}'),
            Counter(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: Text('Open screen'))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: Key('decrement_floatingActionButtom'),
            onPressed: () => context.read<Count>().decrement(),
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 10.0),
          FloatingActionButton(
            key: Key('reset_floatingActionButtom'),
            onPressed: () => context.read<Count>().reset(),
            tooltip: 'Reset',
            child: Icon(Icons.exposure_zero),
          ),
          SizedBox(width: 10.0),
          FloatingActionButton(
            key: Key('increment_floatingActionButtom'),
            onPressed: () => context.read<Count>().increment(),
            tooltip: 'increment',
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<Count>().count}',
      key: Key('counterState'),
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
