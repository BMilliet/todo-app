import UIKit

protocol HomeViewProtocol: UIViewController {
    func set(delegate: HomeViewDelegate)
    func addItem(title: String, date: String, color: UIColor)
}
