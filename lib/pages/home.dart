import 'package:flutter/material.dart';
import 'package:running_app/widgets/my_google_map_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise Corner'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome! What would you like to do today?',
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: Container(),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const MyGoogleMapWidget()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(16.0),
                ),
                child: const Icon(
                  Icons.directions_run_rounded,
                  color: Colors.white,
                  size: 32.0,
                ),
              ),
              Text(
                'Endurance Run',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Expanded(
                child: Container(),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(16.0),
                ),
                child: const Icon(
                  Icons.timer_rounded,
                  color: Colors.white,
                  size: 32.0,
                ),
              ),
              Text(
                'Interval Run',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
