//
//  Student.swift
//  TabBarDemo
//
//  Created by csuftitan on 3/6/24.
//

import Foundation
import UIKit

struct Student{
    var companyImage : UIImage
    var companyName : String
}


var student : [Student] = [
    Student(companyImage: #imageLiteral(resourceName: "Apple.png"), companyName: "Apple"),
    Student(companyImage: #imageLiteral(resourceName: "CocoCola.png"), companyName: "CocoCola"),
    Student(companyImage: #imageLiteral(resourceName: "NASA.png"), companyName: "NASA"),
    Student(companyImage: #imageLiteral(resourceName: "Mitsubishi.png"), companyName: "Mitsubishi"),
    Student(companyImage: #imageLiteral(resourceName: "Dominos.png"), companyName: "Dominos")
]
