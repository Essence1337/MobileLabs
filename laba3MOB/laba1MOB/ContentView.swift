//
//  ContentView.swift
//  laba1MOB
//
//  Created by Тимур Кошевой on 15.05.2018.
//  Copyright © 2018 Тимур Кошевой. All rights reserved.
//

import UIKit

class ContentView: UIViewController {

   
    @IBAction func homeButton(_ sender: Any) {
        let myView = self.storyboard?.instantiateViewController(withIdentifier: "homeStoryboard") as! HomeViewController
        self.present(myView, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
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
