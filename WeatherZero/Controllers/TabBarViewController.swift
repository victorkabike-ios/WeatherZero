//
//  TabBarViewController.swift
//  WeatherZero
//
//  Created by victor kabike on 2024/01/28.
//

import UIKit

 final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tab1 = WeatherViewController()
        tab1.title = "Weather"
        let tab2 = SettingViewController()
        tab2.title = "Settings"
        let nav1 = UINavigationController(rootViewController: tab1)
        let nav2 = UINavigationController(rootViewController: tab2)
        
        nav1.tabBarItem = UITabBarItem(title: "Weather", image: UIImage(systemName: "cloud.fill"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Setting", image: UIImage(systemName: "gear"), tag: 2)
        setViewControllers([
            nav1,nav2
        ],animated: true)
    }
    
}
