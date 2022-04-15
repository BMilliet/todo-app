import Foundation
import Helper

final class HomeViewModel {
    private var view: HomeViewProtocol?
}

extension HomeViewModel: HomeViewModelProtocol {
    func set(view: HomeViewProtocol) {
        self.view = view
    }
    
    func setBackgroundColor() {
        view?.setBackgroundColor()
    }
}

extension HomeViewModel: HomeViewDelegate {
    
}
