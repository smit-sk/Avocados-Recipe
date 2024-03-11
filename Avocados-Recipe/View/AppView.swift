//
//  AppView.swift
//  Avocados-Recipe
//
//  Created by SMIT KHOKHARIYA on 2024-03-08.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            AvocadosView().tabItem {
                Image("tabicon-branch")
                Text("Avocados")
            }
            
            ContentView().tabItem {
                Image("tabicon-book")
                Text("Recipe")
            }
            
            RipeningStagesView().tabItem {
                Image("tabicon-avocado")
                Text("Ripening")
            }
            
            SettingView().tabItem {
                Image("tabicon-settings")
                Text("Setting")
            }
            
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(.primary)
    }
}

#Preview {
    AppView()
}
