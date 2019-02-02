//
//  HousingView.swift
//  MoodTrackerProgrammatically
//
//  Created by MattHew Phraxayavong on 1/27/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import UIKit

class HousingView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupHousingStack()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    var datePicker: UIDatePicker = {
        var picker = UIDatePicker(frame: .zero)
        picker.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 250), for: .vertical)
        picker.datePickerMode = .date
        return picker
    }()
    
    var buttonStack = buttonStackView()
    
    var housingStack: UIStackView = {
        var stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        //stackView.distribution = .fill
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    var moodLabel: UILabel = {
        var label = UILabel(frame: .zero)
        label.text = "Mood"
        label.font = UIFont.preferredFont(forTextStyle: .title2)
        label.textAlignment = .center
        return label
        
    }()
    
    var dateLabel: UILabel = {
        var label = UILabel(frame: .zero)
        label.text = "Date"
        label.font = UIFont.preferredFont(forTextStyle: .title2)
        label.textAlignment = .center
        return label
        
    }()
    func setupHousingStack() {
        addSubview(housingStack)
        
        housingStack.addArrangedSubview(moodLabel)
        housingStack.addArrangedSubview(buttonStack)
        housingStack.addArrangedSubview(dateLabel)
        housingStack.addArrangedSubview(datePicker)
        housingStack.distribution = .fill
        print(housingStack.arrangedSubviews)
        NSLayoutConstraint.activate([
            housingStack.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            housingStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            housingStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            housingStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            
            datePicker.heightAnchor.constraint(equalTo: buttonStack.heightAnchor),
            dateLabel.heightAnchor.constraint(equalToConstant: 20),
            moodLabel.heightAnchor.constraint(equalToConstant: 20)
            ])
        
    }

}
