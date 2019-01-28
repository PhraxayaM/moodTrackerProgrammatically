//
//  CustomCell.swift
//  MoodTrackerProgrammatically
//
//  Created by MattHew Phraxayavong on 1/27/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        accessoryType = .disclosureIndicator
        
        setupColorView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var colorContainer: UIImageView = {
        var view = UIImageView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var labelStackView = StackView()

    func setupStackView() {
        addSubview(labelStackView)
        
        NSLayoutConstraint.activate([
            labelStackView.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            labelStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4),
            labelStackView.leadingAnchor.constraint(equalTo: colorContainer.trailingAnchor, constant: 8),
            labelStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -4)
            
            ])
    }
    
    func setupColorView() {
        addSubview(colorContainer)
        
        NSLayoutConstraint.activate([
            colorContainer.topAnchor.constraint(equalTo: topAnchor),
            colorContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            colorContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            colorContainer.widthAnchor.constraint(equalToConstant: 12)
            ])
    }
}
