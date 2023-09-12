//
//  CalculatorView.swift
//  stacks Partners
//
//  Created by Joshua S. Ilagan on 9/8/23.
//

import SwiftUI

struct RowView: View {
    
    let button1 : String
    let button2 : String
    let button3 : String
    let button4 : String
    
    var body: some View {
        
        
        HStack{
            
            ZStack{
                Circle()
                    .frame(width: 90, height: 90, alignment: .leading)
                    .foregroundColor(.gray)
                
                Text(button1)
                    .font(.system(size: 35, weight: .medium, design: .rounded))
            }
            
            ZStack{
                Circle()
                    .frame(width: 90, height: 90, alignment: .leading)
                    .foregroundColor(.gray)
                
                Text(button2)
                    .font(.system(size: 35, weight: .medium, design: .rounded))
            }
            ZStack{
                Circle()
                    .frame(width: 90, height: 90, alignment: .leading)
                    .foregroundColor(.gray)
                
                Text(button3)
                    .font(.system(size: 35, weight: .medium, design: .rounded))
            }
            ZStack{
                Circle()
                    .frame(width: 90, height: 90, alignment: .leading)
                    .foregroundColor(.orange)
                
                Text(button4)
                    .font(.system(size: 35, weight: .medium, design: .rounded))
                
            }
        }
    }
}


struct CalculatorView: View {
    
    
    
    
    var body: some View {
        
        VStack {
            
            Text("0")
                .font(.system(size: 100, weight: .medium, design: .rounded))
                .frame(maxWidth: .infinity,
                       maxHeight: .infinity,
                       alignment: .bottomTrailing)
                .padding()
            
            RowView(button1: "AC", button2: "±", button3: "%", button4: "÷")
            
            RowView(button1: "7", button2: "8", button3: "9", button4: "x")
            
            RowView(button1: "4", button2: "5", button3: "6", button4: "-")
            
            RowView(button1: "1", button2: "2", button3: "3", button4: "+")
            
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 80)
                        .frame(width: 180, height: 90, alignment: .center)
                        .foregroundColor(.gray)
                    Text("0")
                        .font(.system(size: 35, weight: .medium, design: .rounded))
                        .frame(maxWidth: 120,
                               maxHeight: 90,
                               alignment: .leading)
                }
                ZStack{
                    Circle()
                        .frame(width: 90, height: 90, alignment: .center)
                        .foregroundColor(.gray)
                    Text(".")
                        .font(.system(size: 35, weight: .medium, design: .rounded))
                    
                    
                }
                
                ZStack{
                    Circle()
                        .frame(width: 90, height: 90, alignment: .leading)
                        .foregroundColor(.orange)
                    Text("=")
                        .font(.system(size: 35, weight: .medium, design: .rounded))
                    
                }
                
            }
            
        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity,
               alignment: .bottom)
        
    }
    
}


struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}



