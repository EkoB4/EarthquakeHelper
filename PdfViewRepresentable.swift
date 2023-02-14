//
//  PdfViewRepresentable.swift
//  EarthquakeApp
//
//  Created by Ekin Bacik on 14.02.2023.
//

import Foundation
import SwiftUI
import PDFKit

struct PDFViewRepresentable : UIViewRepresentable{
    let documentUrl : URL
    init(documentUrl: URL) {
        self.documentUrl = documentUrl
    }
    
    func makeUIView(context: Context) -> some UIView {
        let pdfView : PDFView = PDFView()
        
        pdfView.document = PDFDocument(url: documentUrl)
        pdfView.minScaleFactor = 0.5
        pdfView.maxScaleFactor = 5.0
        
        return pdfView
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        //
    }
}
let programUrl = Bundle.main.url(forResource: "27153958_SINIF-CARSAF-28-KASIM", withExtension: "pdf")!
