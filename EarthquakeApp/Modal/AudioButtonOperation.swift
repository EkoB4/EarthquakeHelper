//
//  ButtonFunc.swift
//  EarthquakeApp
//
//  Created by Ekin Bacik on 8.02.2023.
//

import Foundation
import AVKit


class AudioButtonOperation {
    var audioPlayer : AVAudioPlayer!
    func playSound(key: Sounds){
        let soundUrl = Bundle.main.url(forResource: key.rawValue, withExtension: "mp3")
        guard soundUrl != nil else{
            return
        }
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
            audioPlayer?.play()
            audioPlayer.numberOfLoops = 100
        }catch{
            print("error")
        }
    }
    func stopSound(key: Sounds){
        let soundUrl = Bundle.main.url(forResource: key.rawValue, withExtension: "mp3")
        guard soundUrl != nil else{
            return
        }
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
            audioPlayer?.pause()
        }catch{
            print("error")
        }
    }

}


//sinif siralama sinifi
enum Sounds: String {
    case scary = "Bagirma"
    case wisthle = "Duduk"
}

