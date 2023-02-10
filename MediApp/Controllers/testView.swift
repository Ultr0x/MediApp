//
//  ContentView.swift
//  medIApp
//
//  Created by Lotti Hill on 18/05/2022.
//

import SwiftUI

struct testView: View {
    
    @State private var name = ""
    @State private var postcode = ""
    @State private var birthdate = Date()
    @State private var address = ""
    @State private var country = ""
    
    
    //@State private var gender = "Other"
    //let genders = ["Female", "Male", "Other"]
    
    var body: some View {
        VStack {
            VStack {
                Text("My Profile")
                    .font(.title)
                    .bold()
                Image("noProfile")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
            }
            
            Spacer().frame(height: 30)
            
            
            
            
          
            VStack(alignment: .leading, spacing: 12) {
                HStack{
                    
                    Form {
                        Section(header: Text("Personal Details")){
                            
                            TextField (
                                "Full Name", text: $name
                            )
                            
                            /*
                            Picker("Gender", selection: $gender){
                                ForEach(genders, id: \.self){\
                                    Text($0)
                                
                                }
                            }
                            */
                            
                            DatePicker(
                                "Birthdate", selection: $birthdate, displayedComponents: .date
                                )
                            
                        }
                        Section(header: Text("Delivery Details")){
                            TextField (
                                "Postcode", text:$postcode
                            )
                            
                            TextField (
                                "Address", text:$address
                            )
                            
                            TextField (
                                "Country", text:$country
                            )
                            
                        }
                        
                    }
                    
                }
            }
        }
    }
}
                    
                    /*
                }
                HStack{
                    Image(systemName: "phone")
                    Text("Phone Number")
                        .padding(.leading, 4)
                }
                HStack{
                    Image(systemName: "house")
                    Text("Postcode")
                
                }
                HStack{
                    Text("House number")
                        .padding(.leading, 33)
                }
                            }
           
        }
    }
}
                     */

    
