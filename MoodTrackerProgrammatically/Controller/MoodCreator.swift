//
//  MoodCreator.swift
//  MoodTrackerProgrammatically
//
//  Created by MattHew Phraxayavong on 1/27/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import UIKit

class MoodCreator: UIViewController {
    var date: Date!
    var mood: MoodEntry.Mood!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        print("\(date)\n\(mood)")
        setupHousingView()
        updateUI()
        housingView.buttonStack.amazingButton.addTarget(self, action: #selector(pressMood(_:)), for: .touchUpInside)
        housingView.buttonStack.goodButton.addTarget(self, action: #selector(pressMood(_:)), for: .touchUpInside)
        housingView.buttonStack.neutralButton.addTarget(self, action: #selector(pressMood(_:)), for: .touchUpInside)
        housingView.buttonStack.badButton.addTarget(self, action: #selector(pressMood(_:)), for: .touchUpInside)
        housingView.buttonStack.terribleButton.addTarget(self, action: #selector(pressMood(_:)), for: .touchUpInside)
        
    }
    var housingView = HousingView(frame: .zero)
    
    func setupHousingView() {
        view.addSubview(housingView)
        housingView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            housingView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            housingView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            housingView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            housingView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            ])
    }
    
    
    @objc func pressMood(_ sender: UIButton) {
        switch sender.tag  {
        case 0:
            updateMood(to: .amazing)
        case 1:
            updateMood(to: .good)
        case 2:
            updateMood(to: .neutral)
        case 3:
            updateMood(to: .bad)
        case 4:
            updateMood(to: .terrible)
        default:
            
            //NOTE: error handling
            print("unhandled button tag")
        }
    }
    
    private func updateUI() {
        updateMood(to: mood)
        housingView.datePicker.date = date
    }
    private func updateMood( to newMood: MoodEntry.Mood) {
        let unselectedColor =  #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        switch newMood {
        case .none:
            housingView.buttonStack.amazingButton.backgroundColor = unselectedColor
            housingView.buttonStack.goodButton.backgroundColor = unselectedColor
            housingView.buttonStack.neutralButton.backgroundColor = unselectedColor
            housingView.buttonStack.badButton.backgroundColor = unselectedColor
            housingView.buttonStack.terribleButton.backgroundColor = unselectedColor
        case .amazing:
            housingView.buttonStack.amazingButton.backgroundColor = newMood.colorValue
            housingView.buttonStack.goodButton.backgroundColor = unselectedColor
            housingView.buttonStack.neutralButton.backgroundColor = unselectedColor
            housingView.buttonStack.badButton.backgroundColor = unselectedColor
            housingView.buttonStack.terribleButton.backgroundColor = unselectedColor
        case .good:
            housingView.buttonStack.amazingButton.backgroundColor = unselectedColor
            housingView.buttonStack.goodButton.backgroundColor = newMood.colorValue
            housingView.buttonStack.neutralButton.backgroundColor = unselectedColor
            housingView.buttonStack.badButton.backgroundColor = unselectedColor
            housingView.buttonStack.terribleButton.backgroundColor = unselectedColor
        case .neutral:
            housingView.buttonStack.amazingButton.backgroundColor = unselectedColor
            housingView.buttonStack.goodButton.backgroundColor = unselectedColor
            housingView.buttonStack.neutralButton.backgroundColor = newMood.colorValue
            housingView.buttonStack.badButton.backgroundColor = unselectedColor
            housingView.buttonStack.terribleButton.backgroundColor = unselectedColor
        case .bad:
            housingView.buttonStack.amazingButton.backgroundColor = unselectedColor
            housingView.buttonStack.goodButton.backgroundColor = unselectedColor
            housingView.buttonStack.neutralButton.backgroundColor = unselectedColor
            housingView.buttonStack.badButton.backgroundColor = newMood.colorValue
            housingView.buttonStack.terribleButton.backgroundColor = unselectedColor
        case .terrible:
            housingView.buttonStack.amazingButton.backgroundColor = unselectedColor
            housingView.buttonStack.goodButton.backgroundColor = unselectedColor
            housingView.buttonStack.neutralButton.backgroundColor = unselectedColor
            housingView.buttonStack.badButton.backgroundColor = unselectedColor
            housingView.buttonStack.terribleButton.backgroundColor = newMood.colorValue
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
// An extension to find the viewController a component is in
extension UIView {
    func findViewController() -> UIViewController? {
        if let nextResponder = self.next as? UIViewController {
            return nextResponder
        } else if let nextResponder = self.next as? UIView {
            return nextResponder.findViewController()
        } else {
            return nil
        }
    }
}
