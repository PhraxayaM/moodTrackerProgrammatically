//
//  StackView.swift
//  MoodTrackerProgrammatically
//
//  Created by MattHew Phraxayavong on 1/27/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import UIKit

class StackView: UIStackView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        axis = .vertical
        spacing = 0
        distribution = .fill
        translatesAutoresizingMaskIntoConstraints = false
        addArrangedSubview(moodLabel)
        addArrangedSubview(dateLabel)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var moodLabel: UILabel = {
        var label = UILabel(frame: .zero)
        label.setContentHuggingPriority(UILayoutPriority(rawValue: 250), for: .vertical)
        label.backgroundColor = .green
        label.textAlignment = .left
        label.text = "MoodLabel"
        label.font = UIFont(name: "Helvetica", size: 15)
        label.textColor = .black
        
        return label
    }()
    
    var dateLabel: UILabel = {
        var label = UILabel(frame: .zero)
        label.font = UIFont(name: "Helvetica", size: 12)
        label.textColor = .lightGray
        label.text = "DateLabel"
        label.textAlignment = .left
        label.backgroundColor = .cyan
        return label
    }()
    
    
}
