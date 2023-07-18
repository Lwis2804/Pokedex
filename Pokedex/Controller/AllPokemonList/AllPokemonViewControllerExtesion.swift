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
        return arrPokemonName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pokemonCell = tableView.dequeueReusableCell(withIdentifier: PokemonListTableViewCell.identifier, for: indexPath) as? PokemonListTableViewCell ?? PokemonListTableViewCell()
        pokemonCell.pokemonName.text = arrPokemonName[indexPath.row]
        return pokemonCell
    }
    
    
}
