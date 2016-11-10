//
//  memoViewController.swift
//  MarubatsuApp
//
//  Created by NOWALL on 2016/11/05.
//  Copyright © 2016年 NOWALL. All rights reserved.
//

import UIKit

class memoViewController: UIViewController {
    
    @IBOutlet weak var questionInputBox: UITextField!
    @IBOutlet weak var answerControl: UISegmentedControl!    
    
    // backボタンが押されたときの処理
    @IBAction func tappedBackButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // createボタンが押されたときの処理処理
    @IBAction func tappedCreateButton(_ sender: Any) {
        
        var answer: Bool = true
        
        if answerControl.selectedSegmentIndex == 0 {
            // choose false
            answer = false
        }
        else {
            // choose true
            answer = true
        }
        
        let questionText:String = questionInputBox.text!
        
        let ud = UserDefaults.standard
        
        var questions: [[String: Any]] = ud.object(forKey: "questions") as! [[String : Any]]
        
        questions.append( [
            "question": questionText,
            "answer": answer
        ])
        
        ud.setValue(questions, forKey: "questions")
        
        showAlert(message: "保存が完了しました!")
        questionInputBox.text = ""
    }
    
    // deleteボタンが押されたときの処理
    @IBAction func tappedDeleteAllQuestionButton(_ sender: UIButton) {
        let ud = UserDefaults.standard
        
        // 保存されている値を削除
        ud.removeObject(forKey: "questions")
        
        // 空のarrayをset(for エラー回避)
        ud.setValue([], forKey: "questions")
        
        showAlert(message: "削除が完了しました!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // アラートを表示させるための関数(引数として表示させたいmessageをString型で受け取る)
    func showAlert(message: String) {
        // アラートを表示させるための準備 (alertControllerをオブジェクト化)
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        // アラートを閉じるための準備
        let close = UIAlertAction(title: "閉じる", style: .cancel, handler: nil)
        
        // 作成したアラートオブジェクトにcloseイベントを追加
        alert.addAction(close)
        // 作成したアラートを表示
        present(alert, animated: true, completion: nil)
    }
}
