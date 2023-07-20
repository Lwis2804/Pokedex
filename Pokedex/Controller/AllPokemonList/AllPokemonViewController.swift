//
//  AllPokemonViewController.swift
//  Pokedex
//
//  Created by LUIS GONZALEZ on 17/07/23.
//

import UIKit

class AllPokemonViewController: UIViewController {

    
    var arrPokemonName : [String] = ["Pikachu","Ratata","Meow"]
    var arrListaPokemon : [Pokemon_entries] = []
    
    
    @IBOutlet weak var pokemonTableList: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pokemonTableList.delegate = self
        self.pokemonTableList.dataSource = self
        self.pokemonTableList.register(PokemonListTableViewCell.nib, forCellReuseIdentifier: PokemonListTableViewCell.identifier)
        
        callAllPokemon()
    }

    
    
    func callAllPokemon () {
        var mainService = MainManagerService()
        mainService.getPokemonList { response, error in
            if error?.responseCode == nil{
                self.arrListaPokemon = response?.pokemon_entries ?? []
                self.pokemonTableList.reloadData()
            }
        }
    }

   

}

