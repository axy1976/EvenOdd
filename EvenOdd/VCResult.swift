//
//  VCResult.swift
//  EvenOdd
//
//  Created by akshay on 14/06/21.
//

import Foundation
import UIKit

class VCResult: UIViewController {
    
    var result = ""
    
    private let lbl:UILabel = {
        let label = UILabel()
        label.text = ""
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 46)
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(lbl)
        self.view.backgroundColor = .systemBackground
        lbl.text = result
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        lbl.frame = CGRect(x: 20, y: (view.height/2)-25, width: view.width-40, height: 50)
    }
}
