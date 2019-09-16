//
//  ViewController.swift
//  VideoBG
//
//  Created by Рустам on 5/6/19.
//  Copyright © 2019 Рустам Амирханов. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
import SwiftVideoBackground

class ViewController: UIViewController {
    
    var player: AVPlayer?
    let videoURL: NSURL = Bundle.main.url(forResource: "Имя файла", withExtension: ".формат")! as NSURL
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Первый метод
        
        player = AVPlayer(url: videoURL as URL)
        player?.actionAtItemEnd = .none
        player?.isMuted = true
        
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        playerLayer.zPosition = -1
        
        playerLayer.frame = view.frame
        view.layer.addSublayer(playerLayer)
        
        player?.play()
        
        NotificationCenter.default.addObserver(self, selector: #selector(loopVideo), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: self.player)
        
        // Второй метод
        
        let url = URL(string: "Ссылка на видео")!
        VideoBackground.shared.play(view: view, url: url)
    }
    
    fileprivate func playerItemDidReachEnd() {
        
        player?.seek(to: CMTime.zero)
    }
    
    @objc fileprivate func loopVideo() {
        
        player?.seek(to: CMTime.zero)
        player?.play()
    }
}

