//
//  CourseCellViewModel.swift
//  SwiftbookAppVIPER
//
//  Created by Zaki on 25.07.2023.
//

import Foundation

protocol CourseCellViewModelProtocol {
    var cellIdentifier: String { get }
    var cellHeight: Double { get }
    var courseName: String { get }
    var courseImage: Data? { get }
    init(course: Course)
}

protocol CourseSectionViewModelProtocol {
    var rows: [CourseCellViewModelProtocol] { get }
    var numberOfRows: Int { get }
}

class CourseCellViewModel: CourseCellViewModelProtocol {
    
    var cellIdentifier: String {
         "CourseCell"
    }
    
    var cellHeight: Double {
        100
    }
    
    var courseName: String {
        course.name
    }
    
    var courseImage: Data? {
        ImageManager.shared.fetchImageData(from: course.imageURL)
    }
    
    private let course: Course
    
    required init(course: Course) {
        self.course = course
    }
    
}

class CourseSectionViewModel: CourseSectionViewModelProtocol {
    var rows: [CourseCellViewModelProtocol] = []
    
    var numberOfRows: Int {
        rows.count
    }
    
    
}
