//
//  ProfilePictures.swift
//  AmazCopy
//
//  Created by Christian Luiz Moraes Braga on 05/07/24.
//

import SwiftUI

struct ProfilePicturesView: View {
    
    @Binding var changePic: String
    @Environment (\.presentationMode) var presentationMode
    let pictures: Pictures
    @State private var picture = "image_1"
    @Binding var id: Int
    
    var body: some View {
        VStack {
            /*HStack(spacing: 15) {
                
                Spacer()
                
                        Menu {
                            Text("Nenhum dispositivo encontrado")
                        } label: {
                            Image(systemName: "tv.badge.wifi")
                        }

                    
                NavigationLink {
                    
                    Profiles(picture: $picture)
                    
                } label: {
                    
                    Image(picture)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                }
            }
            .padding()
         */
            Text("Alterar imagem de perfil")
                .font(.title2)
                .padding(.bottom, 10)
            
            ScrollView {
                VStack {
                    
                    VStack{
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
                                    if profileMocker.count == id {
                                        profileMocker[id - 1].picture = pic.picture
                                    }
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
                                    
                                    if profileMocker.count == id {
                                        profileMocker[id - 1].picture = lotr.picture
                                    }
                                    changePic = lotr.picture
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
                                    if profileMocker.count == id {
                                        profileMocker[id - 1].picture = fallout.picture
                                    }
                                    changePic = fallout.picture
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
                    
                }
                
            }
            
            Spacer()
        }
        .background(Color(.black))
        .foregroundColor(.white)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                
                Button {
                    
                    presentationMode.wrappedValue.dismiss()
                    
                } label: {
                    
                    Text("Cancelar")
                        .foregroundStyle(.white)
                }
            }
        }
    }
        
}

#Preview {
    ProfilePicturesView(changePic: .constant("image_1"), pictures: profilePicturesMock[0], id: .constant(0))
}
