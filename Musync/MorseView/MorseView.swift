//
//  MorseView.swift
//  Musync
//
//  Created by Darth Vader on 6/22/23.
//

import Foundation
import SwiftUI
import UIKit
import AVFoundation

var player: AVAudioPlayer?

//play certain note
func playSound(note: String) {
    
    let path = Bundle.main.path(forResource: "\(note).mp3", ofType:nil)!
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
            
            
            //buttons
            Button(action: {
                print("tapped!")
            }, label: {
            Text("a")
                .foregroundColor(.red)
                .frame(width: 200, height: 40)
            })
            
            Button(action: {
                print("tapped!")
            }, label: {
            Text("b")
                .foregroundColor(.red)
                .frame(width: 200, height: 40)
            })
            
            Button(action: {
                print("tapped!")
            }, label: {
            Text("c")
                .foregroundColor(.red)
                .frame(width: 200, height: 40)
            })
            
            Button(action: {
                print("tapped!")
            }, label: {
            Text("d")
                .foregroundColor(.red)
                .frame(width: 200, height: 40)
            })
            
            Button(action: {
                print("tapped!")
            }, label: {
            Text("e")
                .foregroundColor(.red)
                .frame(width: 200, height: 40)
            })
            
            Button(action: {
                print("tapped!")
            }, label: {
            Text("f")
                .foregroundColor(.red)
                .frame(width: 200, height: 40)
            })
            
            Button(action: {
                print("tapped!")
            }, label: {
            Text("g")
                .foregroundColor(.red)
                .frame(width: 200, height: 40)
            })
            
        }


    }

    

}



struct MorseView_Previews: PreviewProvider {

    static var previews: some View {

        MorseView()

    }

}
