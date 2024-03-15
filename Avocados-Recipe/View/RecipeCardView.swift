//
//  RecipeCardView.swift
//  Avocados-Recipe
//
//  Created by SMIT KHOKHARIYA on 2024-03-10.
//

import SwiftUI

struct RecipeCardView: View {
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModel: Bool = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 4) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack() {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(Color.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"),
                                        radius: 2,x:0,y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            Spacer()
                        }
                        
                    }
                )
            
            VStack(alignment: .leading, spacing: 6){
                Text(recipe.title)
                    .font(.system(.body, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                Text(recipe.headline)
                    .font(.system(.subheadline, design: .serif))
                    .foregroundColor(Color.gray)
                    .italic()
                
                // RATING
                RecipeRatingView(recipe: recipe)
                
                // Racipe Cooking View 
                RecipeCookingView(recipe: recipe)
                
                
            }
            .padding()
            .padding(.bottom, 12)
        
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x:0, y: 0)
        .padding(.horizontal, 12)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModel = true
        }
        .sheet(isPresented: self.$showModel, content: {
            RecipeDetailView(recipe: recipe)
        })
    }
}

#Preview {
    RecipeCardView(recipe: recipesData[0])
}
