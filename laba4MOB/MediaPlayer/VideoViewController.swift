//
//  VideoViewController.swift
//  MediaPlayer
//
//  Created by Тимур Кошевой on 22.05.2018.
//  Copyright © 2018 Тимур Кошевой. All rights reserved.
//

import UIKit
import AVKit

class VideoViewController: UIViewController {
    
    @IBOutlet weak var videoDisplay: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getVideo(videoCode: "EstJJD9RmwQ")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func getVideo(videoCode:String){
        let  url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        videoDisplay.loadRequest(URLRequest(url: url!))
    }
}


