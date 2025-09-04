import UIKit
import Flutter
import GoogleMaps // <--- Tambahkan ini

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    // ✅ Tambahkan Google Maps API Key kamu di sini
    GMSServices.provideAPIKey("AIzaSyCJkOJ6M1hVKZRk_xwYf5lSfVIILzPpSDM")

    GeneratedPluginRegistrant.register(with: self)

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
