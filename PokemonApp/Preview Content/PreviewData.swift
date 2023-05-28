//
//  PreviewData.swift
//  PokemonApp
//
//  Created by Vishal_Malvi on 29/05/23.
//

import Foundation

class PreviewData {
    
    static var pokemon: PokemonModel {
        let model = PokemonModel(attack: 49, defense: 49, description: "Bulbasaur can be seen napping in bright sunlight.\nThere is a seed on its back. By soaking up the sun’s rays,\nthe seed grows progressively larger.", evolutionChain: [EvolutionChain(id: "2", name: "ivysaur")], height: 7, id: 1, imageURL: "https://firebasestorage.googleapis.com/v0/b/pokedex-bb36f.appspot.com/o/pokemon_images%2F2CF15848-AAF9-49C0-90E4-28DC78F60A78?alt=media&token=15ecd49b-89ff-46d6-be0f-1812c948e334", name: "bulbasaur", type: "poison", weight: 69, pokemonDefense: 85)
        return model
    }
}
