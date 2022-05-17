//
//  Onboarding.swift
//  Onboarding
//
//  Created by Kha Tran on 17/5/2022.
//

import SwiftUI

struct Onboarding: View {
    
    
    var body: some View {
        ZStack {
            LinearGradient(stops: [.init(color: .blue, location: 0),
                                   .init(color: .red, location: 1),
                                   .init(color: .black, location: 2)
            ], startPoint: .topLeading, endPoint: .trailing)
            TabView {
                OnboardingCardView(
                    headline: "120 hours of video",
                    title: "Learn design and code whyyy",
                    description: "Learn by building real apps using Swift, React, Flutter and more. Design files and source code are included for each course.",
                    buttonName: "Get started")
                OnboardingCardView(
                    headline: "Test your skills",
                    title: "Gain certificates and progress",
                    description: "Take tests and recieve a certificate after completion. You can track your progress for each course and pick up where you left.",
                    buttonName: "Next")
                OnboardingCardView(
                    headline: "Learn anywhere",
                    title: "Watch on iPhone, iPad and web",
                    description: "Watch anywhere and sync your progress across all platforms. Download videos for offline viewing.",
                    buttonName: "Close")
                
            }
            .tabViewStyle(PageTabViewStyle())
            
        }
        .ignoresSafeArea()
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}

struct OnboardingCardView: View {
    var headline: String
    var title: String
    var description: String
    var buttonName: String
    
    var body: some View {
        VStack {
            VStack(alignment: .center) {
                VStack(alignment: .leading, spacing: 20) {
                    Text(headline)
                        .font(.subheadline)
                        .textCase(.uppercase)
            
                    LinearGradient(stops: [.init(color: .white, location: -1),
                                           .init(color: .yellow, location: 1)], startPoint: .top, endPoint: .bottomTrailing)
                    .frame(height: 100)
                    .mask(Text(title)
                        .font(.largeTitle)
                        .bold())
                
                    Text(description)
                        .font(.body)
                }
                .opacity(0.7)
                .padding()
                Spacer()
                Button {
                    print("tapped")
                } label: {
                    Text(buttonName)
                        .padding(10)
                        .textCase(.uppercase)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 1.5)
                        )
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: 450)
            .background(LinearGradient(
                gradient: Gradient(stops: [.init(color: .purple, location: 0),
                                           .init(color: .orange, location: 1.5)]),
                startPoint: .top,
                endPoint: .bottom))
            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        }
        .padding()
        .foregroundColor(.white)
    }
}
