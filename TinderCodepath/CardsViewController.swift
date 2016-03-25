//
//  ViewController.swift
//  TinderCodepath
//
//  Created by Sarn Wattanasri on 3/24/16.
//  Copyright © 2016 Sarn. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {
    
    

//    @IBOutlet weak var mainProfileImageView: UIImageView!
    
    @IBOutlet weak var customProfileView: DraggableImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onImagePanGesture(panGestureRecognizer: UIPanGestureRecognizer) {
        
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

