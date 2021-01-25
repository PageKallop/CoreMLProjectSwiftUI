//
//  ContentView.swift
//  CoreMLProjectSwiftUI
//
//  Created by Page Kallop on 1/25/21.
//

import SwiftUI

struct ContentView: View {
    
    let images = ["lilacs", "lake", "rock"]
    @State private var selectedImage = ""
    
    @ObservedObject private var imageDetectionVM: ImageDetectionViewModel
    private var imageDetectionMagaer: ImageDetectionManager
    init(){
        self.imageDetectionMagaer = ImageDetectionManager()
        self.imageDetectionVM = ImageDetectionViewModel(manager: self.imageDetectionMagaer)
    }
    
    var body: some View {
        NavigationView{
            VStack {
                ScrollView([.horizontal]) {
                    HStack {
                        ForEach(self.images, id: \.self) {
                            name in
                            Image(name)
                                .resizable()
                                .frame(width: 300, height: 300)
                                .padding()
                                .onTapGesture {
                                    self.selectedImage = name
                                }.border(Color.black, width: self.selectedImage == name ? 10 : 0)
                        }
                        
                    }
                }
                
                Button("Detected") {
                    self.imageDetectionVM.detect(self.selectedImage)
                }.padding()
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(15)
                Text(self.imageDetectionVM.predictionLabel)
            }
            .navigationTitle("CoreML")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
