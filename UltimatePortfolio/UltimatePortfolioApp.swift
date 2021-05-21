//
//  UltimatePortfolioApp.swift
//  UltimatePortfolio
//
//  Created by Ceri-anne Jackson on 21/05/2021.
//

import SwiftUI

@main
struct UltimatePortfolioApp: App {
    
    @StateObject var dataController: DataController
    
    init() {
        let dataController = DataController()
        _dataController = StateObject(wrappedValue: dataController)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
