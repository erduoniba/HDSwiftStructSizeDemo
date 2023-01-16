//
//  ViewController.swift
//  HDSwiftCOWDemo
//
//  Created by denglibing on 2023/1/4.
//

import UIKit

class OtherObject: NSObject {
    private var sd: HDStructDemo?
    private var cd: HDClassDemo?
    func sdAction(sd: HDStructDemo) {
        self.sd = sd
        print(sd)
    }
    
    func cdAction(cd: HDClassDemo) {
        self.cd = cd
        print(cd)
    }
}

class ViewController: UIViewController {
//    let sd = HDStructDemo(locShopName: nil, locShopAddr: nil, wareId: nil, defaultName: nil, locShopId: nil, longtitude: nil, latitude: nil)
//    static let cd = HDClassDemo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let sd = HDStructDemo()
        OtherObject().sdAction(sd: sd)
//        OtherObject().cdAction(cd: ViewController.cd)
                
//        var model = HDStructDemo(locShopName: "1", locShopAddr: "2", wareId: "4", defaultName: "5", locShopId: 3, longtitude: "6", latitude: "7")
//        print(address(of: &model))
//
//        let ext = StructExt()
//        var model = HDStructDemo(ext: ext)
//
//        let ext2 = ClassExt()
//        var model2 = HDClassDemo()
//        model2.ext = ext2
//        print(address(of: &model2))
        
//        var mm = model
//        mm.defaultName = "1"
//        mm.defaultName2 = "2"
//        print(address(of: &model))
//        for index in 0..<2 {
//            DispatchQueue.main.asyncAfter(deadline: .now()+0.1*Double(index)) {
//                self.setMMValue(model: model)
//            }
//        }
        
//        for index in 0..<2 {
//            DispatchQueue.main.asyncAfter(deadline: .now()+1*Double(index)) {
//                model.defaultName1 = "\(arc4random())"
//                let nextController = NextViewController(model: model)
//                print(self.address(of: &nextController.model))
//            }
//        }
        
//        print("====")
//        model.defaultName1 = "\(arc4random())"
//        var nextController = NextViewController(model: model)
//        print(self.address(of: &nextController.model))
        
//        model.defaultName1 = "\(arc4random())"
//        nextController = NextViewController(model: model)
//        print(self.address(of: &nextController.model))
//        
//        model.defaultName1 = "\(arc4random())"
//        nextController = NextViewController(model: model)
//        print(self.address(of: &nextController.model))
//        
//        model.defaultName1 = "\(arc4random())"
//        nextController = NextViewController(model: model)
//        print(self.address(of: &nextController.model))
//        
//        model.defaultName1 = "\(arc4random())"
//        nextController = NextViewController(model: model)
//        print(self.address(of: &nextController.model))
//        print("====")
    }
    
//    private func setMMValue(model: HDStructDemo) {
//        var mm = model
//        mm.defaultName = "\(arc4random())"
//        print(address(of: &mm))
//
//    }

    func address(of object: UnsafeRawPointer) -> String {
        let addr = Int(bitPattern: object)
        return NSString(format: "%p", addr) as String
    }
}

