//
//  TabOneView.swift
//  pokedex
//
//  Created by Caio Noronha on 23/04/24.
//

import SwiftUI

struct TabOneView: View {
    var body: some View {
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
    }
}

#Preview {
    TabOneView()
}
