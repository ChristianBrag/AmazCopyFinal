//
//  ViewProfilePic.swift
//  AmazCopy
//
//  Created by Christian Luiz Moraes Braga on 10/07/24.
//

import SwiftUI

struct ViewProfilePic: View {
    
    //@Binding var changePic: String
    //@Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{}
       /* ZStack {
            Color(.black).ignoresSafeArea()
            
            VStack {
                HStack {
                    
                    Text("Os clássicos")
                        .font(.title3)
                        .padding(.horizontal, 20)
                        .foregroundColor(.white)
                    Spacer()
                }
                
                HStack {
                    
                    ForEach(profilePicturesMock) { pic in
                        
                        Button {
                            
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
                    
                }
                HStack{
                    Text("O Senhor dos Anéis: Os Anéis de Poder")
                        .font(.title3)
                        .padding(.horizontal, 20)
                        .padding(.top)
                        .foregroundColor(.white)
                }
                
                HStack {
                    
                    ForEach(lordOfTheRingsPictures) { lotr in
                        
                        Button {
                            
                            presentationMode.wrappedValue.dismiss()
                            
                        } label: {
                            
                            Image(lotr.picture)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80)
                                
                        }
                    }
                    .padding(.leading)
                    Spacer()
                        
                }
                HStack {
                    Text("Fallout")
                        .font(.title3)
                        .padding(.horizontal, 20)
                        .padding(.top)
                        .foregroundColor(.white)
                    Spacer()
                }
                
                HStack {
                    
                    ForEach(falloutPictures) { fallout in
                        
                        Button {
                            
                            presentationMode.wrappedValue.dismiss()
            
                        } label: {
                            
                            Image(fallout.picture)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80)
                                
                        }
                    }
                    .padding(.leading)
                    Spacer()
                }
            }
        }*/
    }
}

#Preview {
    ViewProfilePic()
}
