//
//  FalloutPictures.swift
//  AmazCopy
//
//  Created by Christian Luiz Moraes Braga on 06/07/24.
//

import SwiftUI
struct FalloutPictures: View {
    
    //@Environment(\.presentationMode) var presentationMode

    
    var body: some View {
        HStack {
            /*Text("Fallout")
                .font(.title3)
                .padding(.horizontal, 20)
                .padding(.top)
            Spacer()*/
        }
        
        /*HStack {
            
            ForEach(falloutPictures) { fallout in
                
                Button {
                    
                    newProfilePicture.removeLast()
                    newProfilePicture.append(Pictures(id: 1, picture: fallout.picture))
                    presentationMode.wrappedValue.dismiss()
                    //NewProfileView(pictureNew: pic)
                    
    
                } label: {
                    
                    Image(fallout.picture)
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
    FalloutPictures()
}
