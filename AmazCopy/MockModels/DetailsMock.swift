//
//  DetailsMock.swift
//  AmazCopy
//
//  Created by Christian Luiz Moraes Braga on 30/07/24.
//

import Foundation

struct Details: Identifiable {
    
    var id: Int
    var discription: String
    var picture: String
    var season: String
    var seasonNumber: Int
    var logo: String
    var name: String
    var original: Bool
    var genre: String
    var genre2: String
    var imdb: String
    var episodes: Int
    var year: String
    var hasLogo: Bool
    
}

var seriesDetails: [Details] = [
    Details(id: 1, discription: "THE BOYS é uma visão irreverente do que acontece quando super-heróis, que são tão populares quanto celebridades, tão influentes quanto políticos e tão reverenciados como deuses, abusam de seus superpoderes ao invés de usá-los para o bem. É o sem poder contra o superpoder, quando os rapazes embarcam em uma jornada heroica para expor a verdade sobre Os Sete com o apoio da Vought.", picture: "TheBoysBannerT1", season: "Temporada 1", seasonNumber: 1, logo: "TheBoysLogo", name: "The Boys", original: true, genre: "Ação", genre2: "Ficção científica", imdb: "8,7", episodes: 8, year: "2019", hasLogo: true),

    Details(id: 2, discription: "Em uma segunda temporada mais intensa e mais desesperada de THE BOYS, Butcher, Hughie e a equipe se recuperam de suas perdas na primeira temporada. Fugindo da lei, eles sofrem para lutar contra os Super-heróis. Enquanto Vought, a empresa que gerencia os heróis, entra em pânico com a ameaça dos Supervilões, e uma nova heroína, Stormfront, agita a empresa e desafia um Homelander já instável.", picture: "TheBoysBannerT2", season: "Temporada 2", seasonNumber: 2, logo: "TheBoysLogo", name: "The Boys", original: true, genre: "Ação", genre2: "Ficção científica", imdb: "8,7", episodes: 8, year: "2020", hasLogo: true),

    Details(id: 3, discription: "Tem sido um ano calmo. O Capitão Pátria está controlado. Bruto trabalha para o governo, supervisionado por ninguém menos que o Hughie, mas os dois estão loucos para trocar essa paz e tranquilidade por briga e confusão. Então, quando os Boys ficam sabendo de uma misteriosa arma Anti-Herói, eles enfrentam os Sete e partem pra briga, enquanto investigam a lenda do primeiro super-herói: o Soldier Boy.", picture: "TheBoysBannerT3", season: "Temporada 3", seasonNumber: 3, logo: "TheBoysLogo", name: "The Boys", original: true, genre: "Ação", genre2: "Ficção científica", imdb: "8,7", episodes: 8, year: "2022", hasLogo: true),

    Details(id: 4, discription: "O mundo está à beira da ruína. Victoria Neuman está cada vez mais perto do Salão Oval sentindo a pressão do Capitão Pátria, cujo poder está se consolidando. Bruto está com pouco tempo de vida, afastado do filho da Becca, e a equipe de The Boys cansou de suas mentiras. Com os riscos extremamente altos, eles precisam encontrar um modo de trabalhar juntos para salvar o mundo antes que seja tarde.", picture: "TheBoysBannerT4", season: "Temporada 4", seasonNumber: 4, logo: "TheBoysLogo", name: "The Boys", original: true, genre: "Ação", genre2: "Ficção científica", imdb: "8,7", episodes: 8, year: "2024", hasLogo: true),

    Details(id: 5, discription: "Quando Mark Grayson herda superpoderes ao completar 17 anos, ele se une a seu pai como um dos maiores heróis da Terra. Todos os seus sonhos se tornam realidade - até que um evento chocante muda tudo.", picture: "InvincibleT1InsideBanner", season: "Temporada 1", seasonNumber: 1, logo: "InvincibleLogo", name: "Invencível", original: true, genre: "Animação", genre2: "Ação", imdb: "8,7", episodes: 8, year: "2021", hasLogo: true),

    Details(id: 6, discription: "Após uma traição devastadora, Mark luta para reconstruir sua vida. Diante de ameaças apocalípticas ele descobre novos aliados e enfrenta seu maior medo - a possibilidade de se tornar igual ao seu pai.", picture: "InvincibleT1InsideBanner", season: "Temporada 2", seasonNumber: 2, logo: "InvincibleLogo", name: "Invencível", original: true, genre: "Animação", genre2: "Ação", imdb: "8,7", episodes: 8, year: "2024", hasLogo: true),

    Details(id: 7, discription: "Rowan Fielding, uma jovem neurocirurgiã intuitiva, descobre que ela é a improvável herdeira de uma família de bruxas. Enquanto ela lida com seus novos poderes, ela deve lidar com uma presença sinistra que assombra sua família há gerações.", picture: "BruxasInsideBanner", season: "Temporada 1", seasonNumber: 1, logo: "As bruxas de Mayfair de Anne Rice", name: "Bruxas de Mayfair", original: false, genre: "Drama", genre2: "Terror", imdb: "6,2", episodes: 8, year: "2023", hasLogo: false),

    Details(id: 8, discription: "Você está pronto para uma história épica de amor verdadeiro, grandes aventuras, regicidas macíacos, heroísmo sem vaidade, intrigas venenosas, lutas de espadachins, uma sopa de realismo mágico e muito sexo? Claro que está. Bem-vindo à Minha Lady Jane.", picture: "MyLadyInsideBanner", season: "Temporada 1", seasonNumber: 1, logo: "MinhaLadyLogo", name: "My Lady Jane", original: false, genre: "Comédia", genre2: "Romance", imdb: "7,4", episodes: 8, year: "2024", hasLogo: true)
]

