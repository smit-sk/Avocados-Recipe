//
//  RipeningView.swift
//  Avocados-Recipe
//
//  Created by SMIT KHOKHARIYA on 2024-03-11.
//

import SwiftUI

struct RipeningView: View {
    @State private var isAnimation: Bool = false
    var ripening: Ripening
    
    var body: some View {
        VStack{
            Image(ripening.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(Color("ColorGreenLight"))
                        .frame(width: 110, height: 110, alignment: .center)
                        
                )
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive" ))
                        .frame(width: 120, height: 130, alignment: .center)
                )
                .zIndex(1)
                .offset(y: isAnimation ?  55 : -55)
                .animation(.easeInOut(duration: 1), value: isAnimation )
            
                     VStack(alignment: .center, spacing: 10){
                // STAGE
                VStack(alignment: .center, content: {
                    Text(ripening.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        
                    
                    Text("STAGE")
                        .font(.system(.body, design: .serif))
                        .fontWeight(.bold)
                        
                })
                .foregroundStyle(Color("ColorGreenMedium"))
                .padding(.top, 65)
                .frame(width: 180)

                
                // TITLE
                         Text(ripening.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("ColorGreenMedium"))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerSize: CGSize(width: 12, height:12))
                            .fill(LinearGradient(colors: [Color.white, Color("ColorGreenLight")], startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0 , y: 6)
                    )
                    
                // DESCRIPTION
                Spacer()
                         Text(ripening.description)
                    .foregroundStyle(Color("ColorGreenDark"))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .lineLimit(nil)
                Spacer()
                
                
                // RIPENESS
                         Text(ripening.ripeness.uppercased())
                    .foregroundStyle(Color.white)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width: 185)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(
                                LinearGradient(colors: [
                                Color("ColorGreenMedium"),
                                Color("ColorGreenDark")
                                ], startPoint: .top, endPoint: .bottom)
                            )
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0 , y: 6)
                    )
                
                // INSTRUCTION
                         Text(ripening.instruction)
                    .font(.footnote)
                    .foregroundColor(Color("ColorGreenLight"))
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 160 )
                Spacer()
                
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: .center)
            .background(
                LinearGradient(colors: [
                Color("ColorGreenLight"),
                Color("ColorGreenMedium")
                ], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(20)
        }.edgesIgnoringSafeArea(.all)
            .onAppear(perform: {
                isAnimation.toggle()
            })
    }
}

#Preview {
    
    RipeningView(ripening: ripeningData[0])
}
