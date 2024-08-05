//
//  HomeView.swift
//  AmazCopy
//
//  Created by Christian Luiz Moraes Braga on 18/07/24.
//

import SwiftUI

struct HomeView: View {
    
    //var filterButtons: ProfileStruct
    @State private var filter = "Todos"
    @State var numberFilter = 0
    @State private var searchText = ""
    @State private var showModal = false
    @State private var searchFilter = ""
    @State var profilePicture: String
    var index = [0, 4, 6, 7, 3, 4, 5, 6, 1, 2]
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                
                Color(.black).ignoresSafeArea()
                
                
                
                ScrollView {
                    VStack {
                        HStack {
                            Image("WhitePrimeVideo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                                .padding(.leading)
                            
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
                        
                        HStack() {
                            
                            ForEach(filterButton) { button in
                                
                                Button {
                                    
                                    if button.name != filter {
                                        filter = button.name
                                    }
                                    
                                    if filter == "Todos" {
                                        numberFilter = 0
                                    } else if filter == "Séries" {
                                        numberFilter = 2
                                    } else if filter == "Filmes" {
                                        numberFilter = 1
                                    } else { numberFilter = 3
                                    }
                                    
                                } label: {
                                    
                                    if button.name == filter {
                                        
                                        Text(button.name)
                                            .foregroundStyle(.black)
                                            .bold()
                                            .padding(.horizontal, 10)
                                            .padding(.vertical, 7)
                                            .font(.system(size: 15))
                                            .background(Color.white)
                                            .cornerRadius(40)
                                        
                                        
                                    } else {
                                        
                                        Text(button.name)
                                            .foregroundStyle(.white)
                                            .bold()
                                            .padding(.horizontal, 10)
                                            .padding(.vertical, 7)
                                            .font(.system(size: 15))
                                    }
                                }
                            }
                        }
                        
                        TabView {
                            
                            ForEach(banner) { banner in
                                
                                if numberFilter == 0 {
                                    
                                    if banner.image == "Uma Prova de Coragem Banner" {
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
                                } else if numberFilter == banner.type {
                                    
                                    if banner.image == "Uma Prova de Coragem Banner" {
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
                        .tabViewStyle(.page(indexDisplayMode: .automatic))
                        .frame(height: 230)
                        
                        //Text(String(numberFilter))
                        //.foregroundStyle(.white)
                        
                        HStack {
                            if numberFilter != 3 {
                                Text("Prime - Originais, Exclusivos e Destaques")
                                    .bold()
                            } else {
                                Text("Nada aqui ainda")
                                    .bold()
                            }
                            Spacer()
                            
                        }
                        .foregroundColor(.white)
                        .padding(.leading, 20)
                        
                        ScrollView(.horizontal) {
                            
                            HStack(spacing: 20){
                                
                                if numberFilter == 0 {
                                    
                                    ForEach(allMock) { movies in
                                        
                                        NavigationLink {
                                            
                                            if movies.name == "Bruxas de Mayfair" {
                                                MoviesView(profilePicture: profilePicture, arrayIndex: index[2])
                                            } else if movies.name == "Minha Lady Jane" {
                                                MoviesView(profilePicture: profilePicture, arrayIndex: index[3])
                                            } else if movies.name == "The Boys" {
                                                MoviesView(profilePicture: profilePicture, arrayIndex: index[0])
                                            } else if movies.name == "Aprendiz de Espiã" {
                                                MoviesViewReal(profilePicture: profilePicture, arrayIndex: index[4])
                                            } else if movies.name == "Desespero Profundo" {
                                                MoviesViewReal(profilePicture: profilePicture, arrayIndex: index[5])
                                            } else if movies.name == "Rumble" {
                                                MoviesViewReal(profilePicture: profilePicture, arrayIndex: index[6])
                                            } else if movies.name == "Uma Prova de Coragem" {
                                                MoviesViewReal(profilePicture: profilePicture, arrayIndex: index[7])
                                            }
                                            
                                        } label: {
                                            
                                            if numberFilter == 0 && movies.id <= 7 {
                                                
                                                Image(movies.image)
                                                    .resizable()
                                                    .cornerRadius(12)
                                                    .frame(width: 140, height: 200)
                                            }
                                        }
                                    }
                                } else if numberFilter == 1 {
                                    
                                    ForEach(moviesMock) { movies in
                                        
                                        NavigationLink {
                                            
                                            if movies.name == "Aprendiz de Espiã" {
                                                MoviesViewReal(profilePicture: profilePicture, arrayIndex: index[4])
                                            } else if movies.name == "Desespero Profundo" {
                                                MoviesViewReal(profilePicture: profilePicture, arrayIndex: index[5])
                                            } else if movies.name == "Rumble" {
                                                MoviesViewReal(profilePicture: profilePicture, arrayIndex: index[6])
                                            } else if movies.name == "Uma Prova de Coragem" {
                                                MoviesViewReal(profilePicture: profilePicture, arrayIndex: index[7])
                                            }
                                            
                                        } label: {
                                            
                                                Image(movies.image)
                                                    .resizable()
                                                
                                                    .cornerRadius(12)
                                                    .frame(width: 140, height: 200)
                                            
                                        }
                                    }
                                } else if numberFilter == 2 {
                                    
                                    ForEach(seriesMock) { series in
                                        
                                        NavigationLink {
                                            
                                            if series.name == "Bruxas de Mayfair" {
                                                MoviesView(profilePicture: profilePicture, arrayIndex: index[2])
                                            } else if series.name == "Minha Lady Jane" {
                                                MoviesView(profilePicture: profilePicture, arrayIndex: index[3])
                                            } else if series.name == "The Boys" {
                                                MoviesView(profilePicture: profilePicture, arrayIndex: index[0])
                                            } else if series.name == "Invencível" {
                                                MoviesView(profilePicture: profilePicture, arrayIndex: index[1])
                                            }
                                            
                                        } label: {
                                            
                                                Image(series.image)
                                                    .resizable()
                                                
                                                    .cornerRadius(12)
                                                    .frame(width: 140, height: 200)
                                            
                                        }
                                    }
                                }
                                
                                
                            }
                            .padding(.leading)
                        }
                        if numberFilter <= 1 {
                        
                            HStack {
                                Text("Prime Filmes de ação e aventura")
                                    .foregroundColor(.white)
                                    .padding(.leading, 20)
                                    .bold()
                                
                                Spacer()
                                
                            }
                            
                            ScrollView(.horizontal) {
                                
                                HStack{
                                    
                                    ForEach(actionMoviesMock) { movies in
                                        
                                        NavigationLink {
                                            
                                            if movies.name == "A Fera" {
                                                MoviesViewReal(profilePicture: profilePicture, arrayIndex: index[0])
                                            } else if movies.name == "Beekeeper" {
                                                MoviesViewReal(profilePicture: profilePicture, arrayIndex: index[8])
                                            } else if movies.name == "Homem Aranha" {
                                                MoviesViewReal(profilePicture: profilePicture, arrayIndex: index[9])
                                            }
                                            
                                        } label: {
                                            
                                            Image(movies.image)
                                                .resizable()
                                                //.scaledToFit()
                                                .cornerRadius(12)
                                                .frame(width: 140, height: 200)
                                        }
                                    }
                                    .padding(.leading)
                                }
                            }
                        } else if numberFilter != 1 && numberFilter != 3 {
                            
                            HStack {
                                Text("Prime Séries mais assistidas")
                                    .foregroundColor(.white)
                                    .padding(.leading, 20)
                                    .bold()
                                
                                Spacer()
                                
                            }
                            
                            ScrollView(.horizontal) {
                                
                                HStack(){
                                    
                                    ForEach(mostViewedSeriesMock) { series in
                                        
                                        NavigationLink {
                                            
                                            if series.name == "Bruxas de Mayfair" {
                                                MoviesView(profilePicture: profilePicture, arrayIndex: index[2])
                                            } else if series.name == "Minha Lady Jane" {
                                                MoviesView(profilePicture: profilePicture, arrayIndex: index[3])
                                            } else if series.name == "The Boys" {
                                                MoviesView(profilePicture: profilePicture, arrayIndex: index[0])
                                            } else if series.name == "Invencível" {
                                                MoviesView(profilePicture: profilePicture, arrayIndex: index[1])
                                            }
                                            
                                        } label: {
                                            
                                            Image(series.image)
                                                .resizable()
                                                //.scaledToFit()
                                                .cornerRadius(12)
                                                .frame(width: 140, height: 200)
                                        }
                                    }
                                    .padding(.leading)
                                }
                            }
                        }
                    }
                }
                .toolbar {
                    
                    ToolbarItemGroup(placement: .bottomBar) {
                        
                        Button {
                            
                            numberFilter = 0
                            filter = "Todos"
                            
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
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    HomeView(profilePicture: "image_1")
}
