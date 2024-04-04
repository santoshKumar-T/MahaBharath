//
//  ContentViewModel.swift
//  MahaBharath
//
//  Created by Madhav on 04/04/24.
//
// 1.Singleton
// 2. Dependency injection with constructor injection (view - A - view b--c--d--e )
// 3. DI with dependency injection container ( one of the thied party libs - swinject)
import Foundation

class ContentViewModel: ObservableObject {

   @Injected private var logger: BGLoggerType 

// 2    init(logger: BGLoggerType = BGLogger()) {
//        self.logger = logger
//    }

    func onAppear() {
       // BGLogger.shared.info("View is loaded")
        logger.info("View is Loaded")
    }
}
