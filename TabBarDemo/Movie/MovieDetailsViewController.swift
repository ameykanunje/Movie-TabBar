//
//  MovieDetailsViewController.swift
//  TabBarDemo
//
//  Created by csuftitan on 3/7/24.
//

import UIKit

class MovieDetailsViewController: UIViewController {

    var movieImageContainer : UIImage?
    var movieNameContainer : String?
    //connect components
    
    @IBOutlet weak var movieDetailsImageView: UIImageView!
    @IBOutlet weak var movieDetailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindData()
        // Do any additional setup after loading the view.
    }
    
    func bindData(){
        self.movieDetailsImageView.image = movieImageContainer
        self.movieDetailsLabel.text = movieNameContainer
    }
    

}
