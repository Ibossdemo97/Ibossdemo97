//
//  RegisterViewController.swift
//  loginTest
//
//  Created by Luyện Hà Luyện on 07/12/2022.
//

import UIKit
import FirebaseCore

class RegisterViewController: UIViewController {

    @IBOutlet weak var phoneNumberTF: UITextField!
    @IBOutlet weak var passWordTF: UITextField!
    @IBOutlet weak var nameAccTF: UITextField!
    @IBOutlet weak var mailTF: UITextField!
    @IBOutlet weak var addressTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func RegisterBT(_ sender: Any) {
        guard let phone = phoneNumberTF.text else {return}
        guard let password = passWordTF.text else {return}
        
        auth
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
