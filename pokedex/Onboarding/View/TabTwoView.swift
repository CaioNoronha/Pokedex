//
//  TabTwoView.swift
//  pokedex
//
//  Created by Caio Noronha on 23/04/24.
//

import SwiftUI

struct TabTwoView: View {
    var body: some View {
        ZStack {
            Image("trainer_3")
                .resizable()
                .scaledToFit()
                .scaleEffect(0.7)
                .background {
                    Image("trainer_shadow")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(0.4)
                        .offset(x: -10, y: 128)
                }
        }
    }
}

#Preview {
    TabTwoView()
}
