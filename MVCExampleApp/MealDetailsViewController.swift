//
//  MealDetailsViewController.swift
//  MVCExampleApp
//
//  Created by Gregory Odintsov on 29.03.2022.
//

import UIKit

class MealDetailsViewController: UIViewController {

    @IBOutlet var mealStackView: UIStackView!
    @IBOutlet var mealImageView: UIImageView! {
        didSet {
            mealImageView.layer.cornerRadius = 50
            mealImageView.contentMode = .scaleToFill
        }
    }
    
    @IBOutlet var mealNameLabel: UILabel!
    @IBOutlet var mealPriceLabel: UILabel!
    @IBOutlet var mealRatingLabel: UILabel!
    
    private let meal = Meal.getMeal()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI(with: view.bounds.size)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let descriptionVC = navigationVC.topViewController as? DescriptionViewController else { return }
        descriptionVC.meal = meal
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        setupUI(with: size)
    }

}
//MARK: - private methods
extension MealDetailsViewController {
    private func setupUI(with size: CGSize) {
        let isVertical = size.width < size.height
        mealStackView.axis = isVertical ? .vertical : .horizontal
        
        mealImageView.image = UIImage(named: meal.image)
        mealNameLabel.text = meal.name
        mealPriceLabel.text = meal.price
        mealRatingLabel.text = meal.ratingBar
    }
}
