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
                        }.padding(.bottom,UIScreen.main.bounds.height/1.5)
                        VStack{
                            Image("istanbul")
                                 .resizable()
                                 .cornerRadius(20)
                                 .frame(width: 350,height: 200)
                            HStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color("Blue1"))
                                    .frame(width: 100,height: 120)
                                    .overlay {
                                        NavigationLink(destination: CallView()) {
                                            Text("CallView")
                                                .font(.title)
                                                .bold()
                                                .foregroundColor(.white)
                                        }
                                    }
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color("Blue1"))
                                    .frame(width: 200,height: 120)
                                    .overlay {
                                        NavigationLink(destination: LocationView()) {
                                            Text("Location View")
                                                .font(.title)
                                                .bold()
                                                .foregroundColor(.white)
                                        }
                                    }
                            }.padding()
                            VStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color("Blue1"))
                                    .frame(width: 320,height: 120)
                                    .overlay {
                                        NavigationLink(destination: LocationView()) {
                                            Text("Istanbul earthquake reports")
                                                .font(.title)
                                                .bold()
                                                .foregroundColor(.white)
                                        }
                                    }
                            }
                        }.padding(.top,UIScreen.main.bounds.height*0.13)
                    })
                    .ignoresSafeArea()
                    .foregroundColor(Color("Blue2"))
                }
            }
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
