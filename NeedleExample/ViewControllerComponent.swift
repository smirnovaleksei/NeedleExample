//
//  ViewControllerComponent.swift
//  NeedleExample
//
//  Created by Алексей Смирнов on 02.06.2021.
//

import UIKit
import NeedleFoundation
import Feature
import PrinterService

protocol ViewControllerBuilderProtocol {
  func build() -> UIViewController
}

public protocol ViewControllerDependency: Dependency {
  var printerService: PrinterServiceProtocol { get }
}

final class ViewControllerComponent: Component<ViewControllerDependency>, ViewControllerBuilderProtocol {
  
  func build() -> UIViewController {
    let controller = ViewController()
    controller.printerService = dependency.printerService
    controller.featureBuilder = featureBuilder
    return controller
  }
  
  var featureBuilder: FeatureViewControllerBuilderProtocol {
    FeatureViewControllerComponent(parent: self)
  }
}
