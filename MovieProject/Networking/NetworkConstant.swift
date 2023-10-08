//
//  NetworkConstant.swift
//  MovieProject
//
//  Created by Eman Khaled on 06/10/2023.
//

import UIKit
class NetworkConstant {
    public static var shared:NetworkConstant = NetworkConstant()
    private init(){
        //sigleton
    }
    
    public var apiKey : String {
        get {
            //Api key from
            //"91540bd9c5f66b73ecfbef341a5bcd5f"
            return "7ac72bd9edccc294270b0fb0981b7fb9"
        }
    }
    public var serverAddress : String {
        get{
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageServerAddress : String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
}



