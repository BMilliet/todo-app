protocol HomeViewModelProtocol {
    func set(view: HomeViewProtocol)
    func addItems()
}

protocol HomeViewDelegate: AnyObject {
}
