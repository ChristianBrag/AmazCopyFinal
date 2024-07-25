//
//  MoviesView.swift
//  AmazCopy
//
//  Created by Christian Luiz Moraes Braga on 25/07/24.
//

import SwiftUI

struct MoviesView: View {
    
    @State var profilePicture: String
    @State var colocation = "2"
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
                        Image(seriesDetails[arrayIndex].picture)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400)
                            .mask(gradient)
                            .padding(.bottom, -30)
                        
                        if seriesDetails[arrayIndex].name == "The Boys" {
                            Text("#\(colocation) no Brasil")
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                                .padding()
                        }
                        
                        if seriesDetails[arrayIndex].original == true {
                            Text("AMAZON ORIGINAL")
                                .foregroundStyle(.white)
                                .font(.title3)
                                .padding(.horizontal)
                            
                        }
                        if seriesDetails[arrayIndex].logo == "TheBoysLogo" {
                            
                            Image(seriesDetails[arrayIndex].logo)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                                //.padding(.horizontal)
                            
                        } else if seriesDetails[arrayIndex].logo == "As bruxas de Mayfair de Anne Rice" {
                            
                            Text(seriesDetails[arrayIndex].logo)
                                .foregroundStyle(.white)
                                .font(.title2)
                                .padding()
                                .fontWeight(.semibold)
                            
                        } else {
                            
                            Image(seriesDetails[arrayIndex].logo)
                                .resizable()
                                .frame(width: 300, height: 30)
                                .padding(.horizontal)
                        }
                        
                        if seriesDetails[arrayIndex].name == "The Boys" {
                            
                            Menu {
                                
                                Button {
                                    
                                    arrayIndex = 0
                                    
                                } label: {
                                    
                                    Text("Temporada 1")
                                    
                                }
                                
                                Button {
                                    
                                    arrayIndex = 1
                                    
                                } label: {
                                    
                                    Text("Temporada 2")
                                    
                                }
                                
                                Button {
                                    
                                    arrayIndex = 2
                                    
                                } label: {
                                    
                                    Text("Temporada 3")
                                    
                                }
                                
                                Button {
                                    
                                    arrayIndex = 3
                                    
                                } label: {
                                    
                                    Text("Temporada 4")
                                    
                                }
                                
                            } label: {
                                
                                HStack(spacing: 0) {
                                    Text(seriesDetails[arrayIndex].season)
                                    Image(systemName: "chevron.down")
                                        .padding(.leading)
                                }
                                
                                .padding(.vertical, 10)
                                .padding(.horizontal, 10)
                                .background(Color(.darkGray))
                                .cornerRadius(12)
                                .padding(.leading)
                            }
                            
                        } else if seriesDetails[arrayIndex].name == "Invencível" {
                            
                            Menu {
                                
                                Button {
                                    
                                    arrayIndex = 4
                                    
                                } label: {
                                    
                                    Text("Temporada 1")
                                    
                                }
                                
                                Button {
                                    
                                    arrayIndex = 5
                                    
                                } label: {
                                    
                                    Text("Temporada 2")
                                    
                                }
                                
                            } label: {
                                
                                HStack(spacing: 0) {
                                    Text(seriesDetails[arrayIndex].season)
                                    Image(systemName: "chevron.down")
                                        .padding(.leading)
                                }
                                
                                .padding(.vertical, 10)
                                .padding(.horizontal, 10)
                                .background(Color(.darkGray))
                                .cornerRadius(12)
                                .padding(.leading)
                            }
                            
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
                                
                                Label("Reproduzir T\(seriesDetails[arrayIndex].seasonNumber), Ep. 1", systemImage: "play.fill")
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 94)
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
                                
                                Label("Baixar a temporada \(seriesDetails[arrayIndex].seasonNumber)", systemImage: "square.and.arrow.down")
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 88)
                                    .padding(.vertical, 9)
                                    .background(Color(.darkGray))
                                    .cornerRadius(12)
                                
                                Spacer()
                            }
                        }
                        
                        HStack() {
                            
                            VStack {
                                
                                NavigationLink {
                                    
                                    if seriesDetails[arrayIndex].name == "My Lady Jane" {
                                        Trailers(index: 6)
                                    } else if seriesDetails[arrayIndex].name == "The Boys" {
                                        Trailers(index: 8)
                                    } else if seriesDetails[arrayIndex].name == "Invencível" {
                                        Trailers(index: 5)
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
                        
                        Text(seriesDetails[arrayIndex].discription)
                            .foregroundStyle(.white)
                            .padding(.horizontal)
                            .padding(.top)
                            .padding(.bottom, 2)
                            .fontWeight(.semibold)
                        
                        HStack{
                            
                            Text(seriesDetails[arrayIndex].genre)
                            
                            Image(systemName: "circle.fill")
                                .font(.system(size: 6))
                            
                            Text(seriesDetails[arrayIndex].genre2)
                        }
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        
                        Text("IMDb \(seriesDetails[arrayIndex].imdb)")
                            .foregroundColor(Color(.darkGray))
                            .padding(.horizontal)
                            .padding(.top, 3)
                        
                        Text("\(seriesDetails[arrayIndex].episodes) episódios \(seriesDetails[arrayIndex].year)")
                            .foregroundColor(Color(.darkGray))
                            .padding(.horizontal)
                            .padding(.top, 3)
                    }
                }
            }
            .toolbar {
                
                ToolbarItemGroup(placement: .bottomBar) {
                    
                    Button {
                        
                        presentationMode.wrappedValue.dismiss()
                        
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
    MoviesView(profilePicture: "image_1", arrayIndex: 4)
}
