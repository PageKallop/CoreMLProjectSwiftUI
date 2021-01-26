//
//  CameraView.swift
//  CoreMLProjectSwiftUI
//
//  Created by Page Kallop on 1/26/21.
//

import SwiftUI

struct CameraView: View {
    
    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil 
    var body: some View {
       
        VStack {
           
            Button("open camera") {
                
            }.padding()
            .font(.title)
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(16)
            
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
