//
//  ProfileViewController2.swift
//  3Go
//
//  Created by Fiona Stefani Limin on 09/04/21.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var ProfileTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
        
        ProfileTableView.delegate = self
        ProfileTableView.dataSource = self
        

        let footer = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 300))
        //footer.backgroundColor = .orange
       
        ProfileTableView.tableFooterView = footer


       
        
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
extension ProfileViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

extension ProfileViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Summary"
        cell.imageView?.image = UIImage( systemName:"star.square.fill")
        cell.imageView?.tintColor = .systemYellow
        cell.accessoryType = .disclosureIndicator
        
        
       
        return cell
    }
    

    
}
