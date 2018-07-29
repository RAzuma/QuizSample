//
//  ViewController.swift
//  QuizSample
//
//  Created by razuma on 2018/07/29.
//  Copyright © 2018年 razuma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    struct Mondai {
        var mondai : String
        var kaisetu : String
        var quiz: [Quiz]
        var answer: String
    }
    
    struct Quiz {
        var type : String
        var loc: UIImageView
    }
    
    @IBOutlet var quizView:QuizView!
    
    @IBOutlet var btn1:UIButton!
    @IBOutlet var btn2:UIButton!
    @IBOutlet var btn3:UIButton!
    
    @IBOutlet var lable1:UILabel!
    @IBOutlet var lable2:UILabel!
    @IBOutlet var lable3:UILabel!
    
    var mondai:[Mondai] = []
    
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mondai.append(mondai1())
        mondai.append(mondai2())
        
        mondaiSet()

    }
    
    func mondai1()->Mondai{
        let quiz1 = Quiz.init(type: "maru", loc: quizView.imgView12)
        let quiz2 = Quiz.init(type: "batu", loc: quizView.imgView31)
        
        let quiz3 = [quiz1, quiz2]
        
        let mondai1 = Mondai.init(mondai: "つぎのいって", kaisetu: "かいせつ", quiz: quiz3, answer: "1")
        
        return mondai1
    }
    
    func mondai2()->Mondai{
        let quiz1 = Quiz.init(type: "maru", loc: quizView.imgView11)
        let quiz2 = Quiz.init(type: "batu", loc: quizView.imgView22)
        let quiz3 = Quiz.init(type: "batu", loc: quizView.imgView33)
        
        let quiz4 = [quiz1, quiz2, quiz3]
        
        let mondai1 = Mondai.init(mondai: "つぎのいって２", kaisetu: "かいせつ２", quiz: quiz4, answer: "2")
        
        return mondai1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mondaiSet(){
        
        lable1.isHidden = false
        lable2.isHidden = true
        lable3.isHidden = true
        
        btn1.isHidden = false
        btn2.isHidden = false
        btn3.isHidden = true
        
        for setQuiz in mondai[count].quiz {
            quizView.setQuiz(mondai: setQuiz)
        }
        
        lable1.text = mondai[count].mondai
        lable2.text = mondai[count].kaisetu
        
    }
    
    @IBAction func buttonTapped(sender: AnyObject) {
        
        lable1.isHidden = true
        lable2.isHidden = false
        lable3.isHidden = false
        
        btn1.isHidden = true
        btn2.isHidden = true
        btn3.isHidden = false
        
    }
    
    @IBAction func nextQuiz(sender: AnyObject) {
        
        count += 1
        
        if mondai.count <= count {
            return
        }
        
        quizView.clearView()
        mondaiSet()
        
    }


}

