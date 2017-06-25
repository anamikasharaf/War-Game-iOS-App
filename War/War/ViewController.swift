//
//  ViewController.swift
//  War
//
//  Created by Anamika Sharaf on 6/24/17.
//  Copyright © 2017 Anamika Sharaf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightscore:Int = 0

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftscore:Int = 0
    
    let cardarray = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: AnyObject) {
        
        // Generating Random card Number for leftImageView from 0 to 12
        let leftnumber = Int(arc4random_uniform(13))
        //setting the left image
        leftImageView.image = UIImage(named: cardarray[leftnumber])
        
        // Generating Random card Number for leftImageView from 0 to 12
        let rightnumber = Int(arc4random_uniform(13))
        //setting the right image
        rightImageView.image = UIImage(named:  cardarray[rightnumber])
        
        //Deciding which card is bigger
        if(leftnumber > rightnumber){
            //left card wins, increment score
            leftscore += 1
            
            //update the label
            leftScoreLabel.text = String(leftscore)
        }
        else if (leftnumber == rightnumber){
            //cards are same, not doing anything
            
        }
        else{
            //right card wins, increment score
            rightscore += 1
            
            //update the label
            rightScoreLabel.text = String(rightscore)
            
        }

    }

}

