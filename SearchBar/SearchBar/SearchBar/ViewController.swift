//
//  ViewController.swift
//  SearchBar
//
//  Created by Osman Yesil on 3.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    let carData = ["Ford", "BMW", "Kia", "Hyundai", "Mercedes", "Audi", "Ferrari", "Renault", "Lamborghini"]
    var filterData: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filterData = carData
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filterData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = filterData[indexPath.row]
        return cell
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterData = []
        if searchText == "" {
            filterData = carData
        }
        
        for word in carData {
            if word.uppercased().contains(searchText.uppercased()){
                filterData.append(word)
            }
        }
        self.tableView.reloadData()
    }
}
