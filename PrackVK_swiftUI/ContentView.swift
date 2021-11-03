//
//  ContentView.swift
//  PrackVK_swiftUI
//
//  Created by Сергей Бадасян on 27.10.2021.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @State private var isDark = false
    @State private var login = ""
    @State private var password = ""
    @State private var shouldShowLogo = true
    
    private let keyboardIsOnPublisher = Publishers.Merge(
           NotificationCenter.default.publisher(for: UIResponder.keyboardWillChangeFrameNotification)
               .map { _ in true },
           NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
               .map { _ in false }
       )
       .removeDuplicates()
       .eraseToAnyPublisher()

    
    var body: some View {
        
        ZStack {

            GeometryReader {
                reader in
                Rectangle().fill(LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: .topLeading, endPoint: .bottomTrailing)).ignoresSafeArea(.all)
            }
            
            ScrollView {
                
                VStack {
                    
                    if shouldShowLogo {
                        HStack {
                            
                            Image("VK_Blue_Logo_t").resizable().frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Welcome")
                                .padding()
                                .font(.largeTitle)
                        }.padding(EdgeInsets(top: 15, leading: 0, bottom: 20, trailing: 0))
                    }
                    
                    
                    VStack {
                        HStack {
                            Text("Login:")
                            .font(.system(size: 18)).bold()
                            Spacer()
                        }
                        
                        TextField("", text: $login)
                            .frame(width: 250)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                    }.padding(EdgeInsets(top: 10, leading: 70, bottom: 0, trailing: 70))
                    
                    VStack {
                        HStack {
                            Text("Password:").font(.system(size: 18)).bold()
                            Spacer()
                        }
                        
                        SecureField("", text: $password).frame(width: 250)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }.padding(EdgeInsets(top: 0, leading: 70, bottom: 0, trailing: 70))
                
                    HStack {
                        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                            
                            Text("Войти").font(.system(size: 18)).bold()
                                
                                .foregroundColor(.white)
                        }.frame(width: 120, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color.steelBlue).cornerRadius(6.0)
                        
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                            
                            Text("Отмена").font(.system(size: 18)).bold()
                                .foregroundColor(.steelBlue)
                        }.frame(width: 120, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.white).cornerRadius(6.0)
                    }
                    .frame(width: 250)
                    .padding()
                    
                    
                    
                    
                    Toggle("Темная тема", isOn: $isDark)
                        .padding(EdgeInsets(top: 0, leading: 70, bottom: 5, trailing: 70))
                }
            }
            .onReceive(keyboardIsOnPublisher) { isKeyboardOn in
                withAnimation(Animation.easeInOut(duration: 0.5)) {
                    self.shouldShowLogo = !isKeyboardOn
                }
            }

        }
        .onTapGesture {
            print("Tap!")
            UIApplication.shared.endEditing()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


