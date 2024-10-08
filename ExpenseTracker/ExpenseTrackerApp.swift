import SwiftUI
import SwiftData


@main
struct ExpenseTrackerApp: App {
    
    let container: ModelContainer = {
        let schema = Schema([Expense.self])
        let container = try! ModelContainer(for: schema, configurations: [])
        return container
    }()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        .modelContainer(container)
        .modelContainer(for:[Expense.self])
    }
}
