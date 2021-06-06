//
//  HomeView.swift
//  UltimatePortfolio
//
//  Created by Ceri-anne Jackson on 28/05/2021.
//

import SwiftUI

struct HomeView: View {

    static let tag: String? = "Home"
    
    @EnvironmentObject var dataController: DataController
    
    var body: some View {
        NavigationView {
            VStack {
                Button("Add Data") {
                    dataController.deleteAll()
                    try? dataController.createSampleData()
                }
            }
            .navigationTitle("Home")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
