//
//  StudentTableViewController.swift
//  TabBarDemo
//
//  Created by csuftitan on 3/6/24.
//

import UIKit

class StudentTableViewController: UIViewController {

    @IBOutlet weak var studentTableView: UITableView!
    
    var uiNib : UINib?
    var studentTableViewCell : StudentTableViewCell?
    var studentDetailsViewController : StudentDetailsViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        initilizationOfTableView()
        registerXIBWithTableView()
        // Do any additional setup after loading the view.
    }
    
    func initilizationOfTableView(){
        studentTableView.delegate = self
        studentTableView.dataSource = self
    }
    
    func registerXIBWithTableView(){
        uiNib = UINib(nibName: "StudentTableViewCell", bundle: nil)
        self.studentTableView.register(uiNib, forCellReuseIdentifier: "StudentTableViewCell")
    }
    

}

extension StudentTableViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        studentDetailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "StudentDetailsViewController") as! StudentDetailsViewController
        studentDetailsViewController?.imageContainer = student[indexPath.row].companyImage
        studentDetailsViewController?.nameContainer = student[indexPath.row].companyName
        
        self.navigationController?.pushViewController(studentDetailsViewController!, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}

extension StudentTableViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return student.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        studentTableViewCell = self.studentTableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath) as! StudentTableViewCell
        
        studentTableViewCell?.studentImageView.image = student[indexPath.row].companyImage
        studentTableViewCell?.nameLabel.text = student[indexPath.row].companyName
        
        return studentTableViewCell!
        
    }
    
    
}
