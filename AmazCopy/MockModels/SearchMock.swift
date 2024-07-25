//
//  SearchMoock.swift
//  AmazCopy
//
//  Created by Christian Luiz Moraes Braga on 02/08/24.
//

import Foundation

struct SearchStruct: Identifiable {
    var id: Int
    var name: String
    var image: String
    var duration: String
    var classification: String
    var year: String
    var searchFilter: String
}
var searchResults: [SearchStruct] = [
    SearchStruct(id: 1, name: "A Fera (2022)", image: "AFeraSearch", duration: "90 min", classification: "14.square", year: "2022", searchFilter: "A FERA a fera (2022) A fera"),
    SearchStruct(id: 2, name: "Aprendiz de Espiã", image: "AprendizSearch", duration: "95 min", classification: "12.square", year: "2020", searchFilter: "APRENDIZ DE ESPIA ESPIÃ aprendiz de espia espiã Aprendiz"),
    SearchStruct(id: 3, name: "Beekeeper: Rede de Vingança", image: "BeekeeperSearch", duration: "105 min", classification: "18.square", year: "2024", searchFilter: "BEEKEEPER: beekeeper: rede de vingança REDE DE VINGANÇA vinganca VINGANCA Beekeeper"),
    SearchStruct(id: 4, name: "Desespero Profundo", image: "DesesperoProfundoSearch", duration: "90 min", classification: "14.square", year: "2024", searchFilter: "DESESPERO PROFUNDO desespero profundo Desespero"),
    SearchStruct(id: 5, name: "Homem Aranha: Sem Volta para Casa", image: "HomemAranhaSearch", duration: "148 min", classification: "12.square", year: "2021", searchFilter: "HOMEM ARANHA: SEM VOLTA PARA CASA homem aranha: sem volta para casa Homem"),
    SearchStruct(id: 6, name: "Invencível", image: "InvencivelSearch", duration: "3 temp", classification: "Sem class.", year: "2021", searchFilter: "INVENCIVEL INVENCÍVEL invencivel invencível Invencivel Invencível"),
    SearchStruct(id: 7, name: "Minha Lady Jane", image: "MinhaLadySearch", duration: "1 temp", classification: "Sem class.", year: "2024", searchFilter: "MINHA LADY JANE minha lady jane Minha"),
    SearchStruct(id: 8, name: "Estrondo na Escuridão", image: "RumbleSearch", duration: "112 min", classification: "14.square", year: "2023", searchFilter: "RUMBLE rumble ESTRONDO NA ESCURIDÃO estrondo na escuridão escuridao ESCURIDÃO Rumble Estrondo"),
    SearchStruct(id: 9, name: "The Boys", image: "TheBoysSearch", duration: "4 temp", classification: "Sem class.", year: "2019", searchFilter: "THE BOYS the boys The"),
    SearchStruct(id: 10, name: "Uma Prova de Coragem", image: "UmaProvaCoragemSearch", duration: "107 min", classification: "12.square", year: "2024", searchFilter: "UMA PROVA DE CORAGEM uma prova de coragem Uma"),
    SearchStruct(id: 11, name: "As Bruxas Mayfair de Anne Rice", image: "AsBruxasMayfairSearch", duration: "1 temp", classification: "16.square", year: "2023", searchFilter: "AS BRUXAS DE MAYFAIR DE ANNE RICE as bruxas de mayfair de anne rice may fair MAY FAIR As Anne Rice")
                
]

