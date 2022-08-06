//
//  ViewController.swift
//  TabBarKullanimi
//
//  Created by MaSheN on 6.08.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //did load yuklenince badge ler olusturulur
        if let tabsItems=tabBarController?.tabBar.items{
            let firstItem = tabsItems[0]
            firstItem.badgeValue = "2"
            let secondItem = tabsItems[1]
            secondItem.badgeValue = "New"
        }
        let appearance = UITabBarAppearance()
        
        appearance.backgroundColor = UIColor.gray
        
        itemRenkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        itemRenkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
        itemRenkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        badgeRenkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        badgeRenkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
        badgeRenkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        
    }


    func itemRenkDegistir(itemAppearance:UITabBarItemAppearance){
        //secili olmayan durum
        
        itemAppearance.normal.iconColor = UIColor.white
        itemAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        
        
        //secili olma durumu
        
        itemAppearance.selected.iconColor = UIColor.yellow
        itemAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.yellow]
    }
    
    func badgeRenkDegistir(itemAppearance:UITabBarItemAppearance){
        //secili olmayan durum
        itemAppearance.normal.badgeBackgroundColor = UIColor.black
        
        //secili durum
        
        itemAppearance.selected.badgeBackgroundColor = UIColor.blue
    }
}

