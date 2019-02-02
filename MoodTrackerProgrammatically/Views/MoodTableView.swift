//
//  MoodTableView.swift
//  MoodTrackerProgrammatically
//
//  Created by MattHew Phraxayavong on 1/27/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import UIKit

class MoodTableView: UITableView, UITableViewDataSource {
    let goodEntry = MoodEntry(mood: .good, date: Date())
    let badEntry = MoodEntry(mood: .bad, date: Date())
    let neutralEntry = MoodEntry(mood: .neutral, date: Date())
    
    var entries: [MoodEntry] = []
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        dataSource = self // Telling the tableView where wher ether data it
        delegate = self  // Telling the tableView how the cell should look
        register(CustomCell.self, forCellReuseIdentifier: "moodCell")
        
        entries = [goodEntry, badEntry, neutralEntry]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dequeueReusableCell(withIdentifier: "moodCell", for: indexPath) as! CustomCell
        let entry = entries[indexPath.row]
        
        // cell.configure(entry)
        
        cell.labelStackView.moodLabel.text = entry.mood.stringValue
        cell.labelStackView.dateLabel.text = String(describing: entry.date)
        cell.colorContainer.backgroundColor = entry.mood.colorValue
        return cell
    }
    
    // When a cell is selected do something
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let mainVC = self.findViewController() as? ViewController {
            let detailVC = MoodCreator()
            detailVC.date = entries[indexPath.row].date
            detailVC.mood = entries[indexPath.row].mood
            mainVC.navigationController?.pushViewController(detailVC, animated: true)
        }
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
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }
}
