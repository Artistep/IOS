//
//  ViewController.swift
//  Atrtistep
//
//  Created by Artistep on 2022/07/20.
//

import UIKit

import AVFoundation

class MainController: UIViewController {

    //MARK: IBOutlet Properties
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: Properties
    

    //MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerXib()
        
    }
    
    //MARK: Button Actions
    
    //MARK: Functions
    
    private func registerXib() {
        let nib = UINib(nibName: "MainTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "mainXib")
    }
    
    //MARK: Objc Functions
    
}

//MARK: Extensions

extension MainController: UITableViewDelegate, UITableViewDataSource {
    
    //MARK: TableView Method
    
    // 테이블 뷰에 보여줄 갯수. 호출 이후 추가 될 때 마다 배열에 append --> reload
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    // 테이블 뷰에 올라간 셀의 형태
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainXib",
                                                 for: indexPath) as! MainTableViewCell
        cell.userID.text = "@sozohoy"
        cell.userNickName.text = "석지한"
        
        let videoAsset = AVURLAsset(url: URL(string: "https://thumbs.gfycat.com/FoolhardyMiserlyAsiantrumpetfish-mobile.mp4")!)
        let videoAssetTrack = videoAsset.tracks(withMediaType: .video).first
        
        if let naturalSize = videoAssetTrack?.naturalSize{
            print(naturalSize)
            if naturalSize.width > naturalSize.height{
             
                cell.userVideo.frame = CGRect(x: self.view.frame.minX,
                                              y: self.view.frame.minY,
                                              width: self.view.frame.width,
                                              height: 270)

            } else {
                
                cell.userVideo.frame = CGRect(x: self.view.frame.minX,
                                              y: self.view.frame.minY,
                                              width: self.view.frame.width,
                                              height: 800)
                
            }
        }
        
        let player = AVPlayer(url: URL(string: "https://thumbs.gfycat.com/FoolhardyMiserlyAsiantrumpetfish-mobile.mp4")!)
        // https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4 -- 4:3
        // https://thumbs.gfycat.com/FoolhardyMiserlyAsiantrumpetfish-mobile.mp4 -- 9:16 -> 3:4
        let playerLayer = AVPlayerLayer(player: player)
        
        
        playerLayer.videoGravity = .resizeAspect
        playerLayer.needsDisplayOnBoundsChange = true
        playerLayer.frame.size = CGSize(width: UIScreen.main.bounds.width - 36,
                                        height: cell.userVideo.bounds.height)
        
        cell.userVideo.layer.addSublayer(playerLayer)
        player.play()
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension // 크기 동적
    }
    
}
