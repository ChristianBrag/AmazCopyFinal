//
//  SwiftUIView.swift
//  AmazCopy
//
//  Created by Christian Luiz Moraes Braga on 02/08/24.
//

import SwiftUI
import AVKit

struct Trailers: View {
    
    @Environment (\.presentationMode) var presentationMode
    @State var index: Int
    @State var player = AVPlayer()
    var videoURL: URL? {
        Bundle.main.url(forResource: Trailer[index].name, withExtension: "mp4")
    }
    
    var body: some View {
        
        ZStack {
            
            Color.black.ignoresSafeArea()
            
            if let videoURL {
                
                VideoPlayer(player: player)
                            .edgesIgnoringSafeArea(.all)
                            .navigationBarBackButtonHidden()
                            .onAppear {
                                
                                
                                player = AVPlayer(url: videoURL)
                                player.play()
                                
                            }
                            .onDisappear {
                                player.pause()
                            }
                            
                
            } else {
                Text("Failed")
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                
                Button {
                    
                    presentationMode.wrappedValue.dismiss()
                    
                } label: {
                    
                    Text("Voltar")
                        .foregroundStyle(.white)
                }
            }
        }
        .foregroundColor(.white)
    }
}

#Preview {
    Trailers(index: 0)
}
