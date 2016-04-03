//
//  ViewController0.swift
//  Swipe Navigation Xcode 7
//
//  Created by PJ Vea on 7/22/15.
//  Copyright © 2015 Vea Software. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController0: UIViewController {
    
    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    
    
    
    @IBAction func playLaffitMovie(sender: AnyObject) {
        self.presentViewController(playerViewController, animated: true) {
            self.playerViewController.player?.play()
            
        }
        
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(animated: Bool) {
        let fileURL = NSURL(fileURLWithPath: "/Volumes/Seagate/Jockey App/xcode project/Swipe Navigation Xcode 7/1982BelmontStakes.mp4")
        playerView = AVPlayer(URL: fileURL)
        
        playerViewController.player = playerView
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
