//
//  ViewController.swift
//  GamesApp
//
//  Created by Mahitha Vudutha on 4/21/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sortedGames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gameCell", for: indexPath)
        let game = sortedGames[indexPath.row]
        cell.textLabel?.text = game.name
    
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    var selectedGame: Game?
    var sortedGames: [Game] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sortedGames = games.sorted { ($0.name ?? "") < ($1.name ?? "") }
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "DescriptionSegue",
               let destinationVC = segue.destination as? ResultViewController,
               let indexPath = tableView.indexPathForSelectedRow {
                destinationVC.selectedGame = sortedGames[indexPath.row]
            }
       
        }


}

