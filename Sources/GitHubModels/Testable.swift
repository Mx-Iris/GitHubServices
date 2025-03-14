import Foundation

public protocol Testable: Codable {
    static var resourceName: String { get }
    
}

public extension Testable {
    static var testModel: Self {
        guard let resourceURL = Bundle.module.url(forResource: resourceName, withExtension: nil) else {
            fatalError("Not found the resource: \(resourceName)")
        }
        
        do {
            let data = try Data(contentsOf: resourceURL)
            let model = try JSONDecoder().decode(Self.self, from: data)
            return model
        } catch {
            fatalError("Fatal Error: \(error)")
        }
    }
}
