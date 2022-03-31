import Foundation
import UIKit

class HomeView: UIViewController {
    
    private var viewModel: HomeViewModel?
    
    init(viewModel: HomeViewModel?) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
      fatalError("Init fail")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .cyan
        
        viewModel?.hi()
    }
}
