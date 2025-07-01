//
//  WelcomeView.swift
//  Where'd My Cash Go?
//
//  Created by Shrirang Zend on 02/07/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Image("welcome_screen")
                .resizable()
                .scaledToFit()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                    .padding(.top, .topInsets + 0.8)
                
                Spacer()
                
                Text("Hola, Como Si mas. Expense tracker. Where did your Money go?")
                    .multilineTextAlignment(.center)
                    .font(.customFont(.regular, fontSize: 14))
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
                
                PrimaryButton(title: "Get Started", onPressed: {
                    
                })
                .padding(.bottom, 15)
                
                SecondaryButton(title: "I have an account", onPressed: {
                    
                })
                .padding(.bottom, .bottomInsets)
            }
                
        }
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
