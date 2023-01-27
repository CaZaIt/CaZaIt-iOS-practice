//
//  addDash.swift
//  CaZaIt_mainview
//
//  Created by 홍서린 on 2023/01/24.
//

import UIKit

class DashView : UIView{
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
        func draw(_ rect: CGRect) {
            
            self.makeDashPatternLine(rect: rect, dashPhase: [5,5], color: UIColor(red: 0.363, green: 0.142, blue: 0.142, alpha: 1), lineWidth: 2)
        }
    }
}

extension UIView {
    
    func makeDashPatternLine(rect: CGRect, dashPhase : [CGFloat], color : UIColor, lineWidth : CGFloat){
        
        let borderLayer = CAShapeLayer()
        
        let path = CGMutablePath()
        var x : CGFloat = 10
        while x <= rect.maxX - 10{
            path.move(to: CGPoint(x: x, y: 0))
            x += 10
            path.addLine(to: CGPoint(x: x, y: 0))
            x += 10
            
            
            borderLayer.strokeColor = UIColor.gray.cgColor
            borderLayer.lineDashPattern = [3,3]
            borderLayer.backgroundColor = UIColor.clear.cgColor
            borderLayer.fillColor = UIColor.clear.cgColor
            
            layer.addSublayer(borderLayer)
            
        }
    
        borderLayer.path = UIBezierPath(cgPath: path).cgPath
    }
    
    
}
