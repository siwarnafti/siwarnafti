
import SwiftUI

struct Profil: View {
    
    @StateObject var vm = ViewModel()
    @State var UserName: String = "siwar"
    @State var email: String = ""
    @State var phone: String = ""
    @State private var avatarImage: Image?
    @State var shouldShowImagePicker = false
    @State var image: UIImage?
    @State private var isPresentingConfirm: Bool = false
    @State private var isPresentingAlert: Bool = false
    
    
    var body: some View {
        NavigationView{
            VStack(alignment: .center){
                Spacer()
                
                Image(systemName: "person.fill")
                    .font(.system(size: 150))
                    .padding()
                    .foregroundColor(Color(.label))
                    .overlay(Circle()
                        .stroke(Color.black, lineWidth: 3))
                
                
                Spacer()
                NavigationLink(
                    destination: EditProfil(),
                    label: {
                        Text("Edit Profil")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color("PrimaryColor"))
                            .cornerRadius(30)
                            .frame(width: 500, height: 150)
                    })
                VStack(alignment: .leading){
                    HStack{
                        Text("UserName :")
                            .padding()
                        Text(vm.username)
                    }
                    
                    HStack{
                        Text("Email :" )
                            .padding()
                        Text(vm.email)
                    }
                    HStack{
                      //  Text("Phone :")
                          //  .padding()
                        //Text("123456789")
                    }
                }.offset(x:-50)
                
                Spacer()
            }
            .toolbar{
                Button {
                    vm.authenticated=false
                    AppEventsManager.shared.navigateFullScreen.send((true, FullScreenNavigationViewType.WelcomeView))
                } label: {
                    Image(systemName: "rectangle.portrait.and.arrow.right")
                        .imageScale(.large)
                }
                
            }
        }
        
    }
        
      
    }
struct Profil_Previews: PreviewProvider {
    static var previews: some View {
        Profil()
    }
}
