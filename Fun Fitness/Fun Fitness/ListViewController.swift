//
//  ListViewController.swift
//  Fun Fitness
//
//  Created by Brandon Capparelli on 3/23/21.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    private let items:[String]
    
    private let tableView: UITableView =
    {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "CellB")
        return table
    }()
    
    init(items: [String])
    {
        self.items = items
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews()
    {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellB", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
        print(items[indexPath.row])
    }
}
