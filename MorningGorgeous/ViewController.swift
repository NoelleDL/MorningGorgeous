//
//  ViewController.swift
//  MorningGorgeous
//
//  Created by Miss America on 5/29/18.
//  Copyright © 2018 Miss America. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var morningLabel: UILabel!
    @IBOutlet weak var gorgeousLabel: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "Magic-fairy-dust-sound-effect", ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
    }

   
    @IBAction func powerButton(_ sender: Any) {
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerButton.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.picture.frame = CGRect(x: 0, y: 20, width: 375, height: 402)
        })   {(finished) in
            self.morningLabel.isHidden = false
            self.gorgeousLabel.isHidden = false
        }
        
    }
    

}

