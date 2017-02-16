//
//  ViewController.swift
//  UIDynamicsDemo
//
//  Created by Kareem Sabri on 2017-02-15.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var animator: UIDynamicAnimator!
    private let gravityBehaviour = UIGravityBehavior()
    private let collisionBehaviour = UICollisionBehavior()
    private let elasticityBehaviour = UIDynamicItemBehavior()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animator = UIDynamicAnimator(referenceView: view)
        animator.addBehavior(gravityBehaviour)
        animator.addBehavior(collisionBehaviour)
        animator.addBehavior(elasticityBehaviour)
        collisionBehaviour.translatesReferenceBoundsIntoBoundary = true
        elasticityBehaviour.elasticity = 0.9
        //gravityBehaviour.magnitude = 0.3
    }
    
    @IBAction func addBlock() {
        let block = createBlock()
        view.addSubview(block)
        //gravityBehaviour.addItem(block)
        //collisionBehaviour.addItem(block)
        //elasticityBehaviour.addItem(block)
    }
    
    private func createBlock() -> UIView {
        let randomX = Int(arc4random() % (UInt32(view.frame.maxX)))
        let block = UIView(frame: CGRect(x: randomX, y: 0, width: 20, height: 20))
        block.backgroundColor = colors[Int(arc4random() % (UInt32(4)))]
        return block
    }
    
    private let colors: [UIColor] = [.blue, .red, .yellow, .green]

}

