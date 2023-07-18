//
//  AllPokemonViewController.swift
//  Pokedex
//
//  Created by LUIS GONZALEZ on 17/07/23.
//

import UIKit

class AllPokemonViewController: UIViewController {

    
    var arrPokemonName : [String] = ["Pikachu","Ratata","Meow"]
    
    
    @IBOutlet weak var pokemonTableList: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pokemonTableList.delegate = self
        self.pokemonTableList.dataSource = self
        self.pokemonTableList.register(PokemonListTableViewCell.nib, forCellReuseIdentifier: PokemonListTableViewCell.identifier)
    }


   

}

