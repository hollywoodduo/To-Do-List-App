//
//  SecondViewController.swift
//  To Do List
//
//  Created by Matthew J. Perkins on 5/31/17.
//  Copyright © 2017 Matthew J. Perkins. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {
    

    @IBOutlet var addItem: UITextField!
    
    @IBAction func addButton(_ sender: Any) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        var items: [String]
        
        if let tempItems = itemsObject as? [String] {
            
            items = tempItems
        
            items.append(addItem.text!)
            
            print(items)
            
        } else {
        
           items = [addItem.text!]
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        
        addItem.text = ""
    
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

