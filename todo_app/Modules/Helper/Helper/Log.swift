import Foundation
import ServiceLocator

public class Log {
    
    private lazy var env: Environment? = ServiceLocator.shared.resolve()
    
    public init() {}
    
    public func print(_ msg: String) {
        if (env?.getEnv("TODO_LOG")?.lowercased() == "true") {
            debugPrint(msg)
        }
    }
}
