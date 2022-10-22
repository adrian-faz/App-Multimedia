//
//  ViewController.swift
//  App Contenido
//
//  Created by Adrian Faz on 22/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func navegarAImagen(_ sender: Any) {
        let stroyBoard = UIStoryboard(name: "Main", bundle:nil)
        let imageViewController = stroyBoard.instantiateViewController(withIdentifier: "imagenesVC")
        imageViewController.modalPresentationStyle = .fullScreen
        self.present(imageViewController, animated: true)
    }
    
}

