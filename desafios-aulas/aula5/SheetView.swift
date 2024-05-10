import SwiftUI

struct SheetView: View {
    @State  var x: Location
    var body: some View {
        Text(x.pais)
            .font(.title)
        Spacer()
            .frame(height: 150)
        AsyncImage(url: URL(string: x.flag)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
            
        } placeholder: {
            Color.gray
        }
        .frame(width: 350, height: 60)
        Spacer()
            .frame(height: 150)
        Text(x.description)
    }
}
