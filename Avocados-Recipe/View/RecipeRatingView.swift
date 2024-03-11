//
//  RecipeRatingView.swift
//  Avocados-Recipe
//
//  Created by SMIT KHOKHARIYA on 2024-03-10.
//

import SwiftUI

struct RecipeRatingView: View {
    var recipe: Recipe
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id:\.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                .foregroundColor(Color.yellow)
            }
        }
    }
}

#Preview {
    RecipeRatingView(recipe: recipesData[0])
}
