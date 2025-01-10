import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const DashboardWidget() : const SigninpageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const DashboardWidget()
              : const SigninpageWidget(),
        ),
        FFRoute(
          name: 'InvestmentsTrack',
          path: '/investmentsTrack',
          builder: (context, params) => const InvestmentsTrackWidget(),
        ),
        FFRoute(
          name: 'BudgetPlan',
          path: '/budgetPlan',
          builder: (context, params) => const BudgetPlanWidget(),
        ),
        FFRoute(
          name: 'FinancialHealth',
          path: '/financialHealth',
          builder: (context, params) => const FinancialHealthWidget(),
        ),
        FFRoute(
          name: 'AccountType',
          path: '/accountType',
          builder: (context, params) => const AccountTypeWidget(),
        ),
        FFRoute(
          name: 'SavingsInsights',
          path: '/savingsInsights',
          builder: (context, params) => const SavingsInsightsWidget(),
        ),
        FFRoute(
          name: 'Homepagedup',
          path: '/homepagedup',
          builder: (context, params) => const HomepagedupWidget(),
        ),
        FFRoute(
          name: 'Notifications',
          path: '/notifications',
          builder: (context, params) => const NotificationsWidget(),
        ),
        FFRoute(
          name: 'transactionhistory',
          path: '/transactionhistory',
          builder: (context, params) => const TransactionhistoryWidget(),
        ),
        FFRoute(
          name: 'creditcards',
          path: '/creditcards',
          builder: (context, params) => const CreditcardsWidget(),
        ),
        FFRoute(
          name: 'ExpenseTrack',
          path: '/expenseTrack',
          builder: (context, params) => const ExpenseTrackWidget(),
        ),
        FFRoute(
          name: 'investments',
          path: '/investments',
          builder: (context, params) => const InvestmentsWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'CreateBudgetPlan',
          path: '/createBudgetPlan',
          builder: (context, params) => const CreateBudgetPlanWidget(),
        ),
        FFRoute(
          name: 'loan',
          path: '/loan',
          builder: (context, params) => const LoanWidget(),
        ),
        FFRoute(
          name: 'CreateExpenseTracking',
          path: '/createExpenseTracking',
          builder: (context, params) => const CreateExpenseTrackingWidget(),
        ),
        FFRoute(
          name: 'CreateInvestmentTracking',
          path: '/createInvestmentTracking',
          builder: (context, params) => const CreateInvestmentTrackingWidget(),
        ),
        FFRoute(
          name: 'CreateFinancialHealth',
          path: '/createFinancialHealth',
          builder: (context, params) => const CreateFinancialHealthWidget(),
        ),
        FFRoute(
          name: 'CreateAccount1',
          path: '/createAccount1',
          builder: (context, params) => const CreateAccount1Widget(),
        ),
        FFRoute(
          name: 'CreateCreditCard',
          path: '/createCreditCard',
          builder: (context, params) => const CreateCreditCardWidget(),
        ),
        FFRoute(
          name: 'CreateLoans',
          path: '/createLoans',
          builder: (context, params) => const CreateLoansWidget(),
        ),
        FFRoute(
          name: 'CreateInvestment',
          path: '/createInvestment',
          builder: (context, params) => const CreateInvestmentWidget(),
        ),
        FFRoute(
          name: 'CreateTransactions',
          path: '/createTransactions',
          builder: (context, params) => const CreateTransactionsWidget(),
        ),
        FFRoute(
          name: 'financeandnews',
          path: '/br',
          builder: (context, params) => const FinanceandnewsWidget(),
        ),
        FFRoute(
          name: 'CreateSavings',
          path: '/createSavings',
          builder: (context, params) => const CreateSavingsWidget(),
        ),
        FFRoute(
          name: 'stockmarketupdate',
          path: '/stockmarketupdate',
          builder: (context, params) => const StockmarketupdateWidget(),
        ),
        FFRoute(
          name: 'newsupdatestoday',
          path: '/newsupdatestoday',
          builder: (context, params) => const NewsupdatestodayWidget(),
        ),
        FFRoute(
          name: 'Dashboard',
          path: '/dashboard',
          builder: (context, params) => const DashboardWidget(),
        ),
        FFRoute(
          name: 'AboutMe',
          path: '/aboutMe',
          builder: (context, params) => const AboutMeWidget(),
        ),
        FFRoute(
          name: 'ExpenseTrackingStats',
          path: '/expenseTrackingStats',
          builder: (context, params) => const ExpenseTrackingStatsWidget(),
        ),
        FFRoute(
          name: 'AccountTypeCopy',
          path: '/accountTypeCopy',
          builder: (context, params) => const AccountTypeCopyWidget(),
        ),
        FFRoute(
          name: 'BankChat',
          path: '/bankChat',
          builder: (context, params) => const BankChatWidget(),
        ),
        FFRoute(
          name: 'PlanChat',
          path: '/PlanChat',
          builder: (context, params) => const PlanChatWidget(),
        ),
        FFRoute(
          name: 'LearnChat',
          path: '/learnChat',
          builder: (context, params) => const LearnChatWidget(),
        ),
        FFRoute(
          name: 'VoiceChat',
          path: '/voiceChat',
          builder: (context, params) => const VoiceChatWidget(),
        ),
        FFRoute(
          name: 'InvestmentTrackingStats',
          path: '/investmentTrackingStats',
          builder: (context, params) => const InvestmentTrackingStatsWidget(),
        ),
        FFRoute(
          name: 'BudgetPlanStats',
          path: '/budgetPlanStats',
          builder: (context, params) => const BudgetPlanStatsWidget(),
        ),
        FFRoute(
          name: 'SavingsInsightsStats',
          path: '/savingsInsightsStats',
          builder: (context, params) => const SavingsInsightsStatsWidget(),
        ),
        FFRoute(
          name: 'FinancialHealthStats',
          path: '/financialHealthStats',
          builder: (context, params) => const FinancialHealthStatsWidget(),
        ),
        FFRoute(
          name: 'Accountpe',
          path: '/accountpe',
          builder: (context, params) => const AccountpeWidget(),
        ),
        FFRoute(
          name: 'BiometricVerification',
          path: '/biometricVerification',
          builder: (context, params) => const BiometricVerificationWidget(),
        ),
        FFRoute(
          name: 'Signinpage',
          path: '/signinpage',
          builder: (context, params) => const SigninpageWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/signinpage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
