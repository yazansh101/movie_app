


extension StringEx on String {
  // Widget Function(BuildContext context) get getRoute {
  //   switch (this) {
  //     case Routes.userNotificationsPage:
  //       return (c) => BlocProvider<NotificationsBloc>(
  //           create: (c) =>
  //               di.instance<NotificationsBloc>()..add(GetNotificationsEvent()),
  //           child: const UserNotificationPage());
  //     case Routes.searchPage:
  //       return (c) => BlocProvider<SearchBloc>(
  //             create: (context) => di.instance<SearchBloc>(),
  //             child: const SearchPage(),
  //           );
  //     case Routes.otherCustomerProfile:
  //       return (context) => BlocProvider<OtherCustomerProfileBloc>(
  //             create: (c) => di.instance<OtherCustomerProfileBloc>(),
  //             child: ViewUserProfileWidget(
  //               toUserID: (ModalRoute.of(context)?.settings.arguments
  //                   as Map)[ViewUserProfileWidget.toUserId],
  //             ),
  //           );
  //     case Routes.friendsPage:
  //       return (context) => BlocProvider<FriendsBloc>(
  //             create: (context) => di.instance<FriendsBloc>(),
  //             child: const FriendsPage(),
  //           );
  //     case Routes.showBusinessProfile:
  //       return (c) => BlocProvider<BusinessAnotherProfileBloc>(
  //             create: (c) => di.instance<BusinessAnotherProfileBloc>()
  //               ..add(BusinessProfileInitialEvent(c)),
  //             child: const BusinessProfilePage(),
  //           );
  //     case Routes.customerRegister:
  //       return (c) => MultiBlocProvider(
  //             providers: [
  //               BlocProvider(
  //                   create: (context) => di.instance<CreateCustomerBloc>()),
  //               BlocProvider(
  //                 create: (context) => di.instance<OtpBloc>(),
  //               ),
  //             ],
  //             child: const CustomerRegisterMainPage(),
  //           );
  //     case Routes.lastStepInCheckIn:
  //       return (c) => BlocProvider(
  //             create: (c) => di.instance<CheckInBloc>(),
  //             child: CheckInLastStep(),
  //           );
  //     case Routes.activityInfo:
  //       return (c) => const ActionInfoPage();
  //       case Routes.leaderBoard:
  //       return (c) => BlocProvider(
  //          create: (c) => di.instance<UserHomePageBloc>()..add(GetLeaderBoardEvent()),
  //         child: const LeaderBoardPage());
  //     case Routes.rewardDetails:
  //       return (c) => const RewardInfoPage();
  //     case Routes.businessInfoPage:
  //       return (c) => const BusinessInfoPage();
  //     case Routes.loyaltyTracker:
  //       return (c) => const LoyaltyTracker();
  //     case Routes.dealInfo:
  //       return (c) => const DealInfoPage();
  //     case Routes.userHomePage:
  //       return (c) => MultiBlocProvider(
  //             providers: [
  //               BlocProvider(
  //                 create: (c) => di.instance<UserHomePageBloc>()
  //                   ..add(UserHomePageInitialEvent()),
  //               ),
  //             ],
  //             child: const UserHomePage(),
  //           );
  //     case Routes.shop:
  //       return (c) => BlocProvider(
  //             create: (c) =>
  //                 di.instance<ShopBloc>()..add(const ShopInitialEvent()),
  //             child: const ShopPage(),
  //           );
  //     case Routes.myProfile:
  //       final userId = di.instance<AppManagerBloc>().getCurrentUser?.id ?? "";
  //       return (c) => BlocProvider<MyProfileBloc>(
  //             create: (c) => di.instance<MyProfileBloc>()
  //               ..add(GetRewardsMilestoneEvent(userId))
  //               ..add(const GetStoriesEvent()),
  //             child: const MyProfilePage(),
  //           );
  //     case Routes.map:
  //       return (c) => const GetLocation();
  //     case Routes.categoryPage:
  //       return (c) => const CategoryPage();
  //     case Routes.storyShow:
  //       return (c) => MultiBlocProvider(
  //             providers: [
  //               BlocProvider<StoryBloc>(
  //                 create: (context) => di.instance<StoryBloc>()
  //                   ..add(InitialEvent(context: context)),
  //               ),
  //               BlocProvider<UserHomePageBloc>(
  //                 create: (context) => di.instance<UserHomePageBloc>(),
  //               ),
  //             ],
  //             child: const StoryPage(),
  //           );
  //     case Routes.setting:
  //       return (c) => BlocProvider<SettingBloc>(
  //             create: (context) => di.instance<SettingBloc>(),
  //             child: const SettingPage(),
  //           );
  //     case Routes.signInPage:
  //       return (c) => MultiBlocProvider(providers: [
  //             BlocProvider(
  //               create: (c) => di.instance<AuthBloc>(),
  //             ),
  //             BlocProvider(
  //               create: (c) => di.instance<OtpBloc>(),
  //             ),
  //           ], child: const AuthPage());
  //     case Routes.home:
  //       return (c) => BlocBuilder<AppManagerBloc, AppManagerState>(
  //             builder: (c, state) {
  //               final user = state.user;
  //               if (user == null) {
  //                 return MultiBlocProvider(providers: [
  //                   BlocProvider(
  //                     create: (c) => di.instance<AuthBloc>(),
  //                   ),
  //                 ], child: const SignInPage());
  //               } else if (state.user is UserEntity) {
  //                 return MainPage(user: state.user!);
  //               } else {
  //                 return const ErrorPage();
  //               }
  //             },
  //           );
  //     case Routes.root:
  //     default:
  //       return (c) => BlocProvider<SplashBloc>(
  //             create: (c) => di.instance<SplashBloc>()..add(StartEvent(c)),
  //             child: const SplashScreenPage(),
  //           );
  //   }
  // }

