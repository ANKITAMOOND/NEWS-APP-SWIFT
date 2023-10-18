import UIKit


var path = 0
var swit = 0
var data = ["India Vs Pakistan WorldCup 2023", "Israel-Palestine War"]

class ViewController: UIViewController {
    var logoImage = UIImageView(image: UIImage(named: "TazaKhabarLogo"))
    
    

    
    let tableView = UITableView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let myButton = UIButton(type: .custom)

                // Set the image for the button
        let buttonImage = UIImage(named: "plus")
        myButton.setImage(buttonImage, for: .normal)

                // Set the frame for the button
        myButton.frame = CGRect(x: 80, y: 160, width: 30, height: 30)

                // Add a target to the button to handle tap events
        myButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

                // Add the button to the view
        view.addSubview(myButton)

        logoImage.frame = CGRect(x: 0, y: 50, width: view.frame.width, height: 150)
        logoImage.contentMode = .scaleAspectFit
        view.addSubview(logoImage)

        tableView.frame = CGRect(x: 0, y: 200, width: view.frame.width, height: view.frame.height - 150)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.rowHeight = 80
        view.addSubview(tableView)

        let darkModeSwitch = UISwitch(frame: CGRect(x: 320, y: 160, width: 0, height: 0))
        darkModeSwitch.addTarget(self, action: #selector(switchChanged), for: .valueChanged)
        view.addSubview(darkModeSwitch)
        let newsLabel = UILabel(frame: CGRect(x: 20, y: 160, width: 100, height: 30))
                newsLabel.text = "News"
        newsLabel.font = UIFont.boldSystemFont(ofSize: 22)
        view.addSubview(newsLabel)
    }
    
    

    @objc func switchChanged(mySwitch: UISwitch) {
        if mySwitch.isOn {
            overrideUserInterfaceStyle = .dark
            swit = 1
            logoImage.image = UIImage(named: "TazaKhabar")
            super.viewDidLoad()
        } else {
            overrideUserInterfaceStyle = .light
            swit = 0
            logoImage.image = UIImage(named: "TazaKhabarLogo")

            
            
        }
    }
    @objc func buttonTapped() {

        performSegue(withIdentifier: "s3", sender: self)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]

        // Adding an image to the cell
        let imageName = "TazaKhabar" // replace with your image name
        cell.imageView?.image = UIImage(named: imageName)
        cell.imageView?.frame = CGRect(x: 0, y: 0, width: 60, height: 60) // Adjust the frame of the image

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if (indexPath.row >= 0) {
            performSegue(withIdentifier: "s1", sender: self)
        }
        print("Button \(indexPath.row + 1) clicked")
        path = indexPath.row
    }
}
