//
//  OnBoardingView.swift
//  pokedex
//
//  Created by Caio Noronha on 23/04/24.
//

import SwiftUI

struct OnBoardingView: View {
    
    @ObservedObject var viewModel: OnBoardingViewModel
    
    var body: some View {
        TabView(selection: $viewModel.currentTab) {
            ForEach(0..<viewModel.onBoardingTabs.count, id: \.self) {
                index in
                VStack {
                    viewModel.onBoardingTabs[index].view
                    
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
                }
                .padding()
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        
        HStack {
            Capsule()
                .frame(width: 28, height: 9)
                .foregroundStyle(.darkBlue)
            
            Circle()
                .frame(width: 9, height: 9)
                .foregroundStyle(.secondary)
        }
        Button(action: {}, label: {
            Capsule()
                .frame(height: 58)
                .overlay {
                    Text("Continuar")
                        .foregroundStyle(.white)
                        .font(.system(size: 18, weight: .semibold))
                }
        })
        .padding()
        .tint(.darkBlue)
    }
}

#Preview {
    OnBoardingView(viewModel: OnBoardingViewModel())
}
