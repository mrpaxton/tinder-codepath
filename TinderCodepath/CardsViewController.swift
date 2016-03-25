//
//  ViewController.swift
//  TinderCodepath
//
//  Created by Sarn Wattanasri on 3/24/16.
//  Copyright © 2016 Sarn. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {
    
    var initialCenterPoint: CGPoint?
    var currentCenterPoint: CGPoint?

    @IBOutlet weak var mainProfileImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        currentCenterPoint = mainProfileImageView.center
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onImagePanGesture(panGestureRecognizer: UIPanGestureRecognizer) {
        let translation = panGestureRecognizer.translationInView(view)
        
        initialCenterPoint = panGestureRecognizer.view?.center
        
        
        if panGestureRecognizer.state == UIGestureRecognizerState.Began {
            //set the current center to the imagecenter
            currentCenterPoint = mainProfileImageView.center
        } else if panGestureRecognizer.state == UIGestureRecognizerState.Changed {
            //update the imageview center x to be translation center x
            mainProfileImageView.center.x = translation.x
            
        }
    }
    
//    func onCustomPan(panGestureRecognizer: UIPanGestureRecognizer) {
//        
//        let translation = panGestureRecognizer.translationInView(view)
//        
//        if panGestureRecognizer.state == UIGestureRecognizerState.Began {
//            initialCenterPoint = (panGestureRecognizer.view?.center)!
//            
//        } else if panGestureRecognizer.state == UIGestureRecognizerState.Changed {
//            mainProfileImageView.center.x = translation.x
//        }
//        print(mainProfileImageView.center.x)
//    }


}

