//
//  ContentView.swift
//  cw5
//
//  Created by Lulwah alduwaikhi on 13/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var groceryItems = ["Doritos" , "Indomie" , "Kinder" , "Pepsi" , "Tomato",]
    @State var NewItem = ""
   
    var body: some View {
        
        VStack {
            List(groceryItems,id:\.self){
                i in
                HStack{
                    Image(i)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90, height: 90)
                   Text(i)
                    }
            }
            HStack{
                Button {
                    groceryItems.append(NewItem)
                } label: {
                 Image(systemName: "plus.square")
                        .resizable()
                        .background(.green)
                        .foregroundColor(.white)
                        .frame(width: 65, height: 65)
                        .cornerRadius(9)
                        
                    
                               
                }
               
                
    
            
            
            TextField("New Items", text: $NewItem)
            
            Button {
                groceryItems.remove(at: 0)
            } label: {
                Image(systemName: "minus.square")
                    .resizable()
                    .foregroundColor(.white)
                    .background(.red)
                    .frame(width: 65, height: 65)
                    .cornerRadius(9)
                    
            }
            }
        }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
