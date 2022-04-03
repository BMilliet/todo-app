import UIKit
import Helper
import ServiceLocator

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private let di: Di = Di()
    private lazy var log: Log? = ServiceLocator.shared.resolve()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        di.inject()
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        guard let window = window else {
            log?.print("[UIWindow] => unable to create UIWindow")
            return false
        }

        let appCoordinator = AppCoordinator(window: window)
        appCoordinator.start()
        appCoordinator.goToHome()
        return true
    }
}

