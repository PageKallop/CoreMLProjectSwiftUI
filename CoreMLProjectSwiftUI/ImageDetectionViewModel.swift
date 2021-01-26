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
    
     @Published var predictionLabel: String = ""
    
    init(manager: ImageDetectionManager) {
        self.manager = manager
    }
    
    func detect(_ name: String) {
        
        let sourceImage = UIImage(named: name)
        
        guard let resizedImage = sourceImage?.resizeImage(targetSize: CGSize(width: 224, height: 224)) else {
            fatalError()
        }
       
          var label = self.manager.detect(resizedImage)
          self.predictionLabel = label
           
    
    }
}

