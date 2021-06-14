//
//  ViewController.swift
//  EvenOdd
//
//  Created by akshay on 14/06/21.
//

import UIKit

class ViewController: UIViewController {

    private let btn:UIButton = {
        let button = UIButton()
        button.setTitle("Even/Odd", for: .normal)
        button.addTarget(self, action: #selector(goconsole), for: .touchUpInside)
        button.backgroundColor = .systemYellow
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.systemBackground, for: .focused)
        button.layer.cornerRadius = 6
        return button
    }()
    @objc private func goconsole() {
        let vc = VCEvenOdd()
        navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(btn)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        btn.frame = CGRect(x: 20, y: (view.height/2)-20, width: view.width-40, height: 40)
    }
}

