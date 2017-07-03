//
//  ViewController.swift
//  KoffiVideo
//
//  Created by Mario Geneau on 2017-07-03.
//  Copyright © 2017 Mario Geneau. All rights reserved.
//

import UIKit
import MediaPlayer

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
playVideo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var moviePlayer : MPMoviePlayerController?
    
    func playVideo() {
        let path = Bundle.main.path(forResource: "test", ofType:"mov")
        let url = NSURL.fileURL(withPath: path!)
        moviePlayer = MPMoviePlayerController(contentURL: url)
        
        if let player = moviePlayer {
            
            player.view.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 667)
            
            player.prepareToPlay()
            player.scalingMode = .aspectFill
            player.controlStyle = .none
            player.shouldAutoplay = true
            player.repeatMode = MPMovieRepeatMode.one
            self.view.addSubview(player.view)
            
        }    
    }

}

