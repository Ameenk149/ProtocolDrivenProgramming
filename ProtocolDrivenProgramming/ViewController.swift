//
//  ViewController.swift
//  ProtocolDrivenProgramming
//
//  Created by Ameen on 14.01.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("hi")
        print("hi 2")
        
    }
    @IBAction func buttonPressed(_ sender: Any) {
        let viewController = storyboard?.instantiateViewController(withIdentifier: "newVC") as! NewVCViewController
        viewController.selectionDelegate = self
        present(viewController, animated: true)
        
    }
    

}
extension ViewController: ViewSelectionDelegate {
    func didTapChoice(choice: String) {
        self.label.text = choice
    }
    
    
}

