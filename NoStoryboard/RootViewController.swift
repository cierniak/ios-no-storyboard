//
//  RootViewController.swift
//  NoStoryboard
//
//  Created by Michal Cierniak on 1/21/16.
//  Copyright © 2016 Home. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.whiteColor()
        
        let buttonOne = UIButton();
        view.addSubview(buttonOne)
        buttonOne.setTitle("View One", forState: .Normal)
        buttonOne.setTitleColor(UIColor.blueColor(), forState: .Normal)
        buttonOne.autoresizingMask = [
            .FlexibleTopMargin,
            .FlexibleLeftMargin,
            .FlexibleRightMargin,
            .FlexibleBottomMargin
        ]
        buttonOne.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activateConstraints([
            buttonOne.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor),
            buttonOne.topAnchor.constraintEqualToAnchor(view.topAnchor, constant: 50)
            ])
        buttonOne.addTarget(self, action: "buttonOnePressed:", forControlEvents: .TouchUpInside)
        
        let buttonTwo = UIButton();
        view.addSubview(buttonTwo)
        buttonTwo.setTitle("View Two", forState: .Normal)
        buttonTwo.setTitleColor(UIColor.blueColor(), forState: .Normal)
        buttonTwo.autoresizingMask = [
            .FlexibleTopMargin,
            .FlexibleLeftMargin,
            .FlexibleRightMargin,
            .FlexibleBottomMargin
        ]
        buttonTwo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activateConstraints([
            buttonTwo.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor),
            buttonTwo.topAnchor.constraintEqualToAnchor(buttonOne.bottomAnchor, constant: 50)
            ])
        buttonTwo.addTarget(self, action: "buttonTwoPressed:", forControlEvents: .TouchUpInside)
        
    }
    
    func buttonOnePressed(sender: UIButton!) {
        let vc1 = ViewControllerOne()
        self.presentViewController(vc1, animated: true, completion: nil)
    }
    
    func buttonTwoPressed(sender: UIButton!) {
        let vc2 = ViewControllerTwo()
        self.presentViewController(vc2, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
