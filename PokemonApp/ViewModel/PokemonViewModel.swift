//
//  PokemonViewModel.swift
//  PokemonApp
//
//  Created by Vishal_Malvi on 28/05/23.
//

import Foundation
import SwiftUI

enum LoadingState {
    case loading
    case loaded
    case failure(CustomErrors?)
}

class PokemonViewModel: ObservableObject {
    
    var pokemon: [PokemonModel] = []
    @Published var loadingState: LoadingState = .loading
    
    func getPokemonData() {
        NetworkManager.shared.request(url: API.url, modelType: [PokemonModel].self) { [weak self] result in
            switch result {
            case .success(let pokemonData):
                DispatchQueue.main.async {
                    self?.pokemon = pokemonData
                    self?.loadingState = .loaded
                }
            case .failure(let error):
                self?.loadingState = .failure(error)
                print(error.localizedDescription)
            }
        }
    }
    
    public func pokemonCardColor(byType type: String) -> LinearGradient {
        switch type {
        case "fire":
            return LinearGradient.fire
        case "poison":
            return LinearGradient.poison
        case "water":
            return LinearGradient.water
        case "electric":
            return LinearGradient.electric
        case "psychic":
            return LinearGradient.psychic
        case "normal":
            return LinearGradient(gradient: Gradient(colors: [Color.whiteStart, Color.whiteEnd]), startPoint: .topLeading, endPoint: .bottomTrailing)
        case "ground":
            return LinearGradient.ground
        case "flying":
            return LinearGradient.flying
        case "fairy":
            return LinearGradient.fairy
        default:
            return LinearGradient(gradient: Gradient(colors: [Color.whiteStart, Color.whiteEnd]), startPoint: .topLeading, endPoint: .bottomTrailing)
        }
    }
}
