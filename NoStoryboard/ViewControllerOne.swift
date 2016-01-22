//
//  ViewControllerOne.swift
//  NoStoryboard
//
//  Created by Michal Cierniak on 1/21/16.
//  Copyright © 2016 Home. All rights reserved.
//

import UIKit

class ViewControllerOne: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.grayColor()
        
        let button = UIButton();
        view.addSubview(button)
        button.setTitle("Back", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        button.autoresizingMask = [
            .FlexibleTopMargin,
            .FlexibleLeftMargin,
            .FlexibleRightMargin,
            .FlexibleBottomMargin
        ]
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activateConstraints([
            button.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor),
            button.topAnchor.constraintEqualToAnchor(view.topAnchor, constant: 50)
            ])
        
        button.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
    }
    
    func buttonPressed(sender: UIButton!) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
