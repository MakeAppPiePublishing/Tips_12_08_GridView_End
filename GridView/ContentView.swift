//
//  ContentView.swift
//  GridView
//
//  Created by Steven Lipton on 9/20/20.
//
// An exercise file for iOS Development Tips Weekly
// A weekly course on LinkedIn Learning for iOS developers
//  Season 12 (Q4 2020) video 08
//  by Steven Lipton (C)2020, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
//This Week:  LEarn the basics of collections views in SwiftUI
//  For more code, go to http://bit.ly/AppPieGithub

import SwiftUI

struct ContentView: View {
    let columns = Array(repeating:GridItem(spacing:5),count:2)
    var body: some View {
        ScrollView{
            //VStack{
            LazyVGrid(columns:columns, spacing:5){
                ForEach(MenuModel.menu){ item in
                    VStack{
                        Image("\(item.id)_100w")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(5)
                        HStack{
                            Text("\(item.id)")
                            Text(item.name)
                        }.font(.caption)
                    }
                }
            }.padding()
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
