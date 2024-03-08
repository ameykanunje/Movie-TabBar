//
//  StudentDetailsViewController.swift
//  TabBarDemo
//
//  Created by csuftitan on 3/6/24.
//

import UIKit

class StudentDetailsViewController: UIViewController {

    @IBOutlet weak var studentImageView: UIImageView!
    @IBOutlet weak var studentImageLabel: UILabel!
    var nameContainer : String?
    var imageContainer : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindData()
        // Do any additional setup after loading the view.
    }
    
    func bindData(){
        self.studentImageView.image = imageContainer
        self.studentImageLabel.text = nameContainer
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
