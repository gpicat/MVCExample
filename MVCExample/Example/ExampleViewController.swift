//
//  ViewController.swift
//  MVCExample
//
//  Created by iCat Developer on 07/03/2019.
//  Copyright © 2019 iCat Solutions Ltd. All rights reserved.
//

import UIKit

typealias ExampleViewControllerType = MVCViewController<ExampleModelProtocol, ExampleViewProtocol, ExampleRouter>

class ExampleViewController: ExampleViewControllerType, ExampleViewDelegate, ExampleModelDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        model.delegate = self
        customView.delegate = self
        customView.setupView()
    }
    
    // MARK: - ExampleModelDelegate
    
    func modelDidSayHello() {
        
    }
    
    // MARK: - ExampleViewDelegate
    
    func viewDidSayHello()  {
        
    }
    
}

