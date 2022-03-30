//
//  DescriptionViewController.swift
//  MVCExampleApp
//
//  Created by Gregory Odintsov on 29.03.2022.
//

import UIKit

class DescriptionViewController: UIViewController {

    @IBOutlet var descriptionLabel: UILabel!
    
    var meal: Meal!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = meal.name
        descriptionLabel.text = meal.description
    }
    


}
