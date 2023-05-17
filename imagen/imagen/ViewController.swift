//
//  ViewController.swift
//  imagen
//
//  Created by Alumno ULSA on 17/05/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let url = URL(string: "https://www.eloccidental.com.mx/incoming/gvhext-richard-burlton-htpmedsyzag-unsplash.jpg/ALTERNATES/LANDSCAPE_768/richard-burlton-HTpmedSyZag-unsplash.jpg")!
                var solicitud = URLRequest(url: url)
                
                solicitud.httpMethod = "GET"
                let task = URLSession.shared.dataTask(with: solicitud) {
                    data, response, error in
                    if let data = data {
                        self.imgFoto.image = UIImage(data: data)
                    }
                }
                task.resume()
    }
    @IBOutlet weak var imgFoto: UIImageView!
    

}

