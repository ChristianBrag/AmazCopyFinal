//
//  ClassicPictures.swift
//  AmazCopy
//
//  Created by Christian Luiz Moraes Braga on 06/07/24.
//

import SwiftUI

struct ClassicPictures: View {
    
    //@Binding var changePic: String
    //@Binding var pictureNew: String
    //@Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        HStack {
            
            /*Text("Os clássicos")
                .font(.title3)
                .padding(.horizontal, 20)
         Spacer()*/
        }
        
        /*HStack {
    
            ForEach(profilePicturesMock) { pic in
                
                Button {
                    changePic = pic.picture
                    presentationMode.wrappedValue.dismiss()
    
                } label: {
                    
                    Image(pic.picture)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80)
                        
                }
            }
            .padding(.leading)
            Spacer()
                
        }*/
    }
}

#Preview {
    ClassicPictures()
}
