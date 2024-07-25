//
//  ProfilesModel.swift
//  AmazCopy
//
//  Created by Christian Luiz Moraes Braga on 07/07/24.
//

import SwiftUI

struct ProfilesModel: View {
    
    @State var profiles: ProfileStruct
    
    var body: some View {
        ZStack {
            /*Color.black.ignoresSafeArea()
            
            VStack{
                Image(profiles.picture)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80)
                    .foregroundColor(.gray)
                    
                
                
                Text(profiles.name)
                    .lineLimit(1)
                    .frame(width: 130)
                    .foregroundStyle(.white)
                    .padding(.bottom)
            }
         */
        }
    }
}

#Preview {
    ProfilesModel(profiles: ProfileStruct(id: 1, name: "chris", picture: "image_1"))
}
