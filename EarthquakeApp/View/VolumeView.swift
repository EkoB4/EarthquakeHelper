//
//  VolumeView.swift
//  EarthquakeApp
//
//  Created by Ekin Bacik on 7.02.2023.
//

import SwiftUI
import AVFAudio
struct VolumeView: View {
    
    let manager: AudioButtonOperation = AudioButtonOperation()
    
    var body: some View {
        ScrollView(.vertical){
            VStack{
                VStack{
                    VStack{
                       LottieViewModal(lottie: "whistle")
                            .frame(width: 400,height: 200)
                            .background(RoundedRectangle(cornerRadius: 20).frame(width: 200,height: 200))
                            .foregroundColor(Color("Blue3"))
                    }
                    HStack{
                        Button {
                            manager.playSound(key: .wisthle)
                        } label: {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 200,height: 50).overlay {
                                    Text("Play").foregroundColor(.white).bold().font(.system(size: 20))
                                }
                        }.foregroundColor(Color("Blue1"))
                        Button {
                            manager.stopSound(key: .wisthle)
                        } label: {
                            RoundedRectangle(cornerRadius: 20).overlay(content: {
                                Text("Stop").foregroundColor(.white).bold().font(.system(size: 20))
                            })
                            .frame(width: 100,height: 50)
                        }.foregroundColor(Color("Blue1"))
                    }
                    VStack{
                        LottieViewModal(lottie: "Scream")
                            .frame(width: 300,height: 200)
                            .background(RoundedRectangle(cornerRadius: 20).frame(width: 200,height: 200))
                            .foregroundColor(Color("Blue3"))
                    }//.padding(.vertical,10)
                    HStack{
                        Button {
                            manager.playSound(key: .scary)
                        } label: {
                            RoundedRectangle(cornerRadius: 20).frame(width: 200,height: 50)
                                .overlay {Text("Play").foregroundColor(.white).bold().font(.system(size: 20))}
                        }.foregroundColor(Color("Blue1"))
                        Button {
                            manager.stopSound(key: .scary)
                        } label: {
                            RoundedRectangle(cornerRadius: 20).overlay {Text("Stop").foregroundColor(.white).bold().font(.system(size: 20))}.frame(width: 100,height: 50)
                        }.foregroundColor(Color("Blue1"))
                    }
                }
            }
        }
    }
}

struct VolumeView_Previews: PreviewProvider {
    static var previews: some View {
        VolumeView()
    }
}
