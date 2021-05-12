import UIKit
import Firebase


class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication,
      didFinishLaunchingWithOptions launchOptions:
        [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      FirebaseApp.configure()
        if Auth.auth().currentUser == nil {
      Auth.auth().signInAnonymously()
        }
      return true
    }
  }
