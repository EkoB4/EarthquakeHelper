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
            List{
                Section(header:Text("For Emergency").bold()){
                    Button{
                        let phoneApp = "tel://"
                        let numberFormat = phoneApp + Emergency
                        
                        guard let url = URL(string: numberFormat) else {return}
                        UIApplication.shared.open(url)
                    } label: {
                        Text("Call Emergency").foregroundColor(.red)
                    }
                    Button {
                        let messageApp = "messages://"
                        let messageFormat = messageApp + Location
                        guard let messageUrl = URL(string: messageFormat) else {return}
                        UIApplication.shared.open(messageUrl)
                    } label: {
                        HStack{
                            Text("Detailed location with sms").foregroundColor(Color("Blue2"))
                                .bold()
                        }
                    }
                    
                    
                }
                Section(header: Text("Need to do")) {
                    Link(destination: URL(string: "https://www.cimer.gov.tr/")!) {
                        Text("Go CIMER help")
                            .foregroundColor(Color("Blue2"))
                            .bold()
                    }
                    Link(destination: URL(string: "https://ahbap.org/")!) {
                        Text("For Help with AHBAP")
                            .font(.subheadline)
                            .foregroundColor(Color("Blue2"))
                            .bold()
                    }
                    Link(destination: URL(string: "https://www.kizilay.org.tr/bagis")!) {
                        Text("For Help with Kizilay")
                            .font(.subheadline)
                            .foregroundColor(Color("Blue2"))
                            .bold()
                    }
                    
                }
            }
        }
    }
}


struct CallView_Previews: PreviewProvider {
    static var previews: some View {
        CallView()
    }
}

