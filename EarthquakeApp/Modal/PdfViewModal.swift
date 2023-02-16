//
//  PdfViewModal.swift
//  EarthquakeApp
//
//  Created by Ekin Bacik on 15.02.2023.
//

import Foundation
import SwiftUI

class PDFViewModal : ObservableObject{
    init(){
        pdfViewItems = PdfModal.pdfItems
    }
    @Published var pdfViewItems : [PdfModal]
}
