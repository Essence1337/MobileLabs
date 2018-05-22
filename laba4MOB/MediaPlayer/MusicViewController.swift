import UIKit
import AVFoundation

class MusicViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!

    @IBOutlet weak var displayLbl: UILabel!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var timeLineSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = Bundle.main.url(forResource: "Post_malone_Stay", withExtension: "mp3")

        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer.prepareToPlay()
            audioPlayer.currentTime = 0
            displayLbl.text = "\(audioPlayer.currentTime)"
            titleLbl.text = "Post Malone - Stay"
            
            Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (timer) in
                self.displayLbl.text = "\(round(self.audioPlayer.currentTime*10)/10)"
            }
            
        }catch let error as NSError {
            print(error.debugDescription)
        }
        titleLbl.textAlignment = .center
        titleLbl.numberOfLines = 0
        displayLbl.textAlignment = .center
        displayLbl.numberOfLines = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func homePressed(_ sender: UIButton) {
        audioPlayer.stop()
    }
    
    @IBAction func pausePressed(_ sender: UIButton) {
        audioPlayer.pause()
    }
    
    @IBAction func playPressed(_ sender: UIButton) {
        audioPlayer.play()
    }
    
    @IBAction func stopPressed(_ sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0
    }
}