var moviesDetails: [Details] = [
    Details(id: 1, discription: "Após a morte da esposa, Nate e suas filhas viajam à África do Sul. Visitando uma reserva, eles se deparam com um terrível leão, que logo os transformará em caça.", picture: "AFeraDetail", season: "1h 30min", seasonNumber: 1, logo: "A Fera (2022)", name: "A Fera", original: false, genre: "Ação", genre2: "Terror", imdb: "5,6", episodes: 8, year: "2022", hasLogo: false),

    Details(id: 2, discription: "Aposentado da organização secreta “Beekeepers”, Adam Clay volta à ação quando sua vizinha é enganada. Ao descobrir uma rede de golpes gerenciada por um grupo poderoso, a missão de Adam evolui, expondo um sistema de corrupção que ameaça a sociedade.", picture: "BeekeeperDetail", season: "1h 45min", seasonNumber: 2, logo: "BeekeeperLogo", name: "Beekeeper", original: false, genre: "Ação", genre2: "Suspense", imdb: "6,4", episodes: 8, year: "2024", hasLogo: true),

    Details(id: 3, discription: "Pela primeira vez na história do Homem-Aranha no cinema, a identidade do nosso simpático herói da vizinhança é revelada, causando conflito entre suas responsabilidades de super-herói e sua vida normal, e colocando em risco as pessoas que ele mais ama. Quando ele pede a ajuda do Doutor Estranho para tornar sua identidade secreta novamente, o feitiço do Doutor abre um rasgo no mundo, soltando os...", picture: "HomemAranhaDetail", season: "2h 28min", seasonNumber: 3, logo: "Homem Aranha: Sem Volta Para Casa", name: "Homem Aranha: Sem Volta Para Casa", original: false, genre: "Ação", genre2: "Aventura", imdb: "8,2", episodes: 8, year: "2021", hasLogo: false),

    Details(id: 4, discription: "Depois de muito sucesso, a dupla dinâmica de Aprendiz de Espiã está de volta. O veterano agente da CIA JJ (Dave Bautista) e sua enteada e protegida Sophie (Chloe Coleman), de 14 anos, se unem para salvar o mundo quando uma turnê do coral de uma escola na Itália é interrompida por uma conspiração nuclear nefasta visando o Vaticano.", picture: "EspiaDetail", season: "1h 52min", seasonNumber: 4, logo: "AprendizEspiaLogo", name: "Aprendiz de Espiã", original: true, genre: "Ação", genre2: "Comédia", imdb: "5,6", episodes: 8, year: "2024", hasLogo: true),

    Details(id: 5, discription: "Ava quer curtir uma viagem tranquila com os amigos no México, mas o avião cai no oceano e fica submerso. Ava e os sobreviventes enfrentam uma corrida contra o tempo, cercados por tubarões sedentos por sangue. Será que eles conseguirão se salvar?", picture: "DesesperoProfundoDetail", season: "1h 30min", seasonNumber: 1, logo: "DesesperoProfundoLogo", name: "Desespero Profundo", original: false, genre: "Drama", genre2: "Suspense", imdb: "4,6", episodes: 8, year: "2024", hasLogo: true),

    Details(id: 6, discription: "Ambientado na sombria paisagem do Delta do Mississipi, Rumble Through The Dark é um suspense emocionante sobre um lutador de boxe sem luvas (Aaron Eckhart) em busca de pagar suas dívidas como uma tentativa final e desesperada de salvar a casa da família de sua mãe adotiva, que está perecendo.", picture: "RumbleDetail", season: "1h 52min", seasonNumber: 2, logo: "Estrondo na Escuridão", name: "Rumble", original: false, genre: "Drama", genre2: "Ação", imdb: "5,8", episodes: 8, year: "2023", hasLogo: false),

    Details(id: 7, discription: "Michael é um atleta profissional determinado a vencer a Corrida de Aventura. Na sua última prova, ele encontra um cachorro machucado e, à medida que a corrida avança, a emoção o consome e ele precisa escolher entre salvar o cachorro ou a corrida.", picture: "UmaProvaCoragemDetail", season: "1h 47min", seasonNumber: 1, logo: "UmaProvaCoragemLogo", name: "Uma Prova de Coragem", original: false, genre: "Aventura", genre2: "Esportes", imdb: "7,0", episodes: 8, year: "2024", hasLogo: true)
]
