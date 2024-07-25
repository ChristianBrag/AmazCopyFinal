//
//  LotrPictures.swift
//  AmazCopy
//
//  Created by Christian Luiz Moraes Braga on 06/07/24.
//

import SwiftUI
struct LotrPictures: View {
    
    //@Environment(\.presentationMode) var presentationMode

    
    var body: some View {
        HStack{
            /*Text("O Senhor dos Anéis: Os Anéis de Poder")
                .font(.title3)
                .padding(.horizontal, 20)
                .padding(.top)*/
        }
        
        /* HStack {
            
            ForEach(lordOfTheRingsPictures) { lotr in
                
                Button {
                    
                    newProfilePicture.removeLast()
                    newProfilePicture.append(Pictures(id: 1, picture: lotr.picture))
                    presentationMode.wrappedValue.dismiss()
                    
                    //NewProfileView(pictureNew: pic)
                    
    
                } label: {
                    
                    Image(lotr.picture)
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
    LotrPictures()
}
