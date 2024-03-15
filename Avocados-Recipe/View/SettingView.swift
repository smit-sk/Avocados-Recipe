//
//  SettingView.swift
//  Avocados-Recipe
//
//  Created by SMIT KHOKHARIYA on 2024-03-08.
//

import SwiftUI

struct SettingView: View {
    
    @State private var enableNotification: Bool = true

    @State private var backgroundRefresh: Bool = true

    var body: some View {
        
        VStack (alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }.padding()
            
            Form{
                // Mark: Section #1
                Section(header: Text("General Setting")){
                    Toggle(isOn: $enableNotification){
                        Text("Enable Notification")
                    }
                    Toggle(isOn: $backgroundRefresh){
                        Text("Background Refresh")
                    }
                }
                
                Section(header: Text("Application")){
                    if enableNotification {
                        HStack{
                            Text("Product")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("Avocados Recipes")
                        }
                        HStack{
                            Text("Compatibility")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        
                        HStack{
                            Text("Developer")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("John / Jane")
                        }
                        
                        HStack{
                            Text("Designer")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("Robert Petras")
                        }
                        
                        HStack{
                            Text("Website")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("swiftuimasterclass.com")
                        }
                        HStack{
                            Text("Version")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("1.0.1")
                        }
                    } else {
                        HStack{
                            Text("Personal message")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("Happy Coding!")
                        }
                    }
                    
                    
                    
                }
            }
            
        }
        .frame(maxWidth: 640)
            
    
    }
}

#Preview {
    SettingView()
}
