//
//  MainView.swift
//  MyiOSProject
//
//  Created by Kazunobu Someya on 2021-01-21.
//

import UIKit

class MainView: UIView {
    
    let textField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .bezel
        tf.backgroundColor = .white
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.widthAnchor.constraint(equalToConstant: 150).isActive = true     
        return tf
    }()
    
    let button: UIButton = {
        let btn = UIButton()
        btn.setTitle("Go to CollectionView", for: .normal)
        btn.backgroundColor = .gray
        btn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        btn.widthAnchor.constraint(equalToConstant: 150).isActive = true
        return btn
    }()
    
    lazy var VstackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [textField,button])
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .yellow
        self.addSubview(VstackView)
        setupUIViewLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUIViewLayout() {
        VstackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        VstackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
}
