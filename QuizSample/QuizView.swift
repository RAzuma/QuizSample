//
//  QuizView.swift
//  QuizSample
//
//  Created by razuma on 2018/07/29.
//  Copyright © 2018年 razuma. All rights reserved.
//

import UIKit

class QuizView: UIView {
    
    // 数が多くかつ、forでaddして回して作れるならばその方が良い
    @IBOutlet var imgView11:UIImageView!
    @IBOutlet var imgView12:UIImageView!
    @IBOutlet var imgView13:UIImageView!
    @IBOutlet var imgView21:UIImageView!
    @IBOutlet var imgView22:UIImageView!
    @IBOutlet var imgView23:UIImageView!
    @IBOutlet var imgView31:UIImageView!
    @IBOutlet var imgView32:UIImageView!
    @IBOutlet var imgView33:UIImageView!
    
    override init(frame: CGRect){
        super.init(frame: frame)
        loadNib()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        loadNib()
    }
    
    func loadNib(){
        let view = Bundle.main.loadNibNamed("QuizView", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
        
        imgView11.layer.borderWidth = 1.0
        imgView12.layer.borderWidth = 1.0
        imgView13.layer.borderWidth = 1.0
        imgView21.layer.borderWidth = 1.0
        imgView22.layer.borderWidth = 1.0
        imgView23.layer.borderWidth = 1.0
        imgView31.layer.borderWidth = 1.0
        imgView32.layer.borderWidth = 1.0
        imgView33.layer.borderWidth = 1.0
    }
    
    func clearView(){
        imgView11.image = nil
        imgView12.image = nil
        imgView13.image = nil
        imgView21.image = nil
        imgView22.image = nil
        imgView23.image = nil
        imgView31.image = nil
        imgView32.image = nil
        imgView33.image = nil
    }
    
    func setQuiz(mondai: ViewController.Quiz){
        mondai.loc.image = UIImage.init(named: mondai.type)
    }
    
}
