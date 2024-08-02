//
//  SearchResult.swift
//  AmazCopy
//
//  Created by Christian Luiz Moraes Braga on 01/08/24.
//

import SwiftUI

struct SearchResult: View {
    
    
    @State var profilePicture: String
    @State var text: String
    let gradient = LinearGradient(
            gradient: Gradient(stops: [
                .init(color: .purple, location: 0),
                .init(color: .clear, location: 1)
            ]),
            startPoint: .top,
            endPoint: .bottom
        )
    
    var body: some View {
        
        ZStack {
            
            Color.black.ignoresSafeArea()
            
            VStack {
                
                HStack{
                    
                    Text("Pesquisar")
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .lineLimit(1)
                    
                    Spacer()
                    
                    Menu {
                        
                        Text("Nenhum dispositivo encontrado")
                        
                    } label: {
                        
                        Image(systemName: "tv.badge.wifi")
                            .foregroundColor(.white)
                            .padding()
                    }
                    
                    NavigationLink {
                        
                        ContentView(picture: $profilePicture)
                        
                    } label: {
                        
                        Image(profilePicture)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40)
                            .padding(.trailing)
                    }
                    
                }
                
                TextField("", text: $text)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 10)
                    .frame(width: 350)
                    .background(Color(.white))
                    .cornerRadius(8)
                    .foregroundColor(.gray)
                
                ScrollView {
                    
                    HStack {
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Text("Filtrar")
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                                .background(Color(.darkGray))
                                .cornerRadius(24)
                                .padding()
                                .fontWeight(.semibold)
                        }
                        
                    }
                    
                    HStack() {
                        
                        Text("Resultados")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.title3)
                            .padding()
                        
                        Spacer()
                    }
                    
