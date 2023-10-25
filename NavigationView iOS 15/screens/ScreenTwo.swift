//
//  ScreenTwo.swift
//  NavigationView iOS 15
//
//  Created by Rezaul Islam on 24/10/23.
//

import SwiftUI

struct ScreenTwo: View {
    //@Binding var rootActive : Bool
    @State var goToSecond : Bool = false
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                Text("Second Screen")
                Spacer()
                Button {
                   goToSecond = true
                } label: {
                    Text("Go to Third Screen")
                        .padding(.all)
                        .background(.white)
                        .cornerRadius(15)
                }

            
                Spacer()
                HStack{
                    EmptyView()
                    Spacer()
                }
                navigateToThirdScreen
                
            }
            .background(.blue.opacity(0.1))
        }
        .navigationBarBackButtonHidden(true)
    }

    
}

extension ScreenTwo{
    private var navigateToThirdScreen : some View {
        NavigationLink(destination: ScreenThree(rootActive: $goToSecond), isActive: $goToSecond) {
            EmptyView()
        }
    }
}

struct ScreenTwo_Previews: PreviewProvider {
    static var previews: some View {
        ScreenTwo()
    }
}
