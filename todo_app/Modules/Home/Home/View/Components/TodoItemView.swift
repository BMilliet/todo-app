import UIKit
import Helper

final class TodoItemView: UIView {
    
    private lazy var mainStack: UIStackView = {
        let stack: UIStackView = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .center
        return stack
    }()
    
    private lazy var titleLabel: UILabel = {
        let label: UILabel = UILabel()
        return label
    }()
    
    private lazy var dateLabel: UILabel = {
        let label: UILabel = UILabel()
        return label
    }()
    
    required init?(coder: NSCoder) { return nil }
    public init() {
        super.init(frame: .zero)
        setSubviews()
        setConstraints()
    }
    
    func set(title: String) {
        self.titleLabel.text = title
    }
    
    func set(date: String) {
        self.dateLabel.text = date
    }
}

extension TodoItemView: ViewCode {
    func setSubviews() {
        self.addSubview(mainStack)
        mainStack.addArrangedSubview(titleLabel)
        mainStack.addArrangedSubview(dateLabel)
    }
    
    func setConstraints() {
        mainStack.setAnchorsEqual(to: self)
        mainStack.size(height: 80)
        dateLabel.size(width: 100)
    }
}
