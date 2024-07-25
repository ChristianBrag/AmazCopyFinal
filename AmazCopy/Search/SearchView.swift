//
//  SearchView.swift
//  AmazCopy
//
//  Created by Christian Luiz Moraes Braga on 19/07/24.
//

import SwiftUI

struct SearchView: View {
    
    @State var isPresent = false
    @State var search = ""
    @Environment (\.presentationMode) var presentationMode
    @State var profilePicture: String
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                Color(.black).ignoresSafeArea()
                
                NavigationLink(isActive: $isPresent) {
                    
                    SearchResult(profilePicture: profilePicture, text: search)
                    
                } label: {
                    
                    Text("Buscando por \(search)")
                    
                }
            }
            .searchable(text: $search, prompt: "Buscar")
            .onSubmit(of: .search) {
                isPresent = true
            }
            .preferredColorScheme(.dark)
        }
        
        
        
        .navigationBarBackButtonHidden()
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
        
        .foregroundColor(.white)
        
    }
}

#Preview {
    SearchView(profilePicture: "")
}
