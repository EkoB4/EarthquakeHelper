//
//  PdfViewRepresentable.swift
//  EarthquakeApp
//
//  Created by Ekin Bacik on 14.02.2023.
//

import Foundation
import SwiftUI


struct PdfModal: Identifiable{
    var id: UUID = UUID()
    var pdfName : String
    var pdfLink : URL
    var mainText: String
}

extension PdfModal{
    static let pdfItems = [PdfModal(pdfName: "Istanbul1", pdfLink: URL(string: "https://www.hackingwithswift.com/quick-start/swiftui")!, mainText: "First PDf"),PdfModal(pdfName: "Istanbul1", pdfLink: URL(string: "https://www.hackingwithswift.com/quick-start/swiftui")!, mainText: "SecondPDF"),PdfModal(pdfName: "Istanbul1", pdfLink: URL(string: "https://www.hackingwithswift.com/quick-start/swiftui")!, mainText: "ThirdPDf"),PdfModal(pdfName: "Istanbul1", pdfLink: URL(string: "https://www.hackingwithswift.com/quick-start/swiftui")!, mainText: "forthPdf")]
    
}
