//
//  OnBoardingView.swift
//  pokedex
//
//  Created by Caio Noronha on 23/04/24.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        VStack {
            Spacer()
            
            ZStack {
                Image("trainer_1")
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(0.7)
                    .offset(x: -50)
                    .background {
                        Image("trainer_shadow")
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(0.4)
                            .offset(x: -65, y: 115)
                    }
                
                Image("trainer_2")
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(0.7)
                    .offset(x: 40, y: -10)
                    .background {
                        Image("trainer_shadow")
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(0.4)
                            .offset(x: 52, y: 105)
                    }
            }
            
            VStack {
                Text("Todos os pokémons em um só lugar")
                    .font(.title2)
                    .foregroundColor(.primary)
                    .padding()
                
                Text("Acesse uma vasta lista de pokémons de todas as gerações já feitas pela Nintendo")
                    .font(.subheadline)
                    .foregroundColor(.secondary)

            }
            .multilineTextAlignment(.center)
            
            HStack {
                Capsule()
                    .frame(width: 28, height: 9)
                    .foregroundStyle(.darkBlue)
                
                Circle()
                    .frame(width: 9, height: 9)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            Button(action: {}, label: {
                Capsule()
                    .frame(height: 58)
                    .overlay {
                        Text("Continuar")
                            .foregroundStyle(.white)
                            .font(.system(size: 18, weight: .semibold))
                    }
            })
            .tint(.darkBlue)
            
        }
        .padding()
    }
}

#Preview {
    OnBoardingView()
}
