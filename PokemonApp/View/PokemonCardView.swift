//
//  PokemonCardView.swift
//  PokemonApp
//
//  Created by Vishal_Malvi on 28/05/23.
//

import SwiftUI

struct PokemonCardView: View {
    
    let pokemon: PokemonModel
    let cardColor: LinearGradient
    
    var body: some View {
        HStack {
            VStack {
                Text(pokemon.name.capitalized)
                    .font(.footnote)
                    .fontWeight(.medium)
                Text(pokemon.type.capitalized)
                    .font(.caption2)
                    .fontWeight(.semibold)
                    .padding(5)
                    .background(Capsule().fill(Color.white.opacity(0.5)))
            }
            .padding(.horizontal, 5)
            AsyncImage(url: URL(string: pokemon.imageURL)) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .padding(.trailing)
            } placeholder: {
                Image("PokeBall")
                    .resizable()
                    .scaledToFit()
                    .padding(.trailing)
            }
        }
        .padding(.vertical)
        .background(RoundedRectangle(cornerRadius: 12).fill(cardColor.opacity(0.5)))
    }
}

struct PokemonCardView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCardView(pokemon: PreviewData.pokemon, cardColor: LinearGradient.poison)
    }
}
