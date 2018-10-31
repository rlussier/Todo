//
//  ViewController.swift
//  todo
//
//  Created by rlussier on 10/16/18.
//  Copyright © 2018 admin16. All rights reserved.
//

import UIKit

struct Todo {
    var title: String
}

class ViewController: UIViewController, UITextFieldDelegate {
            let inset: CGFloat = 30
            var label : UILabel!
            var textField: UITextField!
            var btn: UIButton!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            title = "Form View"
            
            let paddedWidth = view.frame.width - (inset * 2)
            var rect = CGRect(x: 30, y: 100, width: view.frame.width, height: 50)
            label = UILabel(frame: rect)
            label.text = "Hello World"
            view.addSubview(label)
        
        textField = UITextField(frame: CGRect(x: inset, y: 100 + 50,  width: paddedWidth, height: 50))
        textField.placeholder = "Title"
        textField.borderStyle = .roundedRect
        textField.delegate = self
        view.addSubview(textField)
            
            btn = UIButton(type: .contactAdd)
            btn.frame = CGRect(x: inset, y: 100 + 50 + 50 + 10, width: paddedWidth, height: 50)
            btn.setTitle("Add", for : .normal)
            btn.addTarget(self, action: #selector(addTodo), for: .touchUpInside)
            view.addSubview(btn)
    }

    @objc func addTodo() {
        textField.resignFirstResponder()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let text = textField.text {
            if text != "" {
                let todo = Todo(title: text)
                DataService.addTodo(todo: todo)
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

