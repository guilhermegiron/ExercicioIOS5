//
//  ViewController.swift
//  Created by guilhermegiron on 4/11/23.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let tableView = UITableView()
    
    let emoticons = ["🤙", "🖐", "🤝", "👊", "🤘", "👏", "✊", "🙌", "👆", "🤲", "🙌", "👆"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        //Habilitar Scroll... ai posso ter mais elementos e assim poder scrollar a tableview
        tableView.isScrollEnabled = true
        
        
    }
    
    func setupView(){
        view.backgroundColor = .blue
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //Para ocupar toda a view usa esse bounds...
        //tableView.frame = view.bounds
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        //tableView.topAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.529).isActive = true
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emoticons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "\(indexPath.row): \(emoticons[indexPath.row])"
        cell.textLabel?.textAlignment = .center
        return cell
    }

}

