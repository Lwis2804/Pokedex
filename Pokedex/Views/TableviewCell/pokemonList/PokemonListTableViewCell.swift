//
//  PokemonListTableViewCell.swift
//  Pokedex
//
//  Created by LUIS GONZALEZ on 17/07/23.
//

import UIKit

class PokemonListTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var pokemonImg: UIImageView!
    @IBOutlet weak var pokemonName: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
