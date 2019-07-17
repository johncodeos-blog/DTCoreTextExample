//
//  ViewController.swift
//  DTCoreTextExample
//
//  Created by John Codeos on 10/07/2019.
//  Copyright © 2019 John Codeos. All rights reserved.
//

import UIKit
import DTCoreText

class ViewController: UIViewController {
    
    @IBOutlet weak var simpleLabel: UILabel!
    
    @IBOutlet weak var exampleLabel: DTAttributedLabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        simpleLabel.textColor = UIColor.red
        
        simpleLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 20)
        simpleLabel.text = "Swift is awesome&#33;&#33;&#33;"
        // Do any additional setup after loading the view.
        exampleLabel.attributedString = "Swift is awesome&#33;&#33;&#33;".returnAttributedStringForHTMLString(fontFamily: "Helvetica Neue", fontName: "HelveticaNeue-Bold", fontSize: 20, textColor: UIColor.red, textAlignment: .center)
        
        
        
        //Programmatically Method
        /*
         
        let exampleLabel = DTAttributedLabel()
        self.view.addSubview(exampleLabel)
        exampleLabel.backgroundColor = UIColor.groupTableViewBackground
        exampleLabel.attributedString = "Swift is awesome&#33;&#33;&#33;".returnAttributedStringForHTMLString(fontFamily: "Helvetica Neue", fontName: "HelveticaNeue-Bold", fontSize: 20, textColor: UIColor.red, textAlignment: .center)

        exampleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            exampleLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            exampleLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            exampleLabel.heightAnchor.constraint(equalToConstant: 25),
            exampleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
            ])
         
         */
        
    }


}

