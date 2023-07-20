//
//  MainManagerService.swift
//  Pokedex
//
//  Created by LUIS GONZALEZ on 19/07/23.
//

import Foundation
import Alamofire

class MainManagerService {
    
    public typealias bloqueAllPokemon = (Pokemon? ,AFError?) -> Void
    
    private let urlAllPokemon = "https://pokeapi.co/api/v2/pokedex/1/"
        private let okStatus = 200 ... 299
    
    func getPokemonList(withHandler : @escaping bloqueAllPokemon){
        let url = urlAllPokemon
        AF.request(url,method: .get).validate(statusCode: okStatus).responseDecodable(of:Pokemon.self){
            
        }
    }
    
    
    
    
}
