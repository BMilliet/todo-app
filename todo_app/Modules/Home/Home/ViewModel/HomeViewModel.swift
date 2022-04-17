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
        view?.addItems(newTodos: [
            TodoItem(title: "item1", date: "10/10/2022"),
            TodoItem(title: "item2", date: "10/10/2022")
        ])
    }
}

extension HomeViewModel: HomeViewDelegate { }
