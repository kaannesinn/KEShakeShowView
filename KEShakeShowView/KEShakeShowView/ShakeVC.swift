//
//  ViewController.swift
//  KEShakeShowView
//
//  Created by Kaan Esin on 25.03.2020.
//  Copyright © 2020 Kaan Esin. All rights reserved.
//

import UIKit

class ShakeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.becomeFirstResponder()
    }

    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            print("motionEnded")
            
            let alert = UIAlertController(title: "Shaked", message: "", preferredStyle: .alert)
            present(alert, animated: true, completion: nil)
        }
    }

    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            print("motionBegan")
        }
    }
    
    override func motionCancelled(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            print("motionCancelled")
        }
    }
    
}

