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
    
    @IBOutlet weak var startPositionX: UISlider!
    @IBOutlet weak var startPositionY: UISlider!
    
    @IBOutlet weak var endPositionX: UISlider!
    @IBOutlet weak var endPositionY: UISlider!
    
    @IBOutlet weak var textViewRGB: UITextView!
    
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateTextView()
        updateGradient()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func moveSlider(_ sender: UISlider) {
//        print("Start Red: \(lroundf(startRedSlider.value))")
//        print("Start Green: \(lroundf(startGreenSlider.value))")
        updateTextView()
        updateGradient()
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

    func updateGradient() {
        let startColor = UIColor(red: CGFloat(startRedSlider.value)/255,
                                 green: CGFloat(startRedSlider.value)/255,
                                 blue: CGFloat(startRedSlider.value)/255,
                                 alpha: 1)
        
        let endColor = UIColor(red: CGFloat(endRedSlider.value)/255,
                               green: CGFloat(endGreenSlider.value)/255,
                               blue: CGFloat(endBlueSlider.value)/255,
                               alpha: 1)

        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.frame = colorView.bounds
        
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
        
        gradientLayer.startPoint = CGPoint(x: lroundf(startPositionX.value),
                                           y: lroundf(startPositionY.value))
        gradientLayer.endPoint = CGPoint(x: lroundf(endPositionX.value),
                                         y: lroundf(endPositionY.value))
        
        colorView.layer.addSublayer(gradientLayer)
    }
}

