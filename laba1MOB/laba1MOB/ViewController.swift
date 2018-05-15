//
//  ViewController.swift
//  laba1MOB
//
//  Created by Тимур Кошевой on 10.04.2018.
//  Copyright © 2018 Тимур Кошевой. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlet
    @IBOutlet weak var menuOutlet: UIButton!
    @IBOutlet var menuItemsOutlets: [UIButton]!
    @IBOutlet weak var labelPet: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    //Action
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
            })
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
//        menuOutlet.layer.cornerRadius = menuOutlet.frame.height / 2.0
        menuItemsOutlets.forEach { (buttons) in
//            buttons.layer.cornerRadius = buttons.frame.height / 2.0
        }
        menuOutlet.titleLabel?.textAlignment = .center
        menuOutlet.titleLabel?.numberOfLines = 0
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

