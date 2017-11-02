//
//  ViewController.swift
//  ColorGradient
//
//  Created by Jian Zhai on 2017/11/1.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var startRedSlider: UISlider!
    @IBOutlet weak var startGreenSlider: UISlider!
    @IBOutlet weak var startBlueSlider: UISlider!
    
    @IBOutlet weak var endRedSlider: UISlider!
    @IBOutlet weak var endGreenSlider: UISlider!
    @IBOutlet weak var endBlueSlider: UISlider!
    
    @IBOutlet weak var textViewRGB: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateTextView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func moveSlider(_ sender: UISlider) {
//        print("Start Red: \(lroundf(startRedSlider.value))")
//        print("Start Green: \(lroundf(startGreenSlider.value))")
        updateTextView()
    }
    
    func updateTextView() {
        let allColorValue =
            "Start Red: \t\(lroundf(startRedSlider.value))\n" +
                "Start Green: \t\(lroundf(startGreenSlider.value))\n" +
                "Start Blue: \t\(lroundf(startBlueSlider.value))\n" +
                "End Red: \t\(lroundf(endRedSlider.value))\n" +
                "End Green: \t\(lroundf(endGreenSlider.value))\n" +
        "End Blue: \t\(lroundf(endBlueSlider.value))\n"
        textViewRGB.text = allColorValue
    }
}

