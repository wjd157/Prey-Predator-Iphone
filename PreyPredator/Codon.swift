//
//  Codon.swift
//  PreyPredator
//
//  Created by William Daniels on 5/23/17.
//  Copyright © 2017 William Daniels. All rights reserved.
//

import Foundation


class CodonBrain{
    var sequence: String
    
    init(seq: String){
        sequence = seq
    }
    
    
    //Returns the correct acid
    func getCodon() -> String{
        if(legalCodon() == true){
            return findCodon()
        }
        else if(sequence.characters.count != 0){
            return "Please enter a correct codon"
        }
        else{
            return ""
        }
    }
    
    //Checks if the codon entered is legal
    func legalCodon() -> Bool{
        if(sequence.characters.count != 3){
            return false
        }
        
        let idx = sequence.characters.index(sequence.startIndex, offsetBy: 0)
        let secIdx = sequence.characters.index(sequence.startIndex, offsetBy: 1)
        let thirdInx = sequence.characters.index(sequence.startIndex, offsetBy: 2)
        let firstLetter = sequence[idx]
        let secondLetter = sequence[secIdx]
        let thirdLetter = sequence[thirdInx]
        
        if(firstLetter != "A" && firstLetter != "G" && firstLetter != "U" && firstLetter != "C"){
            return false
        }
        if(secondLetter != "A" && secondLetter != "G" && secondLetter != "U" && secondLetter != "C"){
            return false
        }
        if(thirdLetter != "A" && thirdLetter != "G" && thirdLetter != "U" && thirdLetter != "C"){
            return false
        }
        else{
            return true
        }
    }
    
    //Finds the acid based on the legal codon
    func findCodon() -> String {
        let idx = sequence.characters.index(sequence.startIndex, offsetBy: 0)
        let secIdx = sequence.characters.index(sequence.startIndex, offsetBy: 1)
        let thirdInx = sequence.characters.index(sequence.startIndex, offsetBy: 2)
        let firstLetter = sequence[idx]
        let secondLetter = sequence[secIdx]
        let thirdLetter = sequence[thirdInx]
        if(firstLetter == "U"){
            if(secondLetter == "U"){
                if(thirdLetter == "U" || thirdLetter == "C"){
                    return "Phenylalanine"
                }
                else{
                    return "Leucine"
                }
            }
            if(secondLetter == "C"){
                return "Serine"
            }
            if(secondLetter == "A"){
                if(thirdLetter == "U" || thirdLetter == "C"){
                    return "Tyrosine"
                }
                else{
                    return "Stop"
                }
            }
            else{
                if(thirdLetter == "U" || thirdLetter == "C"){
                    return "Cysteine"
                }
                else if(thirdLetter == "A"){
                    return "Stop"
                }
                else{
                    return "Tryptophan"
                }
            }
        }
        else if(firstLetter == "A"){
            if(secondLetter == "U"){
                if(thirdLetter == "U" || thirdLetter == "C" || thirdLetter == "A"){
                    return "Isoleucine"
                }
                else{
                    return "Methioine"
                }
            }
            if(secondLetter == "C"){
                return "Threonine"
            }
            if(secondLetter == "A"){
                if(thirdLetter == "U" || thirdLetter == "C"){
                    return "Asparagine"
                }
                else{
                    return "Lysine"
                }
            }
            else{
                if(thirdLetter == "U" || thirdLetter == "C"){
                    return "Serine"
                }
                else if(thirdLetter == "A" || thirdLetter == "G"){
                    return "Arginine"
                }
            }
        }
        else if(firstLetter == "G"){
            if(secondLetter == "U"){
                return "Valine"
            }
            if(secondLetter == "C"){
                return "Alanine"
            }
            if(secondLetter == "A"){
                if(thirdLetter == "U" || thirdLetter == "C"){
                    return "Aspartic Acid"
                }
                else{
                    return "Glutamic Acid"
                }
            }
            else{
                return "Glycine"
            }
        }
        else {
            if(secondLetter == "U"){
                return "Leucine"
            }
            if(secondLetter == "C"){
                return "Proline"
            }
            if(secondLetter == "A"){
                if(thirdLetter == "U" || thirdLetter == "C"){
                    return "Histidine"
                }
                else{
                    return "Glutamine"
                }
            }
            else{
                return "Arginine"
            }
        }
        return "No codon found"
    }
}


