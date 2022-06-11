//
//  LaunchViewModel.swift
//  iOSAppTemplate
//
//  Created by MAC21 on 10/06/22.
//

import Foundation

class LaunchViewModel: ObservableObject {
    let appState = AppState.shared
    init() {
        appState.currentScreen = .home
    }
    
}
