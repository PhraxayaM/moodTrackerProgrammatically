//
//  MoodTableView.swift
//  MoodTrackerProgrammatically
//
//  Created by MattHew Phraxayavong on 1/27/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import UIKit

class MoodTableView: UITableView, UITableViewDataSource {
    
    var intList = [1,2,3,4,5]
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        dataSource = self // Telling the tableView where wher ether data it
        delegate = self  // Telling the tableView how the cell should look
        register(UITableViewCell.self, forCellReuseIdentifier: "moodCell")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dequeueReusableCell(withIdentifier: "moodCell", for: indexPath)
        cell.textLabel?.text = "\(intList[indexPath.row])"
        return cell
    }
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
}

extension MoodTableView: UITableViewDelegate {
    
}