  // Widget validateImage(
  //     {bool forProfile = false,
  //     double? width,
  //     Widget? placeHolder,
  //     double? height,
  //     double? radius,
  //     Color? color,
  //     BoxFit fit = BoxFit.cover}) {
  //   if (isEmpty) {
  //     return forProfile
  //         ? ClipRRect(
  //             borderRadius: BorderRadius.circular(radius ?? 50),
  //             child: Assets.images.png.male.image(
  //               fit: fit,
  //               height: height,
  //               width: width ?? double.infinity,
  //             ))
  //         : ClipRRect(
  //             borderRadius: BorderRadius.circular(
  //               radius ?? 10,
  //             ),
  //             child: Image.asset(
  //               AssetsManager.placeholder,
  //               fit: fit,
  //               height: height,
  //               width: width  ?? double.infinity,
  //             ),
  //           );
  //   } else {
  //     return ClipRRect(
  //       borderRadius: BorderRadius.circular(radius ?? 55),
  //       child: CachedNetworkImage(
  //         placeholder: (context, url) =>
  //             placeHolder ?? const CircularProgressIndicator(),
  //         errorWidget: (context, url, error) => Center(
  //             child: Icon(Icons.error,
  //                 size: 25, color: ThemeManager.of(context).secondaryColor)),
  //         color: color,
  //         imageUrl: this,
  //         fit: fit,
  //         height: height,
  //         width: width,
  //       ),
  //     );
  //   }
  // }

  

  String convertRouteToDisplayName() {
    // Remove leading "/" and split the remaining string using "_" as a separator
    List<String> parts = substring(1).split('_');

    // Capitalize the first letter of each part
    List<String> capitalizedParts =
        parts.map((part) => part.capitalize()).toList();

    // Join the parts to form the display name
    return capitalizedParts.join(' ');
  }

  // Custom extension method to capitalize the first letter of a string
  String capitalize() {
    // ignore: unnecessary_this
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

extension Validator on String? {
  bool nullValidate() {
    if (this == null) {
      return false;
    } else {
      return true;
    }
  }

  bool get toBool {
    if (this == null) {
      return false;
    } else if (this!.toLowerCase() == "true") {
      return true;
    } else if (this!.toUpperCase() == "false") {
      return false;
    } else {
      return false;
    }
  }

  String get toStringValidate {
    if (this == null || this == "null") {
      return '';
    } else {
      return this!;
    }
  }

  bool emailValidate() {
    RegExp regex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\])|(([a-zA-Z\-\d]+\.)+[a-zA-Z]{2,}))$');
    return regex.hasMatch(this ?? '');
  }

  int get toInt {
    if (this == null || this == "null") {
      return 0;
    } else {
      return int.tryParse(this ?? "") ?? 0;
    }
  }

  double get toDouble {
    if (this == null) {
      return 0.0;
    } else {
      return double.tryParse(this!) ?? 0.0;
    }
  }
}
