//
//  FirstVC.swift
//  colour
//
//  Created by Illya Gurkov on 11.08.22.
//

import UIKit

protocol CollorUpdate {
    func onCollorUpdate (collor: UIColor)
}


class FirstVC: UIViewController, CollorUpdate {
    func onCollorUpdate(collor: UIColor) {
        superView.backgroundColor = collor
    }

    @IBOutlet var superView: UIView! { didSet {superView.backgroundColor = .clear }}
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func changeAct(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let changeCollorScreen = storyboard.instantiateViewController(withIdentifier:
        "ColourVC") as! ColourVC
        
    
        changeCollorScreen.collorView = superView.backgroundColor
        
        
        changeCollorScreen.delegate = self
        
        
        self.navigationController?.pushViewController(changeCollorScreen, animated: true)
    }
    
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
   
