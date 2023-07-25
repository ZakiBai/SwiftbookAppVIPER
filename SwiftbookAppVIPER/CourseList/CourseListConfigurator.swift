//
//  CourseListConfigurator.swift
//  SwiftbookAppVIPER
//
//  Created by Zaki on 25.07.2023.
//

import Foundation

protocol CourseListConfiguratorInputProtocol {
    func configure(withView view: CourseListViewController)
}

class CourseListConfigurator: CourseListConfiguratorInputProtocol {
    func configure(withView view: CourseListViewController) {
        let presenter = CourseListPresenter(view: view)
        let interactor = CourseListInteractor(presenter: presenter)
        let router = CourseListRouter(view: view)
        
        view.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
