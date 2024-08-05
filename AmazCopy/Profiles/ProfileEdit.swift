//
//  ProfileEdit.swift
//  AmazCopy
//
//  Created by Christian Luiz Moraes Braga on 14/07/24.
//

import SwiftUI

struct ProfileEdit: View {
    
    @Environment (\.presentationMode) var presentationMode
    @Binding var newName: String
    //@State var name: String
    @Binding var picture: String
    @Binding var profileMock: [ProfileStruct]
    @Binding var arrayId: Int
    @Binding var modify: Bool
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            Color(.black).ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Editar perfil")
                    .font(.title)
                    .bold()
                
                NavigationLink {
                    
                    ProfilePicturesView(changePic: $picture, pictures: profilePicturesMock[0], id: $arrayId)
                    
                } label: {
                    
                    VStack{
                        Image(picture)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80)
                        
                        Text("Alterar imagem")
                            .underline()
                    }
                }
                
                TextField("Inserir nome", text: $newName)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 10)
                    .frame(width: 290)
                    .background(Color(.white))
                    .cornerRadius(8)
                    .foregroundColor(.gray)
                
                HStack{
                    VStack(alignment: .leading) {
                        
                        Text("Idiomas de streaming")
                            .fontWeight(.semibold)
                        //Text(String(arrayId))
                        Text("Obtenha recomendações de vídeos disponíveis em seus idiomas preferidos de áudio e legenda.")
                            .foregroundColor(Color(.lightGray))
                        
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .padding(.trailing)
                }
                
                //Divider()
                //  .foregroundColor(.white)
                
                VStack(alignment: .leading) {
                    Text("Configurações adicionais")
                        .fontWeight(.semibold)
                    Text("Para Gerenciar bloqueios e restrições de perfil, edite este perfil no site.")
                        .foregroundStyle(Color(.lightGray))
                }
                .padding()
                
                Spacer()
                
                Button {
                    if newName.count >= 1 {
                        modify = false
                        profileMocker[arrayId - 1].picture = picture
                        profileMocker[arrayId - 1].name = newName
                        presentationMode.wrappedValue.dismiss()
                    } else {
                        showingAlert.toggle()
                    }
                    
                } label: {
                    Text("Salvar")
                        .padding(.vertical, 20)
                        .padding(.horizontal, 120)
                    
                        .border(Color(.darkGray), width: 3)
                        .cornerRadius(15)
                        .foregroundColor(.gray)
                }
                
                if arrayId > 1 {
                    Text("Remover perfil")
                        .underline()
                        .onTapGesture {
                            modify = false
                            profileMocker.remove(at: arrayId - 1)
                            if profileMocker.count >= 2 {
                                profileMocker[1].id = 2
                            }
                            if profileMocker.count >= 3 {
                                profileMocker[2].id = 3
                            }
                            presentationMode.wrappedValue.dismiss()
                        }
                } else {
                    Text("O perfil do titular da conta não pode ser removido")
                        .multilineTextAlignment(.center)
                        .padding(10)
                }
            }
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
        .popover(isPresented: $showingAlert) {
            ZStack {
                Color.black.ignoresSafeArea()
                Text("Insira ao menos um caractere no nome!")
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    ProfileEdit(newName: .constant(""), picture: .constant("image_2"), profileMock: .constant([ProfileStruct(id: 1, name: "", picture: "")]), arrayId: .constant(1), modify: .constant(false))
}
