import Foundation
import UIKit
import HomeKit
import ServiceLocator

public class HomeCoordinator {
    private let navigator: UINavigationController
    private let di: ServiceLocator = ServiceLocator()
    
    public init(navigator: UINavigationController) {
        self.navigator = navigator
        self.inject()
    }
    
    public func start() {
        guard let view: HomeView = di.resolve() else {
            debugPrint("Could not resolve HomeView")
            return
        }
        
        print("wow")
        navigator.pushViewController(view, animated: true)
    }
    
    public func inject() {
        di.register(object: HomeViewModel())
        di.register(object: HomeView(viewModel: di.resolve()))
    }
}
