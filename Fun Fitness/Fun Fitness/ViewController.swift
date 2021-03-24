//
//  ViewController.swift
//  Fun Fitness
//
//  Created by Brandon Capparelli on 3/10/21.
//
import UIKit

class ViewController: UIViewController
{


    private let tableView: UITableView =
    {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    private let data: [Profile] =
    [
        Profile(name: "Brandon", measurments: ["Sex: Male", "Weight: 120", "Height: 2", "Age: 20", "BMI: 30", "BMR: 2,355"]),
        Profile(name: "Jimy", measurments: ["Sex: Male", "Weight: 100", "Height: 1.89", "Age: 20", "BMI: 28", "BMR: 2,086"]),
        Profile(name: "Fransisco", measurments: ["Sex: Male", "Weight: 110", "Height: 1.78", "Age: 20", "BMI: 34.7", "BMR: 2,118"]),
        Profile(name: "Kevan", measurments: ["Sex: Male", "Weight: 95", "Height: 2.3", "Age: 20", "BMI: 18", "BMR: 2,239"]),
    ]

    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func viewDidLayoutSubviews()
    {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }

    
}

extension ViewController: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
        let profile = data[indexPath.row]
        
        let vc = ListViewController(items: profile.measurments)
        vc.title = profile.name
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension ViewController: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row].name
        return cell
    }
}
