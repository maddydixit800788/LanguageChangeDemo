//
//  ViewController.swift
//  SimpleDemoApp
//
//  Created by Admin on 09/12/18.
//  Copyright © 2018 Madhav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnHindi: UIButton!
    @IBOutlet weak var btnMarathi: UIButton!
    @IBOutlet weak var btnEnglish: UIButton!
    @IBOutlet weak var boxView: UIView!
    @IBOutlet weak var lblText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblText.text = "titleString".localized
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        btnHindi.layer.cornerRadius = 5
        btnMarathi.layer.cornerRadius = 5
        btnEnglish.layer.cornerRadius = 5
        
        boxView.layer.cornerRadius = 10
        boxView.layer.borderWidth = 2
        boxView.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    @IBAction func changeLanguageButtonAction(_ sender: UIButton)
    {
        if sender == btnHindi {
            print("You Select 'Hindi' language")
            Language.language = Language.hindi
        } else if sender == btnMarathi {
            print("You Select 'Marathi' language")
            Language.language = Language.marathi
        } else if sender == btnEnglish {
            print("You Select 'English' language")
            Language.language = Language.english
        }
    }
    
    
}

