//
//  ImageDetectionViewModel.swift
//  CoreMLProjectSwiftUI
//
//  Created by Page Kallop on 1/25/21.
//

import Foundation
import SwiftUI
import Combine

class ImageDetectionViewModel: ObservableObject {
    
    var name: String = ""
    var manager: ImageDetectionManager
    
    @Published var predictionLavel: String = "" 
    
    init(manager: ImageDetectionManager) {
        self.manager = manager
    }
    
    func detect(_ name: String) {
        
        
    }
}
