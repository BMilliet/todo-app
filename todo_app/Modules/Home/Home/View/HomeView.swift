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
        stack.backgroundColor = .cyan
        stack.addArrangedSubview(UIView())
        return stack
    }()
    
    required init?(coder: NSCoder) { return nil }
    init() {
        super.init(nibName: nil, bundle: nil)
        setupView()
    }
}

extension HomeView: ViewCode {
    func setSubviews() {
        self.view.addSubview(mainStack)
    }
    
    func setConstraints() {
        mainStack.setAnchorsEqual(to: self.view)
    }
}

extension HomeView: HomeViewProtocol {
    func addItem(title: String, date: String, color: UIColor) {
        let item: TodoItemView = TodoItemView()
        item.set(title: title)
        item.set(date: date)
        item.backgroundColor = color
        mainStack.addArrangedSubview(item)
    }
    
    func set(delegate: HomeViewDelegate) {
        self.viewModel = delegate
    }
}
