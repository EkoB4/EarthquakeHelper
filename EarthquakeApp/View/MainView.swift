//
//  MainView.swift
//  EarthquakeApp
//
//  Created by Ekin Bacik on 13.02.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack{
            NavigationView {
                VStack{
                    BannerShape().padding(.bottom,300).overlay(content: {
                        VStack{
                            Text("Istanbul Earthquake App").foregroundColor(.white)
                                .bold().font(.title)
                        }.padding(.bottom,UIScreen.main.bounds.height/1.2)
                        
                        VStack{
                            
                            HStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(.white)
                                    .shadow(radius: 20)
                                    .frame(width: 140,height: 140)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 20)
                                            .foregroundColor(Color("Blue3"))
                                            .frame(width: 110,height: 110)
                                            .overlay {
                                                NavigationLink(destination: CallView()) {
                                                    Image("Alert")
                                                        .resizable()
                                                        .frame(width: 60,height: 60)
                                                        
                                                }
                                            }
                                    }
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(.white)
                                    .shadow(radius: 20)
                                    .frame(width: 200,height: 140)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 20)
                                            .foregroundColor(Color("Blue3"))
                                            .frame(width: 180,height: 110)
                                            .overlay {
                                                NavigationLink(destination: LocationView()) {
                                                    Image("maps")
                                                        .resizable()
                                                        .frame(width: 60,height: 60)
                                                        
                                                }
                                            }
                                    }
                                
                            }
                            VStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(.white)
                                    .shadow(radius: 20)
                                    .frame(width: 350,height: 140)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 20)
                                            .foregroundColor(Color("Blue3"))
                                            .frame(width: 300,height: 110)
                                            .overlay {
                                                NavigationLink(destination: VolumeView()) {
                                                    Image("Sound")
                                                        .resizable()
                                                        .frame(width: 80,height: 80)
                                                    
                                                }
                                            }
                                    }
                            }
                            VStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(.white)
                                    .shadow(radius: 20)
                                    .frame(width: 350,height: 80)
                                    .overlay {
                                        NavigationLink(destination: IstanbulPdfView()) {
                                            RoundedRectangle(cornerRadius: 20).frame(width: 300,height:60)
                                                .overlay {
                                                    Text("Istanbul earthquake reports")
                                                        .font(.title2)
                                                        .bold()
                                                        .foregroundColor(.white)

                                                }
                                        }
                                    }
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(.white)
                                    .shadow(radius: 20)
                                    .frame(width: 350,height: 80)
                                    .overlay {
                                        NavigationLink(destination: IstanbulPdfView()) {
                                            RoundedRectangle(cornerRadius: 20).frame(width: 300,height:60)
                                                .overlay {
                                                    Text("Istanbul earthquake reports")
                                                        .font(.title2)
                                                        .bold()
                                                        .foregroundColor(.white)

                                                }
                                        }
                                    }
                            }
                        }.padding(.top,UIScreen.main.bounds.height/15)
                    })
                    .ignoresSafeArea()
                    .foregroundColor(Color("Blue2"))
                }
            }.accentColor(Color("Blue2"))
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct BannerShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addQuadCurve(to: CGPoint(x: 0, y: rect.maxY), control: CGPoint(x: rect.midX, y: rect.maxY + 100))
        
        return path
    }
}
