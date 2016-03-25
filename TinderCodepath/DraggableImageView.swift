//
//  DraggableImageView.swift
//  TinderCodepath
//
//  Created by Sarn Wattanasri on 3/24/16.
//  Copyright © 2016 Sarn. All rights reserved.
//

import UIKit

class DraggableImageView: UIView {

    @IBOutlet weak var innerImageView: UIImageView!
    
    var initialCenterPoint: CGPoint?
    var currentCenterPoint: CGPoint?
    
    @IBOutlet var contentView: UIView!
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    func rotate(contentViewToRotate: UIView, clockwise: Bool) {
        let direction = clockwise ? 1 : -1
        UIView.animateWithDuration(2.0, animations: { self.contentView.transform = CGAffineTransformMakeRotation( CGFloat(direction) * (30.0 * CGFloat(M_PI)) / 180.0 )
        })
    }
    @IBAction func onPanGesture(panGestureRecognizer: UIPanGestureRecognizer) {
        
        let translation = panGestureRecognizer.translationInView(self)
        
        initialCenterPoint = panGestureRecognizer.view?.center
        
        
        if panGestureRecognizer.state == UIGestureRecognizerState.Began {
            //set the current center to the imagecenter
            currentCenterPoint = innerImageView.center
        } else if panGestureRecognizer.state == UIGestureRecognizerState.Changed {
            
            //also rotate the contentView
            //if dragged to the right, rotate clockwise
            //detect the drag to the right
            if translation.x > contentView.center.x {
                rotate(self.contentView, clockwise: true)
                
                //animate off the screen to the right
                if translation.x > 50 {
                    self.contentView.center.x += self.bounds.width
                }
                
            } else if translation.x <= contentView.center.x {
                //else to the left, rotate counter clockwise
                rotate(self.contentView, clockwise: false)
                
                //animate off the screen to the left
                if translation.x < 50 {
                    self.contentView.center.x -= self.bounds.width
                }
            }

            
            //update the imageview center x to be translation center x
            self.contentView.center.x = translation.x
            
            
            
            
            
            
        }
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }

    func initSubviews() {
        let nib = UINib(nibName: "DraggableImageView", bundle: nil)
        nib.instantiateWithOwner(self, options: nil)
        contentView.frame = bounds
        addSubview(contentView)
        
        //custom initialization logics
        currentCenterPoint = self.center
    }
    
    
}
