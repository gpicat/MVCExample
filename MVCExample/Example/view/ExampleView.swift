//
//  ExampleView.swift
//  MVCExample
//
//  Created by iCat Developer on 07/03/2019.
//  Copyright © 2019 iCat Solutions Ltd. All rights reserved.
//

import UIKit

protocol ExampleViewDelegate: class {
    func viewDidSayHello()
}

protocol ExampleViewProtocol: class {
    var delegate: ExampleViewDelegate? { get set }
    func setupView()
}

class ExampleView: UIView, ExampleViewProtocol {
    var delegate: ExampleViewDelegate?
    
    // MARK: - IBOutlets
    
    @IBOutlet private weak var welcomeLabel: UILabel!
    
    // MARK: - Overrided methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        welcomeLabel.text = "awake from nib"
    }
    
    func setupView() {
        welcomeLabel.text = "Hello MVC"
    }
}

