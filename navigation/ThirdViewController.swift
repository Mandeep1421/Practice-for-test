//
//  ThirdViewController.swift
//  navigation
//
//  Created by Owner on 2019-03-16.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var  x: String?
    @IBOutlet weak var lblText2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let i = x
        {
            print(i)
            lblText2.text = i
        }
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
