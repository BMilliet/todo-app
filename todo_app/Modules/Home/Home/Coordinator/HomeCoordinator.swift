import Foundation
import UIKit
import HomeKit
import ServiceLocator
import Helper

public class HomeCoordinator {
    private let navigator: UINavigationController
    private lazy var log: Log? = ServiceLocator.shared.resolve()
    
    private let homeViewModel: HomeViewModelProtocol & HomeViewDelegate = HomeViewModel()
    private let homeView: HomeViewProtocol = HomeView()
    
    public init(navigator: UINavigationController) {
        self.navigator = navigator
    }
    
    public func start() {
        homeViewModel.set(view: homeView)
        homeView.set(delegate: homeViewModel)
        navigator.pushViewController(homeView, animated: true)
        
        homeViewModel.addItems()
    }
}
