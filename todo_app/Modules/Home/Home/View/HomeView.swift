import Foundation
import UIKit
import Helper
import ServiceLocator

class HomeView: UIViewController {
    
    private let viewModel: HomeViewModel
    private lazy var log: Log? = ServiceLocator.shared.resolve()
    
    private lazy var mainStack: UIStackView = {
        let stack: UIStackView = UIStackView()
        stack.axis = .vertical
        return stack
    }()
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .cyan
        
        viewModel.hi()
    }
}
