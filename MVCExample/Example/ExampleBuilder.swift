//
//  ExampleBuilder.swift
//  MVCExample
//
//  Created by iCat Developer on 07/03/2019.
//  Copyright © 2019 iCat Solutions Ltd. All rights reserved.
//

import Foundation

class ExampleBuilder: NSObject {
    
    /// Create view controller with view, model, router
    ///
    /// - Returns: instance of the ICARSoundEditViewController
    class func viewController() -> ExampleViewController {
        let view = ExampleView.create() as! ExampleViewProtocol
        let model: ExampleModelProtocol = ExampleModel()
        let router = ExampleRouter()
        let viewController = ExampleViewController(withView: view, model: model, router: router)
        return viewController
    }
}
