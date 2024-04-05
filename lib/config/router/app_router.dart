import 'package:go_router/go_router.dart';
import 'package:flutter_application_1/presentation/screens/screens.dart';


final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    // Public routes
    GoRoute(
      path: '/',
      builder: (context, state) => OnBoardingScreen(),
    ),

    GoRoute(
      path: '/signin',
      builder: (context, state) => const SignInScreen(),
    ),

    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignUpScreen(),
    ),

    GoRoute(
      path: '/forgot-password',
      builder: (context, state) => const ForgotPasswordScreen(),
    ),

    GoRoute(
      path: '/reset-password',
      builder: (context, state) => const ResetPasswordScreen(),
    ),

    // Private routes
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/edit-profile',
      builder: (context, state) => const EditProfileScreen(),
    ),

  ]
);