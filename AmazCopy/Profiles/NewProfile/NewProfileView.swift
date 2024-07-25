//
//  NewProfileView.swift
//  AmazCopy
//
//  Created by Christian Luiz Moraes Braga on 05/07/24.
//

import SwiftUI

struct NewProfileView: View {
    
    @Environment (\.presentationMode) var presentationMode
    @Binding var profileMock: [ProfileStruct]
    @State var color = "ColorGray"
    @State var childToggle = false
    @State var textField = ""
    @State var newImage = newProfilePicture[0]
    @State var pictureNew: String
    @State private var showingAlert = false
    @State private var name = ""
    @State private var id = profileMocker.count + 1
    
    var body: some View {
        VStack {
            Text("Novo")
                .font(.title2)
                .foregroundStyle(.white)
                .padding(.vertical)
            
            NavigationLink {
                ProfilePicturesView(changePic: $pictureNew, pictures: profilePicturesMock[0], id: $id)
            } label: {
                VStack {
                    Image(pictureNew)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80)
                    
                    Text("Alterar")
                        .foregroundStyle(.gray)
                }
            }
            .padding(.bottom)
            
            TextField("Inserir nome", text: $textField)
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
                .frame(width: 290)
                .background(Color(.white))
                .cornerRadius(8)
                .foregroundColor(.gray)
            
            
            VStack(alignment: .leading) {
                
                HStack() {
                    Text("Perfil infantil?")
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Toggle(isOn: $childToggle) {
                        }
                    }
                }
                .padding(.horizontal, 50)
                
                
                
                Button {
                    //
                } label: {
                    Text("Saiba mais")
                        .foregroundStyle(.blue)
                        .underline()
                }
                .padding(.horizontal, 50)
                
            }
            
            Spacer()
            
            Button {
                if textField.count >= 1 {
                    profileMock.append(ProfileStruct(id: (profileMock.count + 1), name: textField, picture: pictureNew))
                    profileMocker.append(ProfileStruct(id: (profileMocker.count + 1), name: textField, picture: pictureNew))
                    presentationMode.wrappedValue.dismiss()
                } else { 
                    showingAlert = true
                }
                
                
                
            } label: {
                Text("Salvar")
                    .padding(.vertical, 20)
                    .padding(.horizontal, 120)
                    .border(Color(.darkGray), width: 3)
                    .cornerRadius(15)
                    .foregroundColor(.gray)
            }
            /*.onTapGesture {
             profileMock.removeLast()
             profileMock.append(
             ProfileStruct(id: 3, name: "Alexandre", picture: pictureNew.picture))
             profileMock.append(
             ProfileStruct(id: 4, name: "Novo", picture: "plus.circle.fill"))
             }*/
            
        }
        .background(Color(.black))
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
    NewProfileView(profileMock: .constant([ProfileStruct(id: 1, name: "", picture: "")]), pictureNew: "image_2")
}
