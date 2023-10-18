//
//  ViewController3.swift
//  News App Ankita
//
//  Created by Anshuman Yadav on 16/10/23.
//

import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet weak var vp: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var URLString1 = URL(string: hp)
        var URLReq1 = URLRequest(url: URLString1!)
        vp.loadRequest(URLReq1)
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
