//
//  PlaySound.swift
//  Learn by Doing
//
//  Created by Alfredo Martinez on 5/17/20.
//  Copyright © 2020 Alfredo Martinez. All rights reserved.
//

import Foundation
import AVFoundation

// MARK: - Audio Player

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not find and play the sound file.")
        }
    }
}
