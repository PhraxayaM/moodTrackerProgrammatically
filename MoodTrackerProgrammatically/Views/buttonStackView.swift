//
//  buttonStackView.swift
//  MoodTrackerProgrammatically
//
//  Created by MattHew Phraxayavong on 1/27/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import UIKit

class buttonStackView: UIStackView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        axis = .vertical
        spacing = 8
        distribution = .fillEqually
        
        addArrangedSubview(amazingButton)
        addArrangedSubview(goodButton)
        addArrangedSubview(neutralButton)
        addArrangedSubview(badButton)
        addArrangedSubview(terribleButton)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var amazingButton: UIButton = {
        var button = UIButton(frame: .zero)
        button.tag = 0
        button.setTitle("Amazing", for: .normal)
        button.titleLabel?.textColor = .white
        button.backgroundColor = .lightGray
        
        return button
    }()
    
    var goodButton: UIButton = {
        var button = UIButton(frame: .zero)
        button.setTitle("Good", for: .normal)
        button.tag = 1
        button.titleLabel?.textColor = .white
        button.backgroundColor = .lightGray
        
        return button
    }()
    
    var neutralButton: UIButton = {
        var button = UIButton(frame: .zero)
        button.tag = 2
        button.setTitle("Neutral", for: .normal)
        button.titleLabel?.textColor = .white
        button.backgroundColor = .lightGray
        
        return button
    }()
    
    var badButton: UIButton = {
        var button = UIButton(frame: .zero)
        button.tag = 3
        button.setTitle("Bad", for: .normal)
        button.titleLabel?.textColor = .white
        button.backgroundColor = .lightGray
        
        return button
    }()
    
    var terribleButton: UIButton = {
        var button = UIButton(frame: .zero)
        button.tag = 4
        button.setTitle("Terrible", for: .normal)
        button.titleLabel?.textColor = .white
        button.backgroundColor = .lightGray
        
        return button
    }()


}
