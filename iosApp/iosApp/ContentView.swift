import SwiftUI
import shared

struct ContentView: View {

    @State private var phoneNumber: String = ""
	var body: some View {
        
        VStack(spacing: 25) {
        TextField(
                "Mobile Number",
                text: $phoneNumber
            ).keyboardType(.numberPad)
            .onReceive(phoneNumber.publisher.collect()) { _ in limitText(10) }
            .onChange(of: phoneNumber) { newValue in
                phoneNumber
            }
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .border(.secondary)

        
        Text(Formatter.init().format(phoneNumber: phoneNumber))
        }.padding()
    }
    
    func limitText(_ upper: Int) {
            if phoneNumber.count > upper {
                phoneNumber = String(phoneNumber.prefix(upper))
            }
        }
}


struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
