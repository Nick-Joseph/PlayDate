import 'package:doggy_tinder/router/router.dart';
import 'package:doggy_tinder/screens/homepage/ui/homepage_screen.dart';
import 'package:doggy_tinder/screens/notificationpage/notification_screen.dart';
import 'package:doggy_tinder/screens/settingpage/settingpage_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = SimpleBlocObserver();
  runApp(PlayDates(FirebaseUserRepo()));
}

class SimpleBlocObserver {}

class PlayDates extends StatelessWidget {
  const PlayDates({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthenticationRepository(),
      child: BlocProvider(
        create: (context) => AuthenticationBloc(
          authenticationRepository:
              Repository.of<AuthenticationRepository>(context),
        ),
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: gorouter,
        ),
      ),
    );
  }
}
