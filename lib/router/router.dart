import 'package:PlayDate/screens/homepage/ui/homepage_screen.dart';
import 'package:PlayDate/screens/notificationpage/notification_screen.dart';
import 'package:PlayDate/screens/settingpage/settingpage_screen.dart';
import 'package:go_router/go_router.dart';

final gorouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(
        title: 'PlayDates!',
      ),
      routes: [
        GoRoute(
          path: 'settings',
          builder: (context, state) => const SettingsScreen(
            title: 'Settings',
          ),
        ),
        GoRoute(
          name: 'notifications',
          path: 'notifications',
          builder: (context, state) => const NotificationScreen(
            title: 'Notfications',
          ),
        ),
      ],
    ),
  ],
);
