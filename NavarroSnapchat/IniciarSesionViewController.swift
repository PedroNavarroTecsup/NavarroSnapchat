//
//  ViewController.swift
//  NavarroSnapchat
//
//  Created by Pedro Navarro on 4/11/22.
//

import UIKit
import Firebase
import FirebaseAuth

class IniciarSesionViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func IniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in print ("Intentando Iniciar Sesion")
            if error != nil{
                print ("Se presento el siguiente error: \(error)")
            }else{
                print("Inicio de sesión exitoso")
            }
        }
    }
}
