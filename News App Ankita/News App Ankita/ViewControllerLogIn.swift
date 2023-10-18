//
//  ViewControllerLogIn.swift
//  News App Ankita
//
//  Created by Anshuman Yadav on 18/10/23.
//

import UIKit

class ViewControllerLogIn: UIViewController {
    
    
    @IBOutlet weak var Logoimage: UIImageView!
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var Message: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if swit == 1 {
            overrideUserInterfaceStyle = .dark
            swit = 1
            Logoimage.image = UIImage(named: "TazaKhabar")

        } else {
            overrideUserInterfaceStyle = .light
            Logoimage.image = UIImage(named: "TazaKhabarLogo")
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Login(_ sender: Any) {
        if (username.text! == "admin" && password.text! == "123456") {
            performSegue(withIdentifier: "s4", sender: self)
            Message.text=""
        }
        else{
            Message.text = "Invalid Id or Password!!"
            Message.textColor = UIColor.red
        }
    }
    

}
