//
//  ViewController.swift
//  localization
//
//  Created by Sümeyye Kılıçoğlu on 2.09.2022.
//

import UIKit

class ViewController: UIViewController {
    private let myLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 32, weight: .semibold)
        
       return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myLabel)
        myLabel.frame = view.bounds
    }

}
extension String {
    func localized() -> String {
        return NSLocalizedString(
            self,
            tableName: "Locaizable",
            bundle: .main,
            value: self,
            comment: self
        )
        
    }
}
