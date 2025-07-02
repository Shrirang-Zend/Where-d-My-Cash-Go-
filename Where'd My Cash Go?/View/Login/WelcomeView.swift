//
//  WelcomeView.swift
//  Where'd My Cash Go?
//
//  Created by Shrirang Zend on 02/07/25.
//

import SwiftUI

struct WelcomeView: View {
    
    @State var showSignUp: Bool = false
    @State var showSignIn: Bool = false

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
                    showSignUp.toggle()
                })
                .background(NavigationLink(destination: SocialSignupView(),isActive: $showSignUp, label: {
                        EmptyView()
                    })
                )
                .padding(.bottom, 15)
                
                SecondaryButton(title: "I have an account", onPressed: {
                    showSignIn.toggle()
                })
                .background(NavigationLink(destination: SignInView(),isActive: $showSignIn, label: {
                        EmptyView()
                    })
                )
                .padding(.bottom, .bottomInsets)
            }
                
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
