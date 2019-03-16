//
//  ViewController.swift
//  navigation
//
//  Created by Owner on 2019-03-16.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var no: String?
    @IBOutlet weak var txtNo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnPresent(_ sender: UIButton)
    {
        let ab = UIStoryboard(name: "Main", bundle: nil)
    let VC1 = ab.instantiateViewController(withIdentifier: "Mandy") as! FirstViewController
        self.present(VC1, animated: true)
    }
    
    @IBAction func btnPush(_ sender: UIButton)
    {
        let ab = UIStoryboard(name: "Main", bundle: nil)
        let VC1 = ab.instantiateViewController(withIdentifier: "Mandy") as! FirstViewController
        self.navigationController?.pushViewController(VC1, animated: true)
        
    }
    
    @IBAction func btnStatic(_ sender: UIButton)
    {
        
    }
    
    @IBAction func btnDynamic(_ sender: UIButton)
    {
        no = txtNo.text
        print(no!)
        
        if(no == "1")
        {
            self.performSegue(withIdentifier: "First Screen", sender: nil)
        }
        else if(no == "2")
        {
            self.performSegue(withIdentifier: "Second Screen", sender: nil)
        }
        else 
        {
            self.performSegue(withIdentifier: "Third Screen", sender: nil)
            
        }
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "First Screen"
        {
            if let aVC = segue.destination as? FirstViewController
            {
            aVC.x = no
            
        }
    }
    
    if segue.identifier == "Second Screen"
    {
        if let aVC = segue.destination as? SecondViewController
        {
            aVC.x = no
        }
     }
        if segue.identifier == "Third Screen"
        {
            if let aVC = segue.destination as? ThirdViewController
            {
                aVC.x = no
            }
        }
   }
}
