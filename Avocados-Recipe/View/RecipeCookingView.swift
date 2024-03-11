//
//  RecipeCookingView.swift
//  Avocados-Recipe
//
//  Created by SMIT KHOKHARIYA on 2024-03-10.
//

import SwiftUI

struct RecipeCookingView: View {
    var recipe: Recipe
    var body: some View {
        HStack(alignment: .center, spacing: 12, content: {
            HStack(alignment: .center, spacing: 2, content :  {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            })
            HStack(alignment: .center, spacing: 2, content :  {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            })
            HStack(alignment: .center, spacing: 2, content :  {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            })
            
        })
        .font(.footnote)
        .foregroundColor(Color.gray)
    }
}

#Preview {
    RecipeCookingView(recipe: recipesData[0])
}
