import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class ConnectivityService {
  late Connectivity _connectivity;
  late InternetConnectionChecker? _internetConnectionChecker;

  bool isConnected = false;
  bool hasInternetConnection = false; // Initialize directly

  void initialize() {
    _connectivity = Connectivity();
    _internetConnectionChecker = InternetConnectionChecker();
    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
    _checkConnection();
  }

  void dispose() {
    // Dispose resources if needed
  }

  void _updateConnectionStatus(List<ConnectivityResult> results) {
    for (var result in results) {
      isConnected = (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi);
      if (isConnected) {
        _checkInternetConnection();
        break; // Exit the loop after finding a connected status
      }
    }
  }

  Future<void> _checkConnection() async {
    var connectivityResult = await _connectivity.checkConnectivity();
    isConnected = (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi);
    if (isConnected) {
      _checkInternetConnection();
    }
  }

  Future<void> _checkInternetConnection() async {
    hasInternetConnection =
        await _internetConnectionChecker?.hasConnection ?? false;
  }
}