                    VStack(alignment: .leading) {
                        
                        ForEach(searchResults) { results in
                            
                            HStack{
                                
                                    if results.searchFilter.contains(text) {
                                        
                                        HStack {
                                            
                                            ZStack {
                                                
                                                NavigationLink {
                                                    
                                                    if results.name == "A Fera (2022)"{
                                                        MoviesViewReal(profilePicture: profilePicture, arrayIndex: 0)
                                                        
                                                    } else if results.name == "Aprendiz de Espiã"{
                                                        MoviesViewReal(profilePicture: profilePicture, arrayIndex: 3)
                                                        
                                                    } else if results.name == "Beekeeper: Rede de Vingança"{
                                                        MoviesViewReal(profilePicture: profilePicture, arrayIndex: 1)
                                                        
                                                    } else if results.name == "Desespero Profundo"{
                                                        MoviesViewReal(profilePicture: profilePicture, arrayIndex: 4)
                                                        
                                                    } else if results.name == "Homem Aranha: Sem Volta para Casa"{
                                                        MoviesViewReal(profilePicture: profilePicture, arrayIndex: 2)
                                                        
                                                    } else if results.name == "Invencível"{
                                                        MoviesView(profilePicture: profilePicture, arrayIndex: 4)
                                                        
                                                    } else if results.name == "Minha Lady Jane"{
                                                        MoviesView(profilePicture: profilePicture, arrayIndex: 6)
                                                        
                                                    } else if results.name == "Estrondo na Escuridão"{
                                                        MoviesViewReal(profilePicture: profilePicture, arrayIndex: 5)
                                                        
                                                    } else if results.name == "The Boys"{
                                                        MoviesView(profilePicture: profilePicture, arrayIndex: 0)
                                                        
                                                    } else if results.name == "Uma Prova de Coragem"{
                                                        MoviesViewReal(profilePicture: profilePicture, arrayIndex: 6)
                                                        
                                                    } else if results.name == "As Bruxas Mayfair de Anne Rice"{
                                                        MoviesView(profilePicture: profilePicture, arrayIndex: 7)
                                                    }
                                                    
                                                } label: {
                                                    
                                                    Image(results.image)
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(width: 140)
                                                        .mask(gradient)
                                                        .overlay(alignment: .bottomLeading) {
                                                            Image(systemName: "play.circle")
                                                                .foregroundColor(.white)
                                                                .font(.title)
                                                        }
                                                    
                                                    
                                                    VStack(alignment: .leading) {
                                                        
                                                        Text(results.name)
                                                            .foregroundStyle(.white)
                                                            .fontWeight(.bold)
                                                            .multilineTextAlignment(.leading)
                                                        
                                                        HStack() {
                                                            
                                                            if results.classification == "l.square"{
                                                                Image(systemName: results.classification)
                                                                    .foregroundColor(.white)
                                                                    .background(Color(.green))
                                                                
                                                            } else if results.classification == "14.square"{
                                                                Image(systemName: results.classification)
                                                                    .foregroundColor(.white)
                                                                    .background(Color(.orange))
                                                                
                                                            } else if results.classification == "12.square"{
                                                                Image(systemName: results.classification)
                                                                    .foregroundColor(.white)
                                                                    .background(Color(.yellow))
                                                                
                                                            } else if results.classification == "18.square" {
                                                                Image(systemName: results.classification)
                                                                    .foregroundColor(.white)
                                                                    .background(Color(.black))
                                                                
                                                            } else if results.classification == "16.square"{
                                                                Image(systemName: results.classification)
                                                                    .foregroundColor(.white)
                                                                    .background(Color(.red))
                                                                
                                                            } else {
                                                                
                                                                Text(results.classification)
                                                                    .foregroundStyle(.white)
                                                                    .font(.caption2)
                                                                    .background(Color(.darkGray))
                                                                    .cornerRadius(2)
                                                                    .padding(.horizontal, 1)
                                                            }
                                                            
                                                            Text(results.year)
                                                                .foregroundStyle(.gray)
                                                                .font(.caption2)
                                                            
                                                            Text(results.duration)
                                                                .foregroundStyle(.gray)
                                                                .font(.caption2)
                                                            
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        .padding(10)
                                    }
                                
                                
                                
                                if results.searchFilter.contains(text) {
                                    
                                    Spacer()
                                    
                                    Button {
                                        
                                        //
                                        
                                    } label: {
                                        
                                        Image(systemName: "ellipsis")
                                        
                                    }
                                    .padding(30)
                                }
                            }
                        }
                    }
                    
                }
                .toolbar {
                    
                    ToolbarItemGroup(placement: .bottomBar) {
                        
                        NavigationLink {
                            
                            HomeView(profilePicture: profilePicture)
                            
                        } label: {
                            
                            VStack{
                                Image(systemName: "house.fill")
                                Text("Página inicial")
                            }
                            .font(.system(size: 15))
                        }
                        
                        Button {
                            
                        } label: {
                            
                            VStack{
                                Image(systemName: "play.tv")
                                Text("TV ao vivo")
                            }
                            .font(.system(size: 15))
                        }
                        
                        Button {
                            
                        } label: {
                            
                            VStack{
                                Image(systemName: "square.and.arrow.down")
                                Text("Downloads")
                            }
                            .font(.system(size: 15))
                        }
                        
                        Button {
                            
                            //showModal = true
                            
                        } label: {
                            
                            VStack{
                                
                                Image(systemName: "magnifyingglass")
                                Text("Pesquisar")
                            }
                        }
                        
                        //.sheet(isPresented: $showModal) {
                        //SearchView(search: $searchFilter)
                        //}
                    }
                }
                .toolbarBackground(Color.black, for: .bottomBar)
                .toolbarBackground(.visible, for: .bottomBar)
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    
                    NavigationLink {
                        
                        HomeView(profilePicture: profilePicture)
                        
                    } label: {
                        
                        Text("Cancelar")
                            .foregroundStyle(.white)
                    }
                }
            }
            
            .foregroundColor(.white)
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    SearchResult(profilePicture: "image_1", text: "a")
}
