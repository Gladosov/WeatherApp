//
//  ViewController.swift
//  lecture9
//
//  Created by admin on 15.02.2021.
//

import UIKit

class ViewController: UIViewController {

    let myView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        return button
    }()
    
    let secondView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    
    let button1: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        return button
    }()
    
    let button2: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .brown
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(myView)
        self.view.addSubview(button)
        self.view.addSubview(secondView)
        self.view.addSubview(stackView)
        stackView.addArrangedSubview(button1)
        stackView.addArrangedSubview(button2)
        
        NSLayoutConstraint.activate([
            myView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            myView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            myView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20),
            myView.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        NSLayoutConstraint.activate([
            button.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20),
            button.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -20),
            button.topAnchor.constraint(equalTo: self.myView.bottomAnchor, constant: 20),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            secondView.topAnchor.constraint(equalTo: self.button.bottomAnchor, constant: 20),
            secondView.heightAnchor.constraint(equalToConstant: 50),
            secondView.widthAnchor.constraint(equalToConstant: 100),
            secondView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            stackView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20),
            stackView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -20),
            stackView.topAnchor.constraint(equalTo: self.secondView.bottomAnchor, constant: 20),
            stackView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }


}

