//
//  ViewController.swift
//  MemoApp
//
//  Created by 津國　由莉子 on 2019/08/03.
//  Copyright © 2019 yurityann. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

   /// メモ
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //textviewがUITextViewDelegateを使えるようにする
       textView.delegate = self
        
        // AppDelegateを呼び出して変数に格納します。
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        //AppDelegateに定義したlastTextwosannsyousitexviewに格納
        textView.text = appDelegate.lastText
        

    }
    
    func textViewDidChange(_ textView: UITextView) {
        // AppDelegateを呼び出して変数に格納します。
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        // AppDelegateに記述した"lastText"に入力されている内容を格納します。
        appDelegate.lastText = textView.text
    
    }


}

