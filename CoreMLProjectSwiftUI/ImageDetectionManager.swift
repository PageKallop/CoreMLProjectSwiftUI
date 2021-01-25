//
//  ImageDetectionManager.swift
//  CoreMLProjectSwiftUI
//
//  Created by Page Kallop on 1/25/21.
//

import Foundation
import CoreML
import UIKit

class ImageDetectionManager {
    
    let model = Resnet50()
    
    func detect (_ img: UIImage) -> String {
        
        guard let pixelBuffer = img.toCVPixelBuffer(),
              let prediction = try? model.prediction(image: pixelBuffer)
               else {
            return "No Prediction"
        }
        
        return prediction.classLabel
    }
}
