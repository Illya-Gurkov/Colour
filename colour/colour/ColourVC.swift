//
//  ColourVC.swift
//  colour
//
//  Created by Illya Gurkov on 10.08.22.
//

import UIKit

class ColourVC: UIViewController, CollorUpdate {
    func onCollorUpdate(collor: UIColor) {
        viewColor.backgroundColor = collor
    }
    
    
    
    
    
    
    var delegate: CollorUpdate?
    var collorView: UIColor?
    
    @IBOutlet weak var redSl: UISlider!
    
    @IBOutlet weak var redTF: UITextField!
    
    @IBOutlet weak var greenSL: UISlider!
    
    @IBOutlet weak var greenTF: UITextField!
    
    
    @IBOutlet weak var blueSl: UISlider!
    
    
    @IBOutlet weak var blueTF: UITextField!
    

    @IBOutlet weak var opacitySl: UISlider!
    
    @IBOutlet weak var opacityTF: UITextField!
    
    @IBOutlet weak var viewColor: UIView! {didSet { viewColor.backgroundColor = collorView}
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func viewColour() {
        viewColor.backgroundColor = UIColor(red: CGFloat(redSl.value), green:CGFloat((greenSL.value)), blue: CGFloat(blueSl.value), alpha: CGFloat(opacitySl.value))
    }

    @IBAction func sumSlAction(_ sender: UISlider) {
        viewColour()
        redTF.text = String(NSString(format: "%.0f", redSl.value * 100))
        greenTF.text = String(NSString(format: "%.0f", greenSL.value * 100))
        blueTF.text = String(NSString(format: "%.0f", blueSl.value * 100))

    }
    
    @IBAction func redTFAct(_ sender: UITextField) {
        guard let myValueRed = redTF.text, !myValueRed.isEmpty else { return }
        if let myValueRed = Float(redTF.text!), myValueRed <= 1
        {
            redSl.value = myValueRed
            viewColour()
        }
    }
    
    @IBAction func greenTFAct(_ sender: UITextField) {
        guard let myValueGreen = greenTF.text, !myValueGreen.isEmpty else { return }
        if let myValueGreen = Float(greenTF.text!), myValueGreen <= 1
        {
            greenSL.value = myValueGreen
            viewColour()
        }
    
    }
        
    @IBAction func blueTFAct(_ sender: UITextField) {
        guard let myValueBlue = blueTF.text, !myValueBlue.isEmpty else { return }
        if let myValueBlue = Float(blueTF.text!), myValueBlue <= 1
        {
            blueSl.value = myValueBlue
            viewColour()
        }
    }
        
    @IBAction func opacitySLAct(_ sender: UISlider) {
        opacityTF.text = String(NSString(format: "%.0f", opacitySl.value * 100))
        viewColour()
    }
        
    @IBAction func opacityTFAct(_ sender: UITextField) {
        guard let opacityValue = opacityTF.text, !opacityValue.isEmpty else { return }
        if let opacityValue = Float(opacityTF.text!), opacityValue <= 1 {
            opacitySl.value = opacityValue
            viewColour()
        }
    }
    
    
    @IBAction func DoneAct(_ sender: UIButton) {
           navigationController?.popViewController(animated: true)
        delegate?.onCollorUpdate(collor: viewColor.backgroundColor!)
       }
        
    }
    

    
        
        
    
    
    
    
    
    



    
       

   

  




    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
