//
//  AudioPlayer.swift
//  Restart
//
//  Created by Jonathan Schaffer on 3/13/23.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("COuld not play the sound file.")
        }
    }
}
