import Foundation
import UIKit
import Helper
import ServiceLocator
import Components

class HomeView: UIViewController {
    
    private var viewModel: HomeViewDelegate?
    private lazy var log: Log? = ServiceLocator.shared.resolve()
    
    private lazy var mainStack: ScrollStackView = ScrollStackView(spacing: 4)
    
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
        mainStack.addView(view: item)
    }
    
    func set(delegate: HomeViewDelegate) {
        self.viewModel = delegate
    }
    
    func extraSetups() {
        self.view.backgroundColor = .white
    }
}
