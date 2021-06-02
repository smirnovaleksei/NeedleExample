//
//  FeatureViewController.swift
//  Feature
//
//  Created by Алексей Смирнов on 02.06.2021.
//

import UIKit
import PrinterService

public final class FeatureViewController: UIViewController {
  
  var printerService: PrinterServiceProtocol!
  
  public override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .blue
    printerService.printData()
  }
}
