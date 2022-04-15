import Foundation
import UIKit
import Helper
import ServiceLocator

class HomeView: UIViewController {
    
    private var viewModel: HomeViewDelegate?
    private lazy var log: Log? = ServiceLocator.shared.resolve()
    
    private lazy var mainStack: UIStackView = {
        let stack: UIStackView = UIStackView()
        stack.axis = .vertical
        return stack
    }()
    
    required init?(coder: NSCoder) { return nil }
    init() {
        super.init(nibName: nil, bundle: nil)
    }
}

extension HomeView: ViewCode {
    func setSubviews() {
    }
    
    func setConstraints() {
    }
}

extension HomeView: HomeViewProtocol {
    func set(delegate: HomeViewDelegate) {
        self.viewModel = delegate
    }
    
    func setBackgroundColor() {
        self.view.backgroundColor = .cyan
    }
}
