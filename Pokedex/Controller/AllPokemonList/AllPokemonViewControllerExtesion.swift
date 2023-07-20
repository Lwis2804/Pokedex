//
//  AllPokemonViewControllerExtesion.swift
//  Pokedex
//
//  Created by LUIS GONZALEZ on 17/07/23.
//

import UIKit

extension AllPokemonViewController : UITableViewDelegate {
    
}


extension AllPokemonViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrListaPokemon.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pokemonCell = tableView.dequeueReusableCell(withIdentifier: PokemonListTableViewCell.identifier, for: indexPath) as? PokemonListTableViewCell ?? PokemonListTableViewCell()
        pokemonCell.pokemonName.text = arrListaPokemon[indexPath.row].pokemon_species?.name
        //explicar la linea anterior
        return pokemonCell
    }
}

