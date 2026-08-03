//
//  MockData.swift
//  P12M3L8
//
//  Created by Valeriy Protsenko on 18.01.2026.
//

import Foundation

struct MockDataCard: Identifiable {
    let id = UUID()
    
    var image: String
    var title: String
    var subTitle: String
    
    static func getMockData() -> [MockDataCard] {
        [
            MockDataCard(image: "pubg", title: "PUBG: Battlegrounds", subTitle: "The battle royale that pits 100 players against each other!"),
            MockDataCard(image: "dota", title: "Dota 2", subTitle: "Dota is the deepest multi-player action RTS game ever made and there's always a new strategy or tactic"),
            MockDataCard(image: "wot", title: "World of Tanks", subTitle: "Tactical action game with very different gameplay depending on regular PvP"),
            MockDataCard(image: "valorant", title: "Valorant", subTitle: "Players are expected to face off against teams in a 5x5 player format"),
            MockDataCard(image: "pubg", title: "PUBG: Battlegrounds", subTitle: "The battle royale that pits 100 players against each other!"),
            MockDataCard(image: "dota", title: "Dota 2", subTitle: "Dota is the deepest multi-player action RTS game ever made and there's always a new strategy or tactic"),
            MockDataCard(image: "wot", title: "World of Tanks", subTitle: "Tactical action game with very different gameplay depending on regular PvP"),
            MockDataCard(image: "valorant", title: "Valorant", subTitle: "Players are expected to face off against teams in a 5x5 player format"),
            MockDataCard(image: "pubg", title: "PUBG: Battlegrounds", subTitle: "The battle royale that pits 100 players against each other!"),
            MockDataCard(image: "dota", title: "Dota 2", subTitle: "Dota is the deepest multi-player action RTS game ever made and there's always a new strategy or tactic"),
            MockDataCard(image: "wot", title: "World of Tanks", subTitle: "Tactical action game with very different gameplay depending on regular PvP"),
            MockDataCard(image: "valorant", title: "Valorant", subTitle: "Players are expected to face off against teams in a 5x5 player format"),
        ]
    }
}
