//
//  ViewController.swift
//  MoodTrackerProgrammatically
//
//  Created by MattHew Phraxayavong on 1/27/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import UIKit


// View controller should only handle passing data

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .red
        view.addSubview(tableView)
        var addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonPressed))
        navigationItem.rightBarButtonItem = addButton
        
    }
    var tableView = MoodTableView(frame: UIScreen.main.bounds)
    
    @objc func addButtonPressed() {
        let now = Date()
        let newMood = MoodEntry(mood: .amazing, date: now)
        tableView.entries.insert(newMood, at: 0)
        tableView.reloadData()
        //navigationController?.pushViewController(MoodCreator(), animated: true)
    }
    
}

