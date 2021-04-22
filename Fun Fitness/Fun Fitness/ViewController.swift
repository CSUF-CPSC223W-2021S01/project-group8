//
//  ViewController.swift
//  Fun Fitness
//
//  Created by Brandon Capparelli on 3/10/21.
//
import UIKit

class ViewController: UIViewController
{
    var tableView: UITableView =
    {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    let newAdd = AddProfileViewController()
    
    //var data: [Profile] = []

    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
       // tableView.reloadData()
    }
    override func viewDidLayoutSubviews()
    {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        tableView.reloadData()
    }
    override func viewWillAppear(_ animated: Bool)
    {
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
        let profileStats = newAdd.data[indexPath.row].measurments
        
        let vc = ListViewController(items: profileStats)
        vc.title = newAdd.data[indexPath.row].name
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension ViewController: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return newAdd.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = newAdd.data[indexPath.row].name
        return cell
    }
}

