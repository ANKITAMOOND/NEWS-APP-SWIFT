//
//  ViewControllerArticle.swift
//  News App Ankita
//
//  Created by Anshuman Yadav on 18/10/23.
//

import UIKit

class ViewControllerArticle: UIViewController {
    
    
    
    @IBOutlet weak var Logoimage: UIImageView!
    
    @IBOutlet weak var mainhead: UITextField!
    
    @IBOutlet weak var articlehead: UITextField!
    
    
    @IBOutlet weak var imagename: UITextField!
    
    @IBOutlet weak var Article: UITextField!
    
    @IBOutlet weak var VideoLink: UITextField!
    
    
    override func viewDidLoad() {
        if swit == 1 {
            overrideUserInterfaceStyle = .dark
            swit = 1
            Logoimage.image = UIImage(named: "TazaKhabar")

        } else {
            overrideUserInterfaceStyle = .light
            Logoimage.image = UIImage(named: "TazaKhabarLogo")
        }
        super.viewDidLoad()
        
        

    }
    
    
    @IBAction func submit(_ sender: Any) {
        data.append(mainhead.text!)
        head.append(articlehead.text!)
        images.append(imagename.text!)
        main.append(Article.text!)
        links.append(VideoLink.text!)
        performSegue(withIdentifier: "s6", sender: self)
        
        
    }
    
    
    @IBAction func reset(_ sender: Any) {
        mainhead.text!=""
        articlehead.text!=""
        imagename.text!=""
        Article.text!=""
        VideoLink.text!=""
    }
    

}
