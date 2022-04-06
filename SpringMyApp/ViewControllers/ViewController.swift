//
//  ViewController.swift
//  SpringMyApp
//
//  Created by Alexandr Barabash on 05.04.2022.
//

import Spring

class ViewController: UIViewController {

    //MARK: - IB Outlets
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forseLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var runButton: UIButton!
    
    //MARK: - Private Properties
    private var animation = Animation.getAnimation()
    
    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        getDiscription()
    }
    
    //MARK: IB Actions
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        getDiscription()
        getAnimation()
        animation = Animation.getAnimation()
        runButton.setTitle(animation.preset.rawValue, for: .normal)
    }
    
    //MARK: Private Methods
    private func getDiscription() {
        presetLabel.text = animation.presetDiscription
        curveLabel.text = animation.curveDiscription
        forseLabel.text = animation.forseDiscription
        durationLabel.text = animation.durationDiscription
        delayLabel.text = animation.delayDiscription
        
    }
    
    private func getAnimation() {
        springAnimationView.animation = animation.preset.rawValue
        springAnimationView.curve = animation.curve.rawValue
        springAnimationView.force = animation.forse
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.animate()
    }
}

