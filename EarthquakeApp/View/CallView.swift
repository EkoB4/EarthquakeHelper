//
//  CallView.swift
//  EarthquakeApp
//
//  Created by Ekin Bacik on 10.02.2023.
//

import SwiftUI

struct CallView: View {
    @State var Emergency = "112"
    @State var Location = "7777"
    var body: some View {
        VStack{
            VStack{
                Button {
                    let phoneApp = "tel://"
                    let numberFormat = phoneApp + Emergency
                    
                    guard let url = URL(string: numberFormat) else {return}
                    UIApplication.shared.open(url)
                } label: {
                    Text("Call Emergency").foregroundColor(.white)
                        .bold()
                        .background(RoundedRectangle(cornerRadius: 20)
                            .frame(width: 200,height: 50)
                            .foregroundColor(.red))
                }
            }.padding(.bottom,50)
            VStack{
                Button {
                    let messageApp = "messages://"
                    let messageFormat = messageApp + Location
                    guard let messageUrl = URL(string: messageFormat) else {return}
                    UIApplication.shared.open(messageUrl)
                } label: {
                    Text("Where Im I").foregroundColor(.white)
                        .bold()
                        .background(RoundedRectangle(cornerRadius: 20)
                            .frame(width: 200,height: 50)
                            .foregroundColor(.red))
                }            }
        }
    }
}

struct CallView_Previews: PreviewProvider {
    static var previews: some View {
        CallView()
    }
}
