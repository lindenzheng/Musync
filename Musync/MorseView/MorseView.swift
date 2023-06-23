//
//  MorseView.swift
//  Musync
//
//  Created by Darth Vader on 6/22/23.
//

import Foundation
import SwiftUI
import AVFoundation

var player: AVAudioPlayer?

func playSound() {
    
    let path = Bundle.main.path(forResource: "beep-01a.wav", ofType:nil)!
    let url = URL(fileURLWithPath: path)
    
    do {
        player = try AVAudioPlayer(contentsOf: url)
        player?.play()
    } catch {
        print("error 2")
    }
}

struct MorseView: View {

    

    var body: some View {

        VStack {

            Text("Morse")

                .font(.largeTitle)

                .fontWeight(.bold)

                .padding()

        }
        
        
        
        Button("testing") {
            print("pressed")
            playSound()
        }


    }

    

}



struct MorseView_Previews: PreviewProvider {

    static var previews: some View {

        MorseView()

    }

}
