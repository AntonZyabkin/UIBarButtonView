//
//  ContactViewController.swift
//  testNavigation
//
//  Created by Anton Zyabkin on 19.05.2022.
//

import UIKit

class ContactViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemCyan
        setupViews()
        
    }
    
    private func setupViews () {
        createCustomNavigationBar()
        
        let audioRightButton = createCustomeButotn(
            imageName: "phone",
            selecton: #selector(audioRightButtonTaped))
        
        let videoRightButton = createCustomeButotn(
            imageName: "video",
            selecton: #selector(videoRightButtonTaped))
        
        let customTitleView = createCustomTitleView(
            contactName: "AntonFirstNavigationBar",
            contartDiscription: "NavigationBar",
            contactImage: "test.png")
        
        navigationItem.rightBarButtonItems = [audioRightButton, videoRightButton] //тут мы добавляем наши кнопки в бар айтем и выбираем их положение. Как я понимаю - размеры стандартизированы

        //тут создадим сивтч и добавим в бар
        let simleSwitch = UISwitch ()
        simleSwitch.isOn = true
        simleSwitch.addTarget(self, action: #selector(switchIsChange) , for: .valueChanged)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem (customView: simleSwitch)
        
        
    }
    @objc func addLeftButtonTaped () {
        print ("addLeftButtonTaped")
    }
    
    @objc func audioRightButtonTaped () {
        print ("audioRightButtonTaped")
    }
    
    @objc func videoRightButtonTaped () {
        print ("videoRightButtonTaped")
    }
    @objc func switchIsChange (param : UISwitch) {
        if param.isOn {
            print ("Swinch is ON")
        } else {
            print ("Switch is OFF")
        }
    }
    @objc func switchIsChange2 (param : UISwitch) {
        if param.isOn {
            print ("Swinch is ON")
        } else {
            print ("Switch is OFF")
        }
    }
}
