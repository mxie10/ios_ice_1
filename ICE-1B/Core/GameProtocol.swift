//
//  GameProtocal.swift
//  ICE-1B
//
//  Created by Mingyuan Xie on 1/18/23.
//

protocol GameProtocol
{
    //initialization
    func Start()
    
    //update every time
    func Update()
    
    //Check the position is outside the bounds of the Screen
    func CheckBounds()
    
    //a method to reset the position
    func Reset()
}
