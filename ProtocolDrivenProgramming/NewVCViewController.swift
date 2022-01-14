//
//  NewVCViewController.swift
//  ProtocolDrivenProgramming
//
//  Created by Ameen on 14.01.22.
//

import UIKit

protocol ViewSelectionDelegate {
    func didTapChoice(choice: String)
}

class NewVCViewController: UIViewController {
    
    var selectionDelegate: ViewSelectionDelegate!

    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Button2Clicked(_ sender: Any) {
        selectionDelegate.didTapChoice(choice: "Button 1")
        dismiss(animated: true, completion: nil)
        
    }
    @IBAction func Button1Clicked(_ sender: Any) {
        selectionDelegate.didTapChoice(choice: "Button 2")
        dismiss(animated: true, completion: nil)
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
