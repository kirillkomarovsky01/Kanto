//
//  TableViewController.swift
//  Kanto
//
//  Created by Кирилл Комаровский on 06.06.2021.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let cities = ModelCity()
    var arrCityNames: [String] = []
    let idCell = "cell"
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(cities.cities)
        arrCityNames.append(cities.city1.name)
        arrCityNames.append(cities.city2.name)
        arrCityNames.append(cities.city3.name)
        arrCityNames.append(cities.city4.name)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCityNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: idCell)
        cell.textLabel?.text = arrCityNames[indexPath.row]
        return cell
    }
}
