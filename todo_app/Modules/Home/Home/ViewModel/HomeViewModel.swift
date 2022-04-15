import Foundation
import Helper

final class HomeViewModel {
    private var view: HomeViewProtocol?
}

extension HomeViewModel: HomeViewModelProtocol {
    func set(view: HomeViewProtocol) {
        self.view = view
    }
    
    func addItems() {
        view?.addItem(title: "item1", date: "10/10/2022", color: .cyan)
        view?.addItem(title: "item2", date: "10/10/2022", color: .blue)
        view?.addItem(title: "item3", date: "10/10/2022", color: .gray)
    }
}

extension HomeViewModel: HomeViewDelegate {
    
}
