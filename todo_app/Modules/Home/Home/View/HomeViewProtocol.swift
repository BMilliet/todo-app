import UIKit

protocol HomeViewProtocol: UIViewController {
    func set(delegate: HomeViewDelegate)
    func addItems(newTodos: [TodoItem])
}
