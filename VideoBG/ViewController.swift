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
    let videoURL: NSURL = Bundle.main.url(forResource: "file name", withExtension: ".format")! as NSURL
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // From local:
        
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
        
        // From URL:
        
        //try? VideoBackground.shared.play(view: view, videoName: "file name", videoType: "format")
    }
    
    fileprivate func playerItemDidReachEnd() {
        
        player?.seek(to: CMTime.zero)
    }
    
    @objc fileprivate func loopVideo() {
        
        player?.seek(to: CMTime.zero)
        player?.play()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

