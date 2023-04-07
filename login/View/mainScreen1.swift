//
//  mainScreen1.swift
//  login
//
//  Created by Siwar Nafti on 29/3/2023.
//

import SwiftUI

struct mainScreen1: View {
    var body: some View {
        NavigationView {
            
                    TabView {
                        Text("home screen")
                            .tabItem {Image(systemName: "house")
                            }
                        Text("schedule screen")
                            .tabItem {Image(systemName: "flag.checkered")
                            }
                        Text("favorites screen")
                            .tabItem {Image(systemName: "star")
                            }
                        Profil()
                            .tabItem {Image(systemName: "person")
                            }
                       
                    }.accentColor(Color("PrimaryColor"))
                    //.navigationTitle("Tab View Example")
                }
    }
}

struct mainScreen1_Previews: PreviewProvider {
    static var previews: some View {
        mainScreen1()
    }
}



