//
//  OnBoardingTab.swift
//  pokedex
//
//  Created by Caio Noronha on 23/04/24.
//

import SwiftUI

public struct OnBoardingTab<Content:View> {
    var title: String
    var description: String
    var buttonText: String
    var view: Content
}
