//
//  RootComponent.swift
//  NeedleExample
//
//  Created by Алексей Смирнов on 02.06.2021.
//

import NeedleFoundation
import PrinterService

final class RootComponent: BootstrapComponent {
  
  var printerService: PrinterServiceProtocol {
    shared {
      PrinterService()
    }
  }
  
  var viewControllerComponent: ViewControllerComponent {
    ViewControllerComponent(parent: self)
  }
}
