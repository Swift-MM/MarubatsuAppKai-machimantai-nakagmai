//
//  backTopViewController.swift
//  MarubatsuApp
//
//  Created by NAKAGAMI on 2016/11/10.
//  Copyright © 2016年 NOWALL. All rights reserved.
//

import UIKit

class backTopViewController: UIViewController {
    
    @IBAction func back2(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        //現在のページをdismissで消去する。このことを、ボタンを押したことをきっかけに行っている。
    }
    
    
    
    @IBAction func backTop(_ sender: Any) {
        let sa = self.storyboard?.instantiateViewController(withIdentifier: "top")
        sa?.modalTransitionStyle = .flipHorizontal
        present(sa!, animated: true, completion: nil)
            }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
