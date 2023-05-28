//
//  NetworkManager.swift
//  PokemonApp
//
//  Created by Vishal_Malvi on 28/05/23.
//

import Foundation

typealias RequestResult<T> = (Result<T, CustomErrors>) -> Void

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() {}
    
    func request<T: Codable>(url: String, modelType: T.Type, completion: @escaping RequestResult<T>) {
        guard let url = URL(string: url) else {
            completion(.failure(.invalidURL))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data?.parseData(removeString: "null,"), error == nil else {
                completion(.failure(.invalidData))
                return
            }
            
            do {
                let model = try JSONDecoder().decode(modelType, from: data)
                completion(.success(model))
            }catch {
                completion(.failure(.network(error)))
            }
            
        }.resume()
    }
}


