//
//  VCEvenOdd.swift
//  EvenOdd
//
//  Created by akshay on 14/06/21.
//

import Foundation
import UIKit

class VCEvenOdd: UIViewController {
    
    private let txt:UITextField = {
        let text = UITextField()
        text.backgroundColor = .placeholderText
        text.textAlignment = .center
        text.placeholder = "enter number"
        text.layer.cornerRadius = 6
        return text
    }()
    private let btn:UIButton = {
        let button = UIButton()
        button.setTitle("Check Number !", for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 6
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(checknum), for: .touchUpInside)
        return button
    }()
    @objc private func checknum() {
        var result:String = ""
        let alert = UIAlertController(title: "oops!", message: "Wrong input. Please input numbers only !", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
        if let value = Int(txt.text!) {
            if value == 0 {
                alert.message = "0 is an ideal number !"
                self.present(alert, animated: true, completion: nil)
            }
            else
            {
                if(value%2==0)
                {
                    result = "Even"
                }
                else
                {
                    result = "Odd"
                }
            }
        }
        else
        {
            self.present(alert, animated: true, completion: nil)
        }
        if result.isEmpty==false {
            let vc = VCResult()
            vc.result = result
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(txt)
        view.addSubview(btn)
        self.view.backgroundColor = .systemBackground
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        txt.frame = CGRect(x: 20, y: (view.height/2)-30, width: (view.width-40), height: 40)
        btn.frame = CGRect(x: 20, y: (view.height/2)+30, width: (view.width-40), height: 40)
    }
}
