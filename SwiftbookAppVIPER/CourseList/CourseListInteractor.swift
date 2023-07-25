//
//  CourseListInteractor.swift
//  SwiftbookAppVIPER
//
//  Created by Zaki on 25.07.2023.
//

import Foundation

protocol CourseListInteractorInputProtocol {
    init(presenter: CourseListInteractorOutputProtocol)
    func fetchCourses()
}

protocol CourseListInteractorOutputProtocol: AnyObject {
    func didReceiveCourse(with dataStore: CourseListDataStore)
}

class CourseListInteractor: CourseListInteractorInputProtocol {
    
    private unowned let presenter: CourseListInteractorOutputProtocol
    
    required init(presenter: CourseListInteractorOutputProtocol) {
        self.presenter = presenter
    }
    
    func fetchCourses() {
        NetworkManager.shared.fetchData { [unowned self] courses in
            let dataStore = CourseListDataStore(courses: courses)
            presenter.didReceiveCourse(with: dataStore)
        }
    }
    
    
}
