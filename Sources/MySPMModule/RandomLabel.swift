import UIKit

public class RandomLabel: UILabel {

    private var timer: Timer?
    
    public init() {
        super.init(frame: .zero)
        start()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func start() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { _ in
            let randomString = self.randomString(length: 7)
            
            DispatchQueue.main.async {
                UIView.animate(withDuration: 0.2) {
                    self.text = randomString
                }
            }
        }
    }
    
    private func randomString(length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return String((0..<length).map{ _ in letters.randomElement()! })
    }
    
}
