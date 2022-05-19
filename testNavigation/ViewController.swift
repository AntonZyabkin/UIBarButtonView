//
//  ViewController.swift
//  testNavigation
//
//  Created by Anton Zyabkin on 19.05.2022.
//

import UIKit

class ViewController: UIViewController {
    private let contactButton : UIButton = {
        let button2 = UIButton ()
        button2.setTitle("Go to contact", for: .normal)
        button2.setTitleColor(UIColor.blue, for: .normal)
        button2.translatesAutoresizingMaskIntoConstraints = false
        return button2
    } ()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPink
        
        setupViews()
        setContraints ()

        contactButton.addTarget(self,
                                action: #selector(contactButtonTapped),
                                for: .touchUpInside)
    }
    
    @objc private func contactButtonTapped (){ //в данном методе мы переходим в наш новый Вью контроллер, но мы его байндим чтобы прога не легла
        let contactViewController = ContactViewController ()
        navigationController?.pushViewController(contactViewController, animated: true)
    }
    
    private func setupViews () {
        title = "firstNavigationBar"
        view.addSubview(contactButton)

    }

    private func setContraints () {
        NSLayoutConstraint.activate([
            contactButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contactButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            contactButton.heightAnchor.constraint(equalToConstant: 50),
            contactButton.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
}

