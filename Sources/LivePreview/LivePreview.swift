import SwiftUI

@available(iOS 14.0, *)
public extension UIViewController {
  
  private struct LivePreview: UIViewControllerRepresentable {
    let viewController: UIViewController
    func makeUIViewController(context: Context) -> some UIViewController { viewController }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
  }

  func livePreview() -> some View {
    LivePreview(viewController: self)
  }
}

@available(iOS 14.0, *)
public extension UIView {
  
  private struct LivePreview: UIViewRepresentable {
    let view: UIView
    func makeUIView(context: Context) -> some UIView { view }
    func updateUIView(_ uiView: UIViewType, context: Context) { }
  }
  
  func livePreview() -> some View {
    LivePreview(view: self)
  }
}

///Example:
///#if DEBUG && canImport(SwiftUI)
///import SwiftUI
///@available(iOS 14.0, *)
///struct ViewController_Preview: PreviewProvider {
///  static var previews: some View {
///    ViewController()
///      .livePreview()
///     .ignoresSafeArea()
///  }
///}
///#endif
