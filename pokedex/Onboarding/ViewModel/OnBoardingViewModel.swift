//
//  OnBoardingViewModel.swift
//  pokedex
//
//  Created by Caio Noronha on 23/04/24.
//

import SwiftUI

public class OnBoardingViewModel: ObservableObject {
    @Published var currentTab: Int = 0
    @Published var onBoardingTabs: [OnBoardingTab] = [
        OnBoardingTab(
            title: "Todos os pokémons em um só lugar",
            description: "Acesse uma vasta lista de pokémons de todas as gerações já feitas pela Nintendo",
            buttonText: "Continuar",
            image: Image("trainers_1")
        ),
        OnBoardingTab(
            title: "Mantenha sua Pokedéx atualizada",
            description: "Cadastre-se e mantenha seu perfil, pokémon favoritos, configurações e muito mais, salvos no aplicativo, mesmo sem conexão com a internet.",
            buttonText: "Vamos começar!",
            image: Image("trainers_2")
        )
    ]
}
