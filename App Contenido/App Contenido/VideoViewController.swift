//
//  VideoViewController.swift
//  App Contenido
//
//  Created by Adrian Faz on 22/10/22.
//

import UIKit
import AVKit

class VideoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do additional setup after loading the view.
    }
    
    @IBAction func botonInicio(_ sender: Any) {
        
        let stroyBoard = UIStoryboard(name: "Main", bundle:nil)
        let imageViewController = stroyBoard.instantiateViewController(withIdentifier: "pantallaInicio")
        imageViewController.modalPresentationStyle = .fullScreen
        self.present(imageViewController, animated: true)
        
    }
    @IBAction func mostrarVideo(_ sender: UIButton) {
        
        if let ruta = Bundle.main.path(forResource: "Picnic", ofType: "mp4") {
        
        let player = AVPlayerViewController()
        let videoUrl = URL(fileURLWithPath: ruta)
        let video = AVPlayer(url:videoUrl)
        player.player = video
        present(player,animated:true, completion:{
            video.play()
        } )
        
        } else {
            
            let alert = UIAlertController(title:"Error", message: "No se encontró ningún video", preferredStyle:UIAlertController.Style.alert)
            
            alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
            
            self.present(alert,animated:true,completion:nil)
            
        }
    }
        
    }

