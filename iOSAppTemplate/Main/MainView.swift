//
//  MainView.swift
//  iOSAppTemplate
//
//  Created by MAC21 on 20/06/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Label("Home", systemImage: "house")
                        .accentColor(.white)
                }
            ChatView()
                .tabItem{
                    Label("Chat", systemImage: "message")
                        .accentColor(.white)
                }
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage:  "person.fill")
                        .accentColor(.white) 
                }
        }.accentColor(.white)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
