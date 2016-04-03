//
//  ViewController.swift
//  Swipe Navigation Xcode 7
//
//  Created by PJ Vea on 7/22/15.
//  Copyright © 2015 Vea Software. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController
{

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad()

        
    {
        
        
        func playMusic(filename: String) {
            var audioPlayer: AVAudioPlayer?
            let url = NSBundle.mainBundle().URLForResource(filename, withExtension: nil)
            if (url == nil) {
                print("Could not find file: \(filename)")
                return
            }
            
            do {
                try audioPlayer =  AVAudioPlayer(contentsOfURL: url!)
                let player = audioPlayer
                
                // From Documentation: Negative integer value to loop the sound indefinitely until you call the stop method.
                player!.numberOfLoops = -1
                player!.prepareToPlay()
                player!.play()
            } catch _ {
                audioPlayer = nil;
            }
        }
        
        // call the function with your soundfile
        playMusic("horserace.aif")
        
        
        
        
        super.viewDidLoad()
        
        let vc0 = ViewController0(nibName: "ViewController0", bundle: nil)
        
        self.addChildViewController(vc0)
        self.scrollView.addSubview(vc0.view)
        vc0.didMoveToParentViewController(self)
        
        let vc1 = ViewController1(nibName: "ViewController1", bundle:nil)
        
        var frame1 = vc1.view.frame
        frame1.origin.x = self.view.frame.size.width
        vc1.view.frame = frame1
        
        self.addChildViewController(vc1)
        self.scrollView.addSubview(vc1.view)
        vc1.didMoveToParentViewController(self)
        
        let vc2 = ViewController2(nibName: "ViewController2", bundle:nil)
        
        var frame2 = vc2.view.frame
        frame2.origin.x = self.view.frame.size.width * 2
        vc2.view.frame = frame2
        
        self.addChildViewController(vc2)
        self.scrollView.addSubview(vc2.view)
        vc2.didMoveToParentViewController(self)
        
        let vc3 = ViewController2(nibName: "ViewController3", bundle:nil)
        
        var frame3 = vc3.view.frame
        frame3.origin.x = self.view.frame.size.width * 3
        vc3.view.frame = frame3
        
        self.addChildViewController(vc3)
        self.scrollView.addSubview(vc3.view)
        vc3.didMoveToParentViewController(self)
        
        self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 4, self.view.frame.size.height - 66);
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

