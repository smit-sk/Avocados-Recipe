//
//  FactsView.swift
//  Avocados-Recipe
//
//  Created by SMIT KHOKHARIYA on 2024-03-10.
//

import SwiftUI

struct FactsView: View {
    var fact: Fact
    var body: some View {
        ZStack {
            Text(fact.content)
                .padding(.leading, 55)
                .padding(.trailing, 10)
                .frame(width: 300, height: 135, alignment: .center)
                .background(
                    LinearGradient(gradient:
                                    Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]),
                                   startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                )
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
                .foregroundColor(.white)
            
            ZStack {

                Image(fact.image)
                    .resizable()
                    .frame(width: 66, height: 66, alignment: .center)
                    .clipShape(Circle())
                    .background(
                        Circle()
                            .fill(Color.white)
                            .frame(width: 74, height: 74, alignment: .center)
                        
                    )
                    .background(
                        
                        Circle().fill(
                            LinearGradient(gradient:
                                            Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]),
                                           startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                            .frame(width: 82, height: 82, alignment: .center)
                        
                    )
                    .background(
                        Circle()
                            .fill(Color.white)
                            .frame(width: 90, height: 90, alignment: .center)
                        
                    )
                    .offset(x : -150)
            }
            
            
        }
        
        
    }
}

#Preview {
    
    FactsView(fact: factsData[0])
        .previewLayout(.fixed(width: 400, height: 220))
}
