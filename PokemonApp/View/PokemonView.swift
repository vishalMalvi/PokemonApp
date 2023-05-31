//
//  PokemonView.swift
//  PokemonApp
//
//  Created by Vishal_Malvi on 28/05/23.
//

import SwiftUI

struct PokemonView: View {
    let guide = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @StateObject var viewModel: PokemonViewModel = PokemonViewModel()
    
    var body: some View {
        NavigationStack {
            switch viewModel.loadingState {
            case .loading:
                ProgressView("Loading...")
                    .onAppear {
                        viewModel.getPokemonData()
                    }
            case .loaded:
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: guide) {
                        ForEach(viewModel.pokemon) { pokemon in
                            
                            NavigationLink {
                                PokemonDetailsView(pokemon: pokemon, color: viewModel.pokemonCardColor(byType: pokemon.type))
                            } label: {
                                PokemonCardView(pokemon: pokemon, cardColor: viewModel.pokemonCardColor(byType: pokemon.type))
                                    .foregroundColor(.black)
                            }

                        }
                    }
                }
                .padding()
                .navigationTitle("Pokemon")
            case .failure(let error):
                Text(error?.localizedDescription ?? "")
            }
        }
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView()
    }
}
