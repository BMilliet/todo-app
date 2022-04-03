import Foundation

public class Environment {
    public init() {}
    public func getEnv(_ key: String) -> String? {
        guard let raw = getenv(key) else { return nil }
        return String(utf8String: raw)
    }
}
