//
//  ViewController.swift
//  NeedleExample
//
//  Created by Алексей Смирнов on 02.06.2021.
//

import UIKit
import Feature
import PrinterService

final class ViewController: UIViewController {
  
  var featureBuilder: FeatureViewControllerBuilderProtocol!
  var printerService: PrinterServiceProtocol!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .red
    
    printerService.printData()
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
      self.present(self.featureBuilder.build(), animated: true, completion: nil)
    }
  }
}
