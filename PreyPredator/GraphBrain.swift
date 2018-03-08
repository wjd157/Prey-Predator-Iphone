//
//  GraphBrain.swift
//  PreyPredator
//
//  Created by William Daniels on 5/22/17.
//  Copyright © 2017 William Daniels. All rights reserved.
//

import Foundation

class GraphBrain{
//if(graph == 1){
//    if(brain.lion == true && brain.zebra == true){
//        preyTemp = [2, 5, 17, 3.7, 4.3, 5, 2,10,11,20,9,11,8,12,14,16,18,20,13,10,4]
//        predTemp = [2, 10, 15, 8, 2, 5, 3,2,5,11,5,7,5,2,5,2,5,9,14,17,19]
//    }
//    else if(brain.lion == true && brain.zebra == false){
//        preyTemp = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0]
//        predTemp = [5, 5, 4, 4, 3.5, 3, 2, 1.5, 1.5, 1, 1, 1, 0,0,0,0,0,0,0,0,0]
//    }
//    else if (brain.lion == false && brain.zebra == true){
//        preyTemp = [2, 2, 3, 3, 4, 5, 8, 9, 11, 14, 16, 19, 20 ,20 ,20 ,20 ,20, 20, 20, 20, 20]
//        predTemp = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0]
//    }
//    else{
//        preyTemp = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0]
//        predTemp = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0]
//    }
//}
//else if(graph == 2){
//    if(brain.killerWhale == true && brain.salmon == true){
//        preyTemp = [2, 5, 17, 3.7, 4.3, 5, 2,10,11,20,9,11,8,12,14,16,18,20,13,10,4]
//        predTemp = [2, 10, 15, 8, 2, 5, 3,2,5,11,5,7,5,2,5,2,5,9,14,17,19]
//    }
//    else if(brain.killerWhale == true && brain.salmon == true){
//        preyTemp = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0]
//        predTemp = [5, 5, 4, 4, 3.5, 3, 2, 1.5, 1.5, 1, 1, 1, 0,0,0,0,0,0,0,0,0]
//    }
//    else if (brain.killerWhale == true && brain.salmon == true){
//        preyTemp = [2, 2, 3, 3, 4, 5, 8, 9, 11, 14, 16, 19, 20 ,20 ,20 ,20 ,20, 20, 20, 20, 20]
//        predTemp = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0]
//    }
//    else{
//        preyTemp = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0]
//        predTemp = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0]
//    }
//}
//else if(graph == 3){
//    if(brain.polarBear == true && brain.ringedSeal == true){
//        preyTemp = [2, 5, 17, 3.7, 4.3, 5, 2,10,11,20,9,11,8,12,14,16,18,20,13,10,4]
//        predTemp = [2, 10, 15, 8, 2, 5, 3,2,5,11,5,7,5,2,5,2,5,9,14,17,19]
//    }
//    else if(brain.polarBear == true && brain.ringedSeal == true){
//        preyTemp = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0]
//        predTemp = [5, 5, 4, 4, 3.5, 3, 2, 1.5, 1.5, 1, 1, 1, 0,0,0,0,0,0,0,0,0]
//    }
//    else if (brain.polarBear == true && brain.ringedSeal == true){
//        preyTemp = [2, 2, 3, 3, 4, 5, 8, 9, 11, 14, 16, 19, 20 ,20 ,20 ,20 ,20, 20, 20, 20, 20]
//        predTemp = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0]
//    }
//    else{
//        preyTemp = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0]
//        predTemp = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0]
//    }
//}
//else if(graph == 4){
//    if(brain.redTailedHawk == true && brain.mice == true){
//        preyTemp = [2, 5, 17, 3.7, 4.3, 5, 2,10,11,20,9,11,8,12,14,16,18,20,13,10,4]
//        predTemp = [2, 10, 15, 8, 2, 5, 3,2,5,11,5,7,5,2,5,2,5,9,14,17,19]
//    }
//    else if(brain.redTailedHawk == true && brain.mice == true){
//        preyTemp = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0]
//        predTemp = [5, 5, 4, 4, 3.5, 3, 2, 1.5, 1.5, 1, 1, 1, 0,0,0,0,0,0,0,0,0]
//    }
//    else if (brain.redTailedHawk == true && brain.mice == true){
//        preyTemp = [2, 2, 3, 3, 4, 5, 8, 9, 11, 14, 16, 19, 20 ,20 ,20 ,20 ,20, 20, 20, 20, 20]
//        predTemp = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0]
//    }
//    else{
//        preyTemp = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0]
//        predTemp = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0]
//    }
//}
}
