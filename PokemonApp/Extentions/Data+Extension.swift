//
//  Data+Extension.swift
//  PokemonApp
//
//  Created by Vishal_Malvi on 28/05/23.
//

import Foundation

extension Data {
    func parseData(removeString string: String) ->Data? {
        let dataAsString = String(data:self, encoding: .utf8)
        let parsedDataString  = dataAsString?.replacingOccurrences(of: string, with: "")
        guard let data = parsedDataString?.data(using: .utf8) else { return nil }
        return data;
    }
}
