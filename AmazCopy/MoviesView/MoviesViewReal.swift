//
//  MoviesViewReal.swift
//  AmazCopy
//
//  Created by Christian Luiz Moraes Braga on 31/07/24.
//

import SwiftUI

struct MoviesViewReal: View {
    
    @State var profilePicture: String
    @State var colocation = "5"
    @State var arrayIndex: Int
    @Environment (\.presentationMode) var presentationMode
    let gradient = LinearGradient(
            gradient: Gradient(stops: [
                .init(color: .purple, location: 0),
                .init(color: .clear, location: 1)
            ]),
            startPoint: .top,
            endPoint: .bottom
        )
    
    @State private var filter = "Todos"
    @State var numberFilter = 0
    @State private var showModal = false
    @State private var searchFilter = ""
    
    var body: some View {
        
        ZStack {
            
            Color.black.ignoresSafeArea()
            
            VStack {
                
                HStack{
                    
                    Image("AllBluePrime")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70)
                        .padding(.horizontal)
                    
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
                
                ScrollView {
                    
                    VStack(alignment: .leading) {
                        Image(moviesDetails[arrayIndex].picture)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400)
                            .mask(gradient)
                            .padding(.bottom, -30)
                        
                        if moviesDetails[arrayIndex].name == "Aprendiz de Espiã" {
                            Text("#\(colocation) no Brasil")
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                                .padding()
                        }
                        
                        if moviesDetails[arrayIndex].original == true {
                            Text("AMAZON ORIGINAL")
                                .foregroundStyle(.white)
                                .font(.title3)
                                .padding(.horizontal)
                            
                        }
                        if moviesDetails[arrayIndex].hasLogo {
                            
                            Image(moviesDetails[arrayIndex].logo)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                                .padding(.horizontal)
                            
                        } else {
                            
                            Text(moviesDetails[arrayIndex].logo)
                                .foregroundStyle(.white)
                                .font(.title2)
                                .padding()
                                .fontWeight(.semibold)
                            
                        }
                        
                        HStack {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.blue)
                            
                            Text("Incluído no Prime")
                                .foregroundStyle(.white)
                        }
                        .font(.subheadline)
                        .padding(.horizontal)
                        
                        Button {
                            
                        } label: {
                            HStack{
                                Spacer()
                                
                                Label("Reproduzir", systemImage: "play.fill")
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 130)
                                    .padding(.vertical, 10)
                                    .background(Color(.white))
                                    .cornerRadius(12)
                                
                                Spacer()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            HStack{
                                
                                Spacer()
                                
                                Label("Baixar", systemImage: "square.and.arrow.down")
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 146)
                                    .padding(.vertical, 10)
                                    .background(Color(.darkGray))
                                    .cornerRadius(12)
                                
                                Spacer()
                            }
                        }
                        
                        HStack() {
                            
                            VStack {
                                
                                NavigationLink {
                                    
                                    if moviesDetails[arrayIndex].name == "A Fera" {
                                        Trailers(index: 0)
                                    } else if moviesDetails[arrayIndex].name == "Beekeeper" {
                                        Trailers(index: 2)
                                    } else if moviesDetails[arrayIndex].name == "Homem Aranha: Sem Volta Para Casa" {
                                        Trailers(index: 4)
                                    } else if moviesDetails[arrayIndex].name == "Aprendiz de Espiã" {
                                        Trailers(index: 1)
                                    } else if moviesDetails[arrayIndex].name == "Desespero Profundo" {
                                        Trailers(index: 3)
                                    } else if moviesDetails[arrayIndex].name == "Rumble" {
                                        Trailers(index: 7)
                                    } else if moviesDetails[arrayIndex].name == "Uma Prova de Coragem" {
                                        Trailers(index: 9)
                                    }
                                    
                                } label: {
                                    
                                    VStack {
                                        
                                        Image(systemName: "play.square")
                                            .foregroundColor(.white)
                                            .padding(.bottom, 5)
                                        
                                        Text("Trailer")
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                            .font(.caption)
                            .padding(.horizontal)
                            
                            
                            VStack {
                                
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                                    .padding(.bottom, 5)
                                
                                Text("Lista")
                                    .foregroundColor(.white)
                            }
                            .font(.caption)
                            .padding(.trailing)
                            
                            VStack {
                                
                                Image(systemName: "hand.thumbsup")
                                    .foregroundColor(.white)
                                    .padding(.bottom, 5)
                                
                                Text("Curtir")
                                    .foregroundColor(.white)
                            }
                            .font(.caption)
                            .padding(.trailing)
                            
                            VStack {
                                
                                Image(systemName: "hand.thumbsdown")
                                    .foregroundColor(.white)
                                    .padding(.bottom, 5)
                                
                                Text("Não tenho interese")
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                            }
                            .font(.caption)
                            .padding(.top, 17)
                            .padding(.trailing)
                            
                            VStack {
                                Image(
                                    systemName: "arrow.left.arrow.right")
                                    .foregroundColor(.white)
                                    .padding(.bottom, 5)
                                
                                Text("Episódios em ordem aleatória")
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                            }
                            .padding(.top, 33)
                            .font(.caption)
                            .padding(.trailing)
                        }
                        .padding(.horizontal)
                        
                        Text(moviesDetails[arrayIndex].discription)
                            .foregroundStyle(.white)
                            .padding(.horizontal)
                            .padding(.top)
                            .padding(.bottom, 2)
                            .fontWeight(.semibold)
                        
                        HStack{
                            
                            Text(moviesDetails[arrayIndex].genre)
                            
                            Image(systemName: "circle.fill")
                                .font(.system(size: 6))
                            
                            Text(moviesDetails[arrayIndex].genre2)
                        }
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        
                        Text("IMDb \(moviesDetails[arrayIndex].imdb)")
                            .foregroundColor(Color(.darkGray))
                            .padding(.horizontal)
                            .padding(.top, 3)
                        
                        Text("\(moviesDetails[arrayIndex].season) \(moviesDetails[arrayIndex].year)")
                            .foregroundColor(Color(.darkGray))
                            .padding(.horizontal)
                            .padding(.top, 3)
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
                    
                    NavigationLink {
                        
                        SearchView(profilePicture: profilePicture)
                        
                    } label: {
                        
                        VStack{
                            
                            Image(systemName: "magnifyingglass")
                            Text("Pesquisar")
                        }
                    }
                }
            }
            .toolbarBackground(Color.black, for: .bottomBar)
            .toolbarBackground(.visible, for: .bottomBar)
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    MoviesViewReal(profilePicture: "image_1", arrayIndex: 0)
}
