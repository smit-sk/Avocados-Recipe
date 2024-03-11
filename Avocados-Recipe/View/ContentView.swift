//
//  ContentView.swift
//  Avocados-Recipe
//
//  Created by SMIT KHOKHARIYA on 2024-03-05.
//

import SwiftUI

struct ContentView: View {
    
    var header: [Header] = headersData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20) {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .center, spacing: 0) {
                        ForEach(header) { item in
                            HeaderView(header: item)
                        }
                       
                    }
                }
                
                Text("Avocados Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                DishesView()
                
                Text("Avocados Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing: 60,  content: {
                        ForEach(factsData) { item in
                            FactsView(fact: item)
                        }
                    }
                    )
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }
                
                Text("Avocados Recipes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .center, spacing: 20, content: {
                    ForEach(recipesData){item in
                        RecipeCardView(recipe: item)
                    }
                })
                
                   
                VStack(alignment: .center, spacing: 20){
                    Text("All about avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                        
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
        
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content)-> some View{
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
            
    }
    
}

#Preview {
    ContentView(header: headersData)
}

