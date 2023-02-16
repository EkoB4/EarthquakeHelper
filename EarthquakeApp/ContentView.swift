//
//  ContentView.swift
//  EarthquakeApp
//
//  Created by Ekin Bacik on 7.02.2023.
//

import SwiftUI
struct ContentView: View {
    @State private var viewModal : PDFViewModal = PDFViewModal()
    var body: some View {
        VStack{
            Color("Blue3").ignoresSafeArea()
            VStack{
                ScrollView(.vertical){
                    ForEach(viewModal.pdfViewItems){ pdfItem in
                        RoundedRectangle(cornerRadius: 20).frame(width: 280,height: 100)
                            .overlay {
                                VStack{
                                    HStack{
                                        Text(pdfItem.mainText)
                                            .bold()
                                            .foregroundColor(.white)
                                            .offset(x:-70)
                                    }
                                    Link(destination: pdfItem.pdfLink){
                                        HStack{
                                            Text(pdfItem.pdfName)
                                        }
                                    }
                                    
                                }
                                Spacer()
                            }
                        
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
