//
//  ViewController.swift
//  Demo
//
//  Created by Dipanwita Bardhan on 08/08/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var backgroundViewBig : UIView!
    @IBOutlet weak var headerView : UIView!
    @IBOutlet weak var priceView : UIView!
    @IBOutlet weak var priceOne : UIView!
    @IBOutlet weak var priceTwo : UIView!
    @IBOutlet weak var priceThree : UIView!
    @IBOutlet weak var colVw: UICollectionView!
    
    
    var collectionArray = [ "title" : ["Payment History" ,"Order History","Tracking","Payment History" ,"Order History","Tracking","Payment History" ,"Order History","Tracking","Payment History" ,"Order History","Tracking"] , "img" : ["profile" ,"orderDetails","paymentDetails","profile" ,"orderDetails","paymentDetails","profile" ,"orderDetails","paymentDetails","profile" ,"orderDetails","paymentDetails"]]
    var collectionArrayImg = ["profile" ,"orderDetails","paymentDetails","profile" ,"orderDetails","paymentDetails","profile" ,"orderDetails","paymentDetails","profile" ,"orderDetails","paymentDetails"]
     
    var newarray = [String]()
    
    var dict = ["kay":["1","2","3"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     //   setupUI ()
        newarray = collectionArrayImg
    }

    func setupUI (){
        backgroundViewBig.layer.cornerRadius = 20
        priceView.layer.cornerRadius = 20
        priceOne.layer.cornerRadius = 10
        priceTwo.layer.cornerRadius = 10
        priceThree.layer.cornerRadius = 10
        colVw.layer.cornerRadius = 20
    }
    
    
    
}

extension ViewController : UICollectionViewDelegate , UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.backgroundVW.layer.cornerRadius = 10
        cell.nameLbl.text = collectionArray["title"]?[indexPath.row]
        cell.img.image = UIImage(named: "\(collectionArray["img"]?[indexPath.row] ?? "")")
        return cell
    }
    
    
    
    
    
    
    
    
}

