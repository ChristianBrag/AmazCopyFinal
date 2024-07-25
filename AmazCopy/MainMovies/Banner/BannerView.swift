//
//  BannerView.swift
//  AmazCopy
//
//  Created by Christian Luiz Moraes Braga on 19/07/24.
//

import SwiftUI

struct BannerView: View {
    
    var banner: BannerStruct
    
    var body: some View {
        ZStack {
            Color(.black).ignoresSafeArea()
            
            if banner.image == "Uma Prova de Coragem" {
                Image(banner.image)
                    .resizable()
                    .cornerRadius(12)
                    .frame(width: 380, height: 210)
            } else {
                Image(banner.image)
                
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .frame(height: 210)
            }
        }
    }
}

#Preview {
    BannerView(banner: banner[0])
}
