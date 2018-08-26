//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    // TODO Step 5: Initialise instance variables here
    
    let fullStory = StoryBank()
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        updateView()

    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        // TODO Step 4: Write an IF-Statement to update the views
        if count == 0 && sender.tag == 1   {
            count += 1
            updateView()
        } else if count == 0 && sender.tag == 2{
            count += 2
            updateView()
        }else if count == 1 && sender.tag == 1{
            getEnding(endingNumber: 0)
        }else if count == 1 && sender.tag == 2{
            count = 2
            updateView()
        }else if count == 2 && sender.tag == 1{
            getEnding(endingNumber: 1)
        }else if count == 2 && sender.tag == 2{
            getEnding(endingNumber: 2)
        }

        
    
    }
    func updateView() {
        storyTextView.text = fullStory.list[count].storyLine
        topButton.setTitle(fullStory.list[count].answerA, for: .normal)
        bottomButton.setTitle(fullStory.list[count].answerB, for: .normal)
    }
    
    func getEnding(endingNumber: Int) {
        storyTextView.text = fullStory.endings[endingNumber]
        topButton.setTitle(" ", for: .normal)
        bottomButton.setTitle(" ", for: .normal)

    }



}

