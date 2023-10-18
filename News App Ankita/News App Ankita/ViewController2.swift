//
//  ViewController2.swift
//  News App Ankita
//
//  Created by Anshuman Yadav on 16/10/23.
//

import UIKit
var hp = " "
var images = ["1","2"]
var head = ["India hammer Pakistan by 7 wickets","Israel Gaza war: History of the conflict explained"]
var main = ["That's it! India have done it! A massive win for Rohit Sharma and co. India crush Pakistan by 7 wickets to register a record 8th win over the arch-rivals in ODI World Cup. A dominant and complete performance by India as Pakistan have been blown away in this one-sided affair in Ahmedabad. Third win in a row for India. After bowlers fired in unison to fold Babar Azam and co. for a lowly 191, Rohit Sharma's 63-ball 86 carnage completely stunned Pakistan. From the word go, Rohit looked in absolute control. Shubman Gill (16) and Virat Kohli (16) did get starts but were unable to maximize on them. However Shreyas Iyer and KL Rahul rose to the occasion and took India across the finish line. Shreyas Iyer hits the winning runs and raises his fifty as well! India win with 117 balls to spare.", "The Palestinian militant group Hamas launched an unprecedented assault on Israel on 7 October, with hundreds of gunmen infiltrating communities near the Gaza Strip.At least 1,400 Israelis have been killed, while the country's military says 199 soldiers and civilians, including women and children, are being held in Gaza as hostages.More than 2,700 Palestinians have been killed in numerous air strikes against Gaza by the Israeli military. while Israel has imposed a total blockade on the territory, denying it food, fuel and other essentials.It is also massing its forces along the Gaza boundary and the Palestinians are bracing themselves for a ground operation which could cost many more deaths."]
var links = ["https://www.youtube.com/watch?v=58rl7RoegTQ","https://www.youtube.com/watch?v=NzlYRGyDSt0"]

class ViewController2: UIViewController {
    
    
    @IBOutlet weak var img: UIImageView!
    

    
    @IBOutlet weak var news: UILabel!
    
    
    @IBOutlet weak var headline : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img.image = UIImage(named: images[path])
        news.text = main[path]
        headline.text = head[path]
        headline.font = UIFont.boldSystemFont(ofSize: 20)
        if swit == 1 {
            overrideUserInterfaceStyle = .dark
            swit = 1
        } else {
            overrideUserInterfaceStyle = .light
        }
    }

    @IBAction func playvideo(_ sender: Any) {
        performSegue(withIdentifier: "s2", sender: self)
        hp = links[path]
        

        
    }
}
