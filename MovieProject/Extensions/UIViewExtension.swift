//
//  UIViewExtension.swift
//  MovieProject
//
//  Created by Eman Khaled on 08/10/2023.
//

import Foundation
import UIKit

extension UIView{
    func round(_ radiuis: CGFloat = 10){
        self.layer.cornerRadius = radiuis
        self.clipsToBounds = true
    }
    func addBorder(color: UIColor, width: CGFloat){
        self.layer.borderColor = color.cgColor
    }
}
