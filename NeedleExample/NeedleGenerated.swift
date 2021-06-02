

import Feature
import NeedleFoundation
import PrinterService
import UIKit

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Registration

public func registerProviderFactories() {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: "^->RootComponent->ViewControllerComponent") { component in
        return ViewControllerDependencyf94e694d51fc38ba1ea6Provider(component: component)
    }
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: "^->RootComponent") { component in
        return EmptyDependencyProvider(component: component)
    }
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: "^->RootComponent->ViewControllerComponent->FeatureViewControllerComponent") { component in
        return FeatureViewControllerDependency4a3b078d1ce87eba6a06Provider(component: component)
    }
    
}

// MARK: - Providers

private class ViewControllerDependencyf94e694d51fc38ba1ea6BaseProvider: ViewControllerDependency {
    var printerService: PrinterServiceProtocol {
        return rootComponent.printerService
    }
    private let rootComponent: RootComponent
    init(rootComponent: RootComponent) {
        self.rootComponent = rootComponent
    }
}
/// ^->RootComponent->ViewControllerComponent
private class ViewControllerDependencyf94e694d51fc38ba1ea6Provider: ViewControllerDependencyf94e694d51fc38ba1ea6BaseProvider {
    init(component: NeedleFoundation.Scope) {
        super.init(rootComponent: component.parent as! RootComponent)
    }
}
private class FeatureViewControllerDependency4a3b078d1ce87eba6a06BaseProvider: FeatureViewControllerDependency {
    var printerService: PrinterServiceProtocol {
        return rootComponent.printerService
    }
    private let rootComponent: RootComponent
    init(rootComponent: RootComponent) {
        self.rootComponent = rootComponent
    }
}
/// ^->RootComponent->ViewControllerComponent->FeatureViewControllerComponent
private class FeatureViewControllerDependency4a3b078d1ce87eba6a06Provider: FeatureViewControllerDependency4a3b078d1ce87eba6a06BaseProvider {
    init(component: NeedleFoundation.Scope) {
        super.init(rootComponent: component.parent.parent as! RootComponent)
    }
}
