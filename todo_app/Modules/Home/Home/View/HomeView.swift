import Foundation
import UIKit
import Helper
import ServiceLocator
import Components

class HomeView: UIViewController {
    
    private var viewModel: HomeViewDelegate?
    private lazy var log: Log? = ServiceLocator.shared.resolve()
    private var todos: Array<TodoItem> = []
    
    private lazy var table: UITableView = {
        let table = UITableView(frame: .zero)
        table.register(TodoViewCell.self, forCellReuseIdentifier: "cell")
        table.delegate = self
        table.dataSource = self
        table.frame = view.bounds
        return table
    }()
    
    required init?(coder: NSCoder) { return nil }
    init() {
        super.init(nibName: nil, bundle: nil)
        setupView()
    }
}

extension HomeView: ViewCode {
    func setSubviews() {
        self.view.addSubview(table)
    }
    
    func setConstraints() {
        table.setAnchorsEqual(to: self.view)
    }
}

extension HomeView: HomeViewProtocol {
    func addItems(newTodos: [TodoItem]) {
        newTodos.forEach { todos.append($0) }
        table.reloadData()
    }
    
    func set(delegate: HomeViewDelegate) {
        self.viewModel = delegate
    }
    
    func extraSetups() {
        self.view.backgroundColor = .white
    }
}

extension HomeView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: UITableViewCell = self.table.dequeueReusableCell(withIdentifier: "cell") else {
            return UITableViewCell(frame: .zero)
        }
        cell.textLabel?.text = self.todos[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Tapped cell \(todos[indexPath.row].id)")
    }
}
