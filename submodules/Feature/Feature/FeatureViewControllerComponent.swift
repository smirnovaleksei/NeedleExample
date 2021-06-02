//
//  FeatureViewControllerComponent.swift
//  Feature
//
//  Created by Алексей Смирнов on 02.06.2021.
//

import UIKit
import NeedleFoundation
import PrinterService

public protocol FeatureViewControllerBuilderProtocol {
  func build() -> UIViewController
}

public protocol FeatureViewControllerDependency: Dependency {
  var printerService: PrinterServiceProtocol { get }
}

public final class FeatureViewControllerComponent: Component<FeatureViewControllerDependency>, FeatureViewControllerBuilderProtocol {
  
  private var printerService: PrinterServiceProtocol!
  
  public override init(parent: Scope) {
    super.init(parent: parent)
    printerService = dependency.printerService
  }
  
  public func build() -> UIViewController {
    let controller = FeatureViewController()
    controller.printerService = printerService
    return controller
  }
}
