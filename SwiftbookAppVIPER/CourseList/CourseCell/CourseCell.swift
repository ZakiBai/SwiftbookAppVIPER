//
//  CourseCell.swift
//  SwiftbookAppVIPER
//
//  Created by Zaki on 25.07.2023.
//

import UIKit

protocol CellModelRepresentable {
    var viewModel: CourseCellViewModelProtocol? { get }
}

class CourseCell: UITableViewCell, CellModelRepresentable {
    var viewModel: CourseCellViewModelProtocol? {
        didSet {
            updateView()
        }
    }
    
    func updateView() {
        guard let viewModel = viewModel as? CourseCellViewModel else { return }
        var content = defaultContentConfiguration()
        content.text = viewModel.courseName
        if let imageData = viewModel.courseImage {
            content.image = UIImage(data: imageData)
        }
        contentConfiguration = content
    }
   

}
