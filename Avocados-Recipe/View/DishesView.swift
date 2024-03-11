//
//  DishesView.swift
//  Avocados-Recipe
//
//  Created by SMIT KHOKHARIYA on 2024-03-09.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing:4){
            VStack (alignment: .leading, spacing:4){
                HStack(){
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                }
                Divider()
                HStack(){
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Tacos")
                }
                Divider()
                HStack(){
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Salads")
                }
                Divider()
                HStack(){
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Spreads")
                }
            }
            
            VStack(alignment: .center, spacing:8) {
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .imageScale(.large)
                    .font(Font.title.weight(.ultraLight))
                HStack {
                    Divider()
                }
            }
            
            VStack (alignment: .leading, spacing:4){
                HStack(){
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack(){
                    Text("Sandwiches")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack(){
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack(){
                    Text("Smothie")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier())
                }
            }
            
        }
        .font(.system(.callout, design: .serif))
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier{
    func body(content: Content)-> some View {
        content
            .frame(width: 42, height:42, alignment: .center)
    }
}

#Preview {
    DishesView()
}
