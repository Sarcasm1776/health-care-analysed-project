import SwiftUI

struct ForgotPasswordFields : View {
    
    @State var email:String = ""
    

    var body : some View {
        
        /*
            Email field.
         */
        
        TextField("", text: self.$email)
            .frame(width: 350, height: 50)
            .background {
                RoundedRectangle(cornerRadius: 40)
                    .fill(
                        Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.29)
                    ).frame(width: 350, height: 50)
                    .overlay {
                        if(self.email.isEmpty) {
                            HStack {
                                Text("Enter Email")
                                    .foregroundStyle(
                                        Color(uiColor: UIColor(hex: "939393", alpha: 1.0)!)
                                    ).bold()
                                Spacer()
                            }.padding(.leading)
                        }
                    }
            }.padding(.top, 40)
    }
}

struct ContinueButton : View {
    var body: some View {
        Button("Continue") {}
            .frame(width: 180, height: 60)
            .bold()
            .font(.system(size: 24))
            .foregroundStyle(.white)
            .background {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
            }.padding(.top)
    }
}

struct ForgotPasswordView: View {
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                
                Text("Forgot Password")
                    .bold()
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                    .font(.system(size: 35))
                    .padding(.top, 80)
                
                ForgotPasswordFields()
                
                ContinueButton()
                
                Spacer()
                
            }.frame(width: geo.size.width, height: geo.size.height)
            .background {
                ZStack {
                    Color(red: 0.13, green: 0.13, blue: 0.13)
                        .ignoresSafeArea(.all)
                    
                    Ellipse()
                        .foregroundColor(.clear)
                        .frame(width: 523, height: 563)
                        .background(Color(red: 1, green: 0.74, blue: 0.51).opacity(0.39))
                        .blur(radius: 700)
                }
            }.aspectRatio(contentMode: .fit)
                
        }
    }
}

#Preview {
    ForgotPasswordView()
}
