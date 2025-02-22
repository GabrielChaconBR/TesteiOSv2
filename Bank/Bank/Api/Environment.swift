import Foundation

public final class Environment {
    public enum EnvironmentVariables: String {
        case baseUrl = "BASE_URL"
    }

    public static func variable(_ key: EnvironmentVariables) -> String? {
        return Bundle.main.infoDictionary?[key.rawValue] as? String
    }
}
