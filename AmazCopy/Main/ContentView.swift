//
//  ContentView.swift
//  AmazCopy
//
//  Created by Christian Luiz Moraes Braga on 05/07/24.
//

import SwiftUI

struct ContentView: View {
    
    let gridLine = GridItem(.fixed(150))
    
    @Environment (\.presentationMode) var presentationMode
    @State var profileMock = profileMocker
    @State var edit = false
    @Binding var picture: String
    
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                Color(.black).ignoresSafeArea()
                
                VStack {
                    Text("Quem está assistindo?")
                        .font(.title)
                        .foregroundStyle(.white)
                    
                    LazyVGrid(columns: Array(repeating: gridLine, count: 2)) {
                        
                        ForEach(profileMocker) { profile in
                            
                            if edit == false {
                                
                                NavigationLink {
                                    
                                    HomeView(profilePicture: profile.picture)
                                    
                                } label: {
                                    
                                    VStack{
                                        
                                        Image(profile.picture)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 80)
                                        
                                        Text(profile.name)
                                            .foregroundStyle(.white)
                                            .frame(width: 130)
                                            .lineLimit(1)
                                    }
                                }
                                
                            } else {
                                
                                VStack{
                                    
                                    NavigationLink {
                                        
                                        ProfileEdit(newName: $profileMock[profile.id - 1].name, picture: $profileMock[profile.id - 1].picture, profileMock: $profileMock, arrayId: $profileMock[profile.id - 1].id, modify: $edit)
                                        
                                    } label: {
                                        
                                        VStack(spacing: 19){
                                            
                                            Image(systemName: "pencil")
                                                .background {
                                                    Image(profile.picture)
                                                        .resizable()
                                                        .frame(width: 80, height: 80)
                                                    
                                                }
                                                .font(.system(size: 60))
                                                .foregroundColor(.white)
                                                .padding(.top, 12)
                                            
                                            Text(profile.name)
                                                .foregroundStyle(.white)
                                                .frame(width: 130)
                                                .lineLimit(1)
                                            
                                        }
                                    }
                                }
                            }
                        }
                        
                        if profileMocker.count < 4 && edit == false{
                            NavigationLink {
                                
                                NewProfileView(profileMock: $profileMock, pictureNew: "image_2")
                                
                            } label: {
                                VStack {
                                    Image(systemName: "plus.circle.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80)
                                        .foregroundColor(Color(.darkGray))
                                    
                                    
                                    
                                    Text("Novo")
                                        .lineLimit(1)
                                        .frame(width: 130)
                                        .foregroundColor(.white)
                                    
                                }
                            }
                        }
                    }
                    
                    Spacer()
                    
                    Button {
                        if edit == false {
                            edit = true
                        } else {
                            edit = false
                        }
                        
                    } label: {
                        Text("Editar perfis")
                            .padding(.horizontal, 90)
                            .padding(.vertical)
                            .background(Color(.darkGray))
                        //.frame(height: 80)
                            .cornerRadius(15)
                            .foregroundColor(.white)
                    }
                    
                    Button {
                        
                        //
                        
                    } label: {
                        
                        if profileMocker.count <= 2 {
                            Text("Saiba mais")
                                .foregroundColor(.blue)
                                .underline()
                        }
                    }
                    .padding(30)
                }
            }
        }
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
    ContentView(picture: .constant(""))
}
