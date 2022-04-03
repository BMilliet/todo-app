import Foundation
import UIKit
import HomeKit
import ServiceLocator
import Helper

public class HomeCoordinator {
    private let navigator: UINavigationController
    private lazy var log: Log? = ServiceLocator.shared.resolve()
    
    private let homeViewModel: HomeViewModel = HomeViewModel()
    private lazy var homeView: HomeView? = HomeView(viewModel: homeViewModel)
    
    public init(navigator: UINavigationController) {
        self.navigator = navigator
    }
    
    public func start() {
        guard let homeView = homeView else {
            log?.print("[HomeCoordinator] => Could not resolve HomeView")
            return
        }
        
        navigator.pushViewController(homeView, animated: true)
    }
}
