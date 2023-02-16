//
//  ContentView.swift
//  EarthquakeApp
//
//  Created by Ekin Bacik on 7.02.2023.
//

import SwiftUI
struct IstanbulPdfView: View {
    @State private var viewModal : PDFViewModal = PDFViewModal()
    var body: some View {
        VStack{
            VStack{
               
                Color("Blue3").ignoresSafeArea()
                    .frame(height: 100)
                    .overlay {
                        HStack{
                            Text("Istanbul")
                                .bold()
                                .font(.title)
                                .foregroundColor(.white)
                            
                            Text("Deprem Raporlari")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .bold()
                        }
                        
                    }
            }
            VStack{
                ScrollView(.vertical){
                    ForEach(viewModal.pdfViewItems){ pdfItem in
                        RoundedRectangle(cornerRadius: 20).frame(width: 280,height: 120)
                            .foregroundColor(Color("White1"))
                            .overlay {
                                VStack{
                                    HStack{
                                        Text(pdfItem.mainText)
                                            .bold()
                                            .foregroundColor(.gray)
                                            .offset(x:-70)
                                            .font(.title2)
                                    }
                                    Link(destination: pdfItem.pdfLink){
                                        VStack{
                                            Text(pdfItem.pdfName).foregroundColor(.white)
                                                .bold()
                                                .font(.title)
                                                .background {
                                                    RoundedRectangle(cornerRadius: 20)
                                                        .frame(width: 200,height: 50)
                                                        .foregroundColor(Color("Blue2"))
                                                    
                                                }
                                        }.padding()
                                    }
                                }
                            }
                    }
                }
            }
        }
    }
}

struct IstanbulPdfView_Previews: PreviewProvider {
    static var previews: some View {
        IstanbulPdfView()
    }
}
