//
//  Extansion+UIViewController.swift
//  testNavigation
//
//  Created by Anton Zyabkin on 19.05.2022.
//

import Foundation
import UIKit


extension UIViewController { 
    func createCustomNavigationBar () {
        navigationController?.navigationBar.barTintColor = .red
    }
    
    
    func createCustomTitleView (contactName : String, contartDiscription: String, contactImage: String) -> UIView {
        let view = UIView ()
        view.frame = CGRect (x: 0, y: 0, width: 280, height: 41)
        let imageContact = UIImageView ()
        imageContact.image = UIImage(named: contactImage)
        imageContact.layer.cornerRadius = 20
        imageContact.clipsToBounds = true
        imageContact.frame = CGRect(x: 5, y: 0, width: 40, height: 40)
        view.addSubview(imageContact)

        let nameLabel = UILabel ()
        nameLabel.text = contactName
        nameLabel.frame = CGRect (x: 55, y: 0, width: 220, height: 20)
        nameLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(nameLabel)
        
        let descriptionLabel = UILabel()
        descriptionLabel.text = contartDiscription
        descriptionLabel.frame = CGRect (x: 55, y: 21, width: 220, height: 20)
        descriptionLabel.font = UIFont.systemFont(ofSize: 16)
        descriptionLabel.textColor = UIColor.yellow
        view.addSubview(descriptionLabel)
        
        return view
    }
    
    func createCustomeButotn (imageName: String, selecton: Selector) -> UIBarButtonItem {
        let button = UIButton(type: .system) //чтобы был эффект нажатия на кнопку
        button.setImage(
            UIImage(systemName: imageName)?.withRenderingMode(.alwaysTemplate), // withRenderingMode чтобы была возможность изменять цвет
            for: .normal
        ) //тут устанавливаем изображение для кнопки
        button.tintColor = .systemBlue //тут  задаем цвет системной кнопке (определенной строкой выше)
        button.imageView?.contentMode = .scaleAspectFit //параметр который помагает правильно установить изображение внутри кнопки
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill //параметры которые определяет положение содержимого внутри объекта
        button.addTarget(self, action: selecton, for: .touchUpInside)
        
        let menuBarIten = UIBarButtonItem(customView: button)
        
        return menuBarIten
    }
}
