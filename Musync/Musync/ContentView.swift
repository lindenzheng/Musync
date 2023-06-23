//
//  ContentView.swift
//  Musync
//
//  Created by Darth Vader on 6/22/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "person")
                }



            ScalesView()
                .tabItem {
                    Label("Scales", systemImage: "book")
                }

            

            MorseView()
                .tabItem {
                    Label("Morse", systemImage: "star")
                }


            MetronomeView()
                .tabItem {
                    Label("Metronome", systemImage: "hand.thumbsup")
                }
            
            
            GameView()
                .tabItem {
                    Label("Game", systemImage: "key")
                }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
