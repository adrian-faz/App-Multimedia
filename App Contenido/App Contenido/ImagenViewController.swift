//
//  ImagenViewController.swift
//  App Contenido
//
//  Created by Adrian Faz on 22/10/22.
//

import UIKit

class ImagenViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do additional setup after loading the view.
    }
    
    @IBAction func botonPantallaVideo(_ sender: Any) {
        
        let stroyBoard = UIStoryboard(name: "Main", bundle:nil)
        let imageViewController = stroyBoard.instantiateViewController(withIdentifier: "terceraPantalla")
        imageViewController.modalPresentationStyle = .fullScreen
        self.present(imageViewController, animated: true)
        
    }
    
}
