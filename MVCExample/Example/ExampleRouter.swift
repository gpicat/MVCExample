//
//  ExampleRouter.swift
//  MVCExample
//
//  Created by iCat Developer on 07/03/2019.
//  Copyright © 2019 iCat Solutions Ltd. All rights reserved.
//

import UIKit

class ExampleRouter: NSObject {
    var baseViewController: UIViewController?
    func navigate() {
        // NOTE: - navigate to somewhere else
        let destination = ExampleBuilder.viewController()
        baseViewController?.present(destination, animated: true, completion: nil)
    }
}
