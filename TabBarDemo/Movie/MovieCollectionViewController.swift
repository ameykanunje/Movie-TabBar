//
//  MovieCollectionViewController.swift
//  TabBarDemo
//
//  Created by csuftitan on 3/6/24.
//

import UIKit

class MovieCollectionViewController: UIViewController {

    @IBOutlet weak var movieCollectionView: UICollectionView! //movie collection view
    @IBOutlet weak var movieCollectionViewFlowLayout: UICollectionViewFlowLayout!
    
    var movieCollectionViewCell : MovieCollectionViewCell?
    var uiNIb : UINib?
    var movieDetailsViewController : MovieDetailsViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initilizeDelegateMethods()
        registerXibWithCollectionView()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        movieCollectionViewFlowLayout.scrollDirection = .vertical
        movieCollectionViewFlowLayout.minimumInteritemSpacing = 0.5
        movieCollectionViewFlowLayout.minimumLineSpacing = 0.5
    }
    
    func initilizeDelegateMethods(){
        movieCollectionView.dataSource = self
        movieCollectionView.delegate = self
        
    }
    
    func registerXibWithCollectionView(){
        uiNIb = UINib(nibName: "MovieCollectionViewCell", bundle: nil)
        self.movieCollectionView.register(uiNIb, forCellWithReuseIdentifier: "MovieCollectionViewCell")
    }

}

extension MovieCollectionViewController : UICollectionViewDataSource{
    //catered for taking care of how data will be displayed
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //deque the cell
        movieCollectionViewCell = self.movieCollectionView.dequeueReusableCell(withReuseIdentifier: "MovieCollectionViewCell", for: indexPath) as! MovieCollectionViewCell
        movieCollectionViewCell?.cImageView.image = movie[indexPath.item].movieImage
        movieCollectionViewCell?.cLabel.text = movie[indexPath.item].movieName
        
        return movieCollectionViewCell!
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movie.count
    }
}

extension MovieCollectionViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
//        let totalWidth = self.movieCollectionView.bounds.size.width //save total width
//        let numberOfCellsInRow = 4
//        let dimensions = CGFloat(Int(totalWidth)/numberOfCellsInRow)
//        return CGSize(width: dimensions, height: dimensions/4)
        return CGSize(width: 100, height: 120)
    }
}

extension MovieCollectionViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
        movieDetailsViewController = self.storyboard?.instantiateViewController(identifier: "MovieDetailsViewController") as! MovieDetailsViewController
        movieDetailsViewController?.movieImageContainer = movie[indexPath.item].movieImage
        movieDetailsViewController?.movieNameContainer = movie[indexPath.item].movieName
        
        self.navigationController?.pushViewController(movieDetailsViewController!, animated: true)
    }
}

