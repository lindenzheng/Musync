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
var noteNum = 1
var letters: [String] = ["A", "B", "C", "D", "E", "F", "G"]
var correct = false

//play certain note
func playSound(note: String) {
    
    let path = Bundle.main.path(forResource: "\(note)4.mp3", ofType:nil)!
    let url = URL(fileURLWithPath: path)
    
    do {
        player = try AVAudioPlayer(contentsOf: url)
        player?.play()
    } catch {
        print("morse playSound audio file not found")
    }
}

func noteChecker (input: String) {
    if (input == letters[noteNum-1]){
        correct = true
        print("notechecker true")
    } else {
        correct = false
        print("notechecker false")
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
            
            Button(
                action: {
                    print("notetapped!")
                    playSound(note: letters[noteNum-1])
                }, label: {
                    Text("Note")
                        .foregroundColor(.black)
                        .frame(width: 400, height: 200)
                })
            
            Button(
                action: {
                    print("tapped!")
                    noteChecker(input: "A")
                }, label: {
                    Text("a")
                        .foregroundColor(correct ? .black : .green)
                        .frame(width: 200, height: 40)
            })
            
            Button(
                action: {
                    print("tapped!")
                }, label: {
                    Text("b")
                        .foregroundColor(.red)
                        .frame(width: 200, height: 40)
            })
            
            Button(
                action: {
                    print("tapped!")
                }, label: {
                    Text("c")
                        .foregroundColor(.red)
                        .frame(width: 200, height: 40)
            })
            
            Button(
                action: {
                    print("tapped!")
                }, label: {
                    Text("d")
                        .foregroundColor(.red)
                        .frame(width: 200, height: 40)
            })
            
            Button(
                action: {
                    print("tapped!")
                }, label: {
                    Text("e")
                        .foregroundColor(.red)
                        .frame(width: 200, height: 40)
            })
            
            Button(
                action: {
                    print("tapped!")
                }, label: {
                    Text("f")
                        .foregroundColor(.red)
                        .frame(width: 200, height: 40)
            })
            
            Button(
                action: {
                    print("tapped!")
                }, label: {
                    Text("g")
                        .foregroundColor(.red)
                        .frame(width: 200, height: 40)
            })
            
            Button(
                action:{
                    print("nexted")
                    noteNum = Int.random(in:1..<8)
                    
                }, label: {
                    Text("next")
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
