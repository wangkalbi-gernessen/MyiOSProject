//
//  MainViewController.swift
//  MyiOSProject
//
//  Created by Kazunobu Someya on 2021-02-03.
//

import UIKit

class MainViewController: UIViewController {
    let mainView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mainView)
        setupMainViewLayout()
        mainView.button.addTarget(self, action: #selector(goToCollectionView(_:)), for: .touchUpInside)
    }
    
    func setupMainViewLayout() {
        mainView.translatesAutoresizingMaskIntoConstraints = false 
        mainView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        mainView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        mainView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        mainView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
    }
    
    @objc func goToCollectionView(_ sender: UIButton) {
        let nav = UINavigationController(rootViewController: MainCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout()))
        present(nav, animated: true, completion: nil)
    }
}
