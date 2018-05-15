//
//  HomeViewController.swift
//  laba1MOB
//
//  Created by Тимур Кошевой on 15.05.2018.
//  Copyright © 2018 Тимур Кошевой. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var showChooserOutlet: UIButton!
    override func viewDidLoad() {
        
            showChooserOutlet.layer.cornerRadius = showChooserOutlet.frame.height / 2.0
        // Do any additional setup after loading the view.
    super.viewDidLoad()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
