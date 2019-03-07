//
//  ExampleModel.swift
//  MVCExample
//
//  Created by iCat Developer on 07/03/2019.
//  Copyright © 2019 iCat Solutions Ltd. All rights reserved.
//

import Foundation

protocol ExampleModelDelegate: class {
    func modelDidSayHello()
}

protocol ExampleModelProtocol: class {
    var delegate: ExampleModelDelegate? { get set }
    var modelProperty: String { get }
    func modelFunction()
}

class ExampleModel: ExampleModelProtocol {
    
    var delegate: ExampleModelDelegate?
    
    // MARK: - Properties
    
    var modelProperty = ""
    
    // MARK: - functions
    
    func modelFunction() { }
    
    // MARK: - Private methods
}
