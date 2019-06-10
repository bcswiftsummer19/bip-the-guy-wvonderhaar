//
//  ViewController.swift
//  BipTheGuy
//
//  Created by Walker Vonder Haar on 6/10/19.
//  Copyright © 2019 Walker Vonder Haar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageToPunch: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func libraryPressed(_ sender: UIButton) {
    }

    @IBAction func cameraPressed(_ sender: UIButton) {
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        print("Hey! you pressed it")
    }
}

