//
//  ViewController.swift
//  laba3MOB
//
//  Created by Тимур Кошевой on 10.04.2018.
//  Copyright © 2018 Тимур Кошевой. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var menuOutlet: UIButton!
    @IBOutlet var menuItemsOutlets: [UIButton]!
    
    @IBOutlet weak var labelPet: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    //Actions
    
    //File checker
    @IBAction func checkFile(_ sender: Any) {
        let fileName = "file"
        let DocumentDirURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        let fileUrl = DocumentDirURL.appendingPathComponent(fileName).appendingPathExtension("txt")
        //read
        var readString = ""
        do{
            readString = try String(contentsOf: fileUrl)
        }catch let error as NSError{
            print("Failed to read file")
            print(error)
        }
        //alert
        let alertController = UIAlertController(title: "File contents:", message: readString, preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default,handler: nil))
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func menuAction(_ sender: UIButton) {
        menuItemsOutlets.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                self.view.sendSubview(toBack: self.labelPet)
                self.view.sendSubview(toBack: self.myImageView)
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    //collection
    @IBAction func menuItemsActions(_ sender: UIButton) {
        menuOutlet.titleLabel?.text = sender.titleLabel?.text
        let pet = sender.titleLabel?.text
        labelPet.text = pet
        labelPet.isHidden = false
        myImageView.contentMode = UIViewContentMode.scaleAspectFit
        var farm = ["Cat": "Cat.jpg",
                    "Doge": "Doge.jpeg",
                    "Mouse": "Mouse.jpg",
                    "Hamster": "Hamster.jpeg",
                    "Chupakabra": "Chupakabra.png"]
        
        myImageView.image = UIImage(named: farm[pet!]!)

        
        menuItemsOutlets.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                self.view.sendSubview(toBack: self.labelPet)
                self.view.sendSubview(toBack: self.myImageView)
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
                
                //file start
                let fileName = "file"
                let DocumentDirURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
                let fileUrl = DocumentDirURL.appendingPathComponent(fileName).appendingPathExtension("txt")
                //write
                let writeSrtring = farm[pet!]!
                do{
                    try writeSrtring.write(to: fileUrl, atomically: true, encoding: String.Encoding.utf8)
                }catch let error as NSError{
                    print("Failed to write to URL")
                    print(error)
                }
                //read
                var readString = ""
                do{
                    readString = try String(contentsOf: fileUrl)
                }catch let error as NSError{
                    print("Failed to read file")
                    print(error)
                }
                print("Contents of the file:  \(readString)")
                //file end
            })
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        menuOutlet.titleLabel?.textAlignment = .center
        menuOutlet.titleLabel?.numberOfLines = 0
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

