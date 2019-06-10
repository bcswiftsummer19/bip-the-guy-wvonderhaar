//
//  ViewController.swift
//  BipTheGuy
//
//  Created by Walker Vonder Haar on 6/10/19.
//  Copyright © 2019 Walker Vonder Haar. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

//    mark propertied
    @IBOutlet weak var imageToPunch: UIImageView!

    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
// Mark functions
    func animateImage() {
        let bounds = self.imageToPunch.bounds
        let shrinkValue: CGFloat = 60

        self.imageToPunch.bounds = CGRect(x: self.imageToPunch.bounds.origin.x + shrinkValue, y: self.imageToPunch.bounds.origin.y + shrinkValue, width: self.imageToPunch.bounds.size.width - shrinkValue, height: self.imageToPunch.bounds.size.height - shrinkValue)
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.imageToPunch.bounds = bounds }, completion: nil)
    }

    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {
        if let sound = NSDataAsset(name: soundName) {
            //            check if sound.data is a sound file
            // if let is good to use if there is a chance for a nil
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                //                if sound.data is not valid audio file
                print("ERROR: data in \(soundName) couldn't be played as a sound")
            }
        } else {
            print("ERROR: file \(soundName) didn't load")
        }
    }
    
//    Mark Actions
    @IBAction func libraryPressed(_ sender: UIButton) {
    }

    @IBAction func cameraPressed(_ sender: UIButton) {
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        animateImage()
        playSound(soundName: "punchSound", audioPlayer: &audioPlayer)
    }
}

