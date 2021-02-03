//
//  MainTabBarController.swift
//  MyiOSProject
//
//  Created by Kazunobu Someya on 2021-01-21.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTabBarController()
    }
    
    func setupTabBarController() {
        let mainPage = MainViewController()
        mainPage.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        
        let todoList = ToDoListViewController()
        todoList.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        // adjust the position of letters on tab bar
        todoList.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 5, vertical: -1)
        
        let profile = ProfileViewController()
        profile.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 2)
        profile.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 10, vertical: -4)
        
        self.viewControllers = [mainPage,todoList,profile].map {UINavigationController(rootViewController: $0)}
        
        // change background-color on tab bar
//        UITabBar.appearance().backgroundColor = .yellow
//        tabBar.isTranslucent = true
        
        // change title color on tab bar
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15), NSAttributedString.Key.foregroundColor: UIColor.black], for: .selected)
        self.selectedIndex = 0
    }
}
