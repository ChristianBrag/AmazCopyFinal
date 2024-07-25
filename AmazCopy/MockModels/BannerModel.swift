//
//  BannerModel.swift
//  AmazCopy
//
//  Created by Christian Luiz Moraes Braga on 19/07/24.
//

import Foundation

struct BannerStruct: Identifiable {
    var id: Int
    var image: String
    var name: String
    var type: Int
}

var banner: [BannerStruct] = [
BannerStruct(id: 1, image: "Aprendiz de Espia Banner", name: "", type: 1),
BannerStruct(id: 3, image: "As Bruxas de Mayfair", name: "", type: 2),
BannerStruct(id: 2, image: "Uma Prova de Coragem Banner", name: "", type: 1),
BannerStruct(id: 4, image: "My Lady Jane", name: "", type: 2)
]
