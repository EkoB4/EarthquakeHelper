//
//  VolumeView.swift
//  EarthquakeApp
//
//  Created by Ekin Bacik on 7.02.2023.
//

import SwiftUI
import AVFAudio
struct VolumeView: View {
    @State var soundPlayer : AVAudioPlayer!
    var body: some View {
        VStack{
            VStack{
                VStack{
                    Image("duduk")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200,height: 200)
                        .background(RoundedRectangle(cornerRadius: 20).frame(width: 300,height: 300))
                }.padding(.vertical,60)
                HStack{
                    Button {
                        self.soundPlayer.play()
                    } label: {
                        RoundedRectangle(cornerRadius: 20).overlay{Text("Play").foregroundColor(.white).bold()}
                            .foregroundColor(.blue)
                            .frame(width: 150,height: 50)
                    }
                    Button {
                        self.soundPlayer.pause()
                    } label: {
                        RoundedRectangle(cornerRadius: 20).overlay{Text("Pause").foregroundColor(.white).bold()}
                            .frame(width: 150,height: 50)
                    }
                }
        
                Spacer()
            }
        }.onAppear {
            let sound = Bundle.main.path(forResource: "Duduk", ofType: ".mp3")
            self.soundPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
    }
}

struct VolumeView_Previews: PreviewProvider {
    static var previews: some View {
        VolumeView()
    }
}
