import 'package:PlayDate/widgets/custom_B_Nav.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: Text(widget.title),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () => context.goNamed('notifications'),
                icon: const Icon(Icons.notifications),
              ),
              IconButton(
                onPressed: () => context.goNamed('settings'),
                icon: const Icon(Icons.settings),
              ),
            ],
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'HomeScreen',
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNav(),
    );
  }
}
