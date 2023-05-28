//
//  PokemonDetailsView.swift
//  PokemonApp
//
//  Created by Vishal_Malvi on 29/05/23.
//

import SwiftUI

struct PokemonDetailsView: View {
    
    let pokemon : PokemonModel
    let color: LinearGradient
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack {
                AsyncImage(url: URL(string: pokemon.imageURL)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    Image("PokeBall")
                        .resizable()
                        .scaledToFit()
                }
                
                Text(pokemon.name.capitalized)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text(pokemon.type.capitalized)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding()
                    .background(Capsule().fill(Color.white.opacity(0.5)))
                
                Text(pokemon.description)
                    .font(.title3)
                    .padding()
                    .multilineTextAlignment(.leading)
                    .padding()
            }
            .background(color.opacity(0.5).cornerRadius(12).offset(x: 0, y: (UIScreen.main.bounds.height / 2) - 180))
        }
        .navigationTitle("Pokemon Details")
    }
}

struct PokemonDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            PokemonDetailsView(pokemon: PreviewData.pokemon, color: LinearGradient.poison)
        }
    }
}
