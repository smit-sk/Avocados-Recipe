//
//  HeaderView.swift
//  Avocados-Recipe
//
//  Created by SMIT KHOKHARIYA on 2024-03-08.
//

import SwiftUI

struct HeaderView: View {
    @State private var showHeading: Bool = false
    var header: Header
    
    var slideInAnimation: Animation{
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration:0.5)
            .speed(1)
            .delay(0.25)
    }
    
    var body: some View {
        
       
        ZStack{
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack (alignment: .top, spacing: 0){
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                
                VStack(alignment: .center, spacing:6){
                    Text(header.headline)
                        .font(.system(.title, design: .serif))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                    
                        
                }
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
            .background(Color("ColorBlackTransparentLight"))
                
                
            }
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x:-46, y: showHeading ? 75 : 220)
            .animation(slideInAnimation)
            .onAppear(perform: {
                self.showHeading.toggle()
            })
            
            
        }
        .frame(width: 480, height: 320, alignment: .center)
       
    }
}

#Preview {
    
    HeaderView(header: headersData[0])
}
