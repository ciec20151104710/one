//
//  ViewController.swift
//  one
//
//  Created by s20151104710 on 17/4/5.
//  Copyright © 2017年 s20151104710. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    
    
    
    var xa:Int = 0
    var xb:Int = 0
    var dlg=0
    var flagA=0
    var flagB=0
    var del=0
    
   
    @IBOutlet weak var BI: UITextField!

    @IBOutlet weak var vs: UITextField!
    @IBOutlet weak var A: UITextField!
    @IBOutlet weak var B: UITextField!
    
    
    
    
    
    
    
    
    @IBAction func Aphoto(_ sender: Any) {
        if dlg==0{
            flagA=1
            flagB=0
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary)//初始化图片控制器
            {
            let picker = UIImagePickerController()//设置代理
            picker.delegate = self  //设定图片控制器类型
            picker.sourceType = UIImagePickerControllerSourceType.photoLibrary  //弹出控制器，显示界面
                self.present(picker, animated: true, completion: {() ->Void in})
            }else{
            print("读取相册错误")
            }
        }
    }
    
    
    @IBAction func Bphoto(_ sender: Any) {
        if dlg==0{
            flagA=1
            flagB=0
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary)//初始化图片控制器
            {
                let picker = UIImagePickerController()//设置代理
                picker.delegate = self  //设定图片控制器类型
                picker.sourceType = UIImagePickerControllerSourceType.photoLibrary  //弹出控制器，显示界面
                self.present(picker, animated: true, completion: {() ->Void in})
            }else{
                print("读取相册错误")
            }
        }
    }
    
    
    
    
       override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

