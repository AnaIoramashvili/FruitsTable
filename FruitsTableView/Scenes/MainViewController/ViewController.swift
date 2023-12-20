//
//  ViewController.swift
//  FruitsTableView
//
//  Created by Ana on 12/20/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let fruits = [
        Fruit(name: "Orange", image: "1", expirationDate: "2024-02-31"),
        Fruit(name: "Avocado", image: "2", expirationDate: "2024-01-01"),
        Fruit(name: "Kiwi", image: "3", expirationDate: "2024-01-02"),
        Fruit(name: "Blueberry", image: "4", expirationDate: "2024-12-11"),
        Fruit(name: "Mango", image: "5", expirationDate: "2024-02-12"),
        Fruit(name: "Strawberry", image: "6", expirationDate: "2024-09-11"),
        Fruit(name: "PineApple", image: "7", expirationDate: "2024-12-10"),
        Fruit(name: "Peach", image: "8", expirationDate: "2024-07-15"),
        Fruit(name: "Banana", image: "9", expirationDate: "2024-06-17"),
        Fruit(name: "Watermelon", image: "10", expirationDate: "2024-07-19"),
        Fruit(name: "Apple", image: "11", expirationDate: "2024-12-20"),
        Fruit(name: "Lemon", image: "12", expirationDate: "2024-03-20"),
        Fruit(name: "Raspberry", image: "13", expirationDate: "2024-05-23"),
        Fruit(name: "Marakuja", image: "14", expirationDate: "2024-08-17"),
        Fruit(name: "Papaya", image: "15", expirationDate: "2024-11-21")

    ]
    
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .clear
        tableView.allowsSelection = true
        tableView.register(FruitCell.self, forCellReuseIdentifier: "Cell")
        return tableView
    }()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FruitCell
         let fruit = fruits[indexPath.row]
         
         cell.configure(with: fruit)
         return cell
    
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        tableView.frame = view.bounds
        
        setup()
        layout()
        
        reloadTableView()
    }
    
    private func setup() {
        view.addSubview(tableView)
        
    }
    
    private func layout() {
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    
    private func reloadTableView () {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }




}

