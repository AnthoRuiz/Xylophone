//
//  ViewController.swift
//  Xylophone
//
//  Created by Anthony Ruiz on 4/24/18.
//  Copyright © 2018 Jakaboy. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
   
   var audioPlayer: AVAudioPlayer!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
   func chargeSound(tag: Int) {
      do{
         let path = Bundle.main.url(forResource: "note" + String(tag), withExtension: "wav")
         audioPlayer = try AVAudioPlayer(contentsOf: path!)
         audioPlayer.prepareToPlay()
         audioPlayer.play()
      }catch let error as NSError{
         print(error.debugDescription)
      }
   }

    @IBAction func notePressed(_ sender: UIButton) {
      
      chargeSound(tag: sender.tag)
        
    }
   
}

