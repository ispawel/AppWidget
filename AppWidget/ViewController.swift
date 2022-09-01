//
//  ViewController.swift
//  AppWidget
//
//  Created by Pavel Isakov on 27.08.2022.
//

import UIKit

class ViewController: UIViewController {
    var iconPressed = 0

    private lazy var pressIconlabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "You click \(iconPressed) icon"
        $0.textAlignment = .center
        return $0
      }(UILabel())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        view.addSubview(pressIconlabel)
    }
}
//MARK: - Setup Constraints
extension ViewController {
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            pressIconlabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            pressIconlabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
        ])
    }
}
