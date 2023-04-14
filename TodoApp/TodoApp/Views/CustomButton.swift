//
//  CustomButton.swift
//  TodoApp
//
//  Created by Rapipay on 12/04/23.
//

import SwiftUI

struct CustomButton: View {
    
    var btnAction: (()->())
     var btntitle: String
    
    var body: some View {
    
        Button(action: btnAction, label:
        {
            Text(btntitle)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 30)
                .padding()
                .background(Color.blue)
                
                .cornerRadius(10)
            
            
        })
        .padding()
    }
}

//struct CustomButton_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomButton(btntitle: "add")
//    }
//}
