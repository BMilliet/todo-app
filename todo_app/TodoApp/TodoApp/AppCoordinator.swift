import UIKit
import Foundation
import Home
import ServiceLocator

class AppCoordinator {
    private let window: UIWindow
    private let navigator: UINavigationController
    
    init(window: UIWindow) {
        self.window = window
        self.navigator = UINavigationController()
    }
    
    func start() {
        self.window.rootViewController = self.navigator
        self.window.makeKeyAndVisible()
    }
    
    func goToHome() {
        let homeCoordinator = HomeCoordinator(navigator: self.navigator)
        homeCoordinator.start()
    }
}
