//
//  CanvasController.swift
//  iOSExamples
//
//  Created by Murali Krishnan on 22/06/19.
//  Copyright © 2019 Murali Krishnan. All rights reserved.
//

import UIKit

class CanvasController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let test = GaugeView(frame: CGRect(x: 20, y: 100, width: view.bounds.width - 40, height: view.bounds.width - 40))
        test.backgroundColor = .clear
        view.addSubview(test)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            UIView.animate(withDuration: 1) {
                test.value = 33
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            UIView.animate(withDuration: 1) {
                test.value = 66
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            UIView.animate(withDuration: 1) {
                test.value = 0
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
