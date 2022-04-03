import Foundation
import ServiceLocator
import Helper

class Di {
    func inject() {
        ServiceLocator.shared.register(object: Environment())
        ServiceLocator.shared.register(object: Log())
    }
}
