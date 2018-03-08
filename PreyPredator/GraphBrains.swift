//
//  GraphBrains.swift
//  PreyPredator
//
//  Created by William Daniels on 5/24/17.
//  Copyright © 2017 William Daniels. All rights reserved.
//

import Foundation
import QuartzCore

class GraphBrain{
    
    var prey: [CGFloat] = [0]
    var pred: [CGFloat] = [0]
    
    init(){
    }
    
    func getPred() -> [CGFloat]{
        pred.removeAll()
        for x in 0..<21{
            pred.append(CGFloat(Double(sin(Double(x)-2)+2)))
        }
        return pred
    }
    
    func getPrey()-> [CGFloat]{
        prey.removeAll()
        for x in 0..<21{
            prey.append(CGFloat(Double(sin(Double(x)-2)+2)))
        }
        return prey
    }
    
    
}
