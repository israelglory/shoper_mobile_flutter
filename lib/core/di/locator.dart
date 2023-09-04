import 'package:get_it/get_it.dart';
import 'package:termii_store/services/navigation_service.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  //SERVICES
  //locator.registerLazySingleton(() => SnackbarService());
  locator.registerLazySingleton(() => NavigationService());
  //locator.registerLazySingleton(() => DialogService());
  //locator.registerLazySingleton(() => BottomSheetService());
  // locator.registerSingleton((Box box) => LocalStorageService(box));
}

//SERVICES
//SnackbarService snackBars = locator.get<SnackbarService>();
NavigationService navigationService = locator.get<NavigationService>();
//DialogService dialogService = locator.get<DialogService>();
//BottomSheetService bottomSheetService = locator.get<BottomSheetService>();


