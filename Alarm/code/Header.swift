//
//  Header.swift
//  Alarm
//
//  Created by Mac on 02/01/23.
//

import UIKit

class Header: UITableViewHeaderFooterView {
    let label = UILabel()
    let label2 = UILabel()
    let button = UIButton()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)
        label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        label.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        label.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -120).isActive = true
        label.font = .systemFont(ofSize: 30)
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label2)
        label2.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
        label2.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        label2.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -120).isActive = true
        label2.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        
        button.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(button)
        button.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10).isActive = true
        button.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.backgroundColor = .red
    
        label.text = "No Alarm"
        label2.text = "Tomorrov Morning"
        button.setTitle("change", for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
