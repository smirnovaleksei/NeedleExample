//
//  PrinterService.swift
//  PrinterService
//
//  Created by Алексей Смирнов on 02.06.2021.
//

public protocol PrinterServiceProtocol: AnyObject {
  func printData()
}

public final class PrinterService {
  public init() { }
}

extension PrinterService: PrinterServiceProtocol {
  public func printData() {
    print(#function)
  }
}
