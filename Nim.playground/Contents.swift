//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    var imageView1 : UIImageView!
    var imageView2 : UIImageView!
    var imageView3 : UIImageView!
    var imageView4 : UIImageView!
    var imageView5 : UIImageView!
    var imageView6 : UIImageView!
    var imageView7 : UIImageView!
    var imageView8 : UIImageView!
    var imageView9 : UIImageView!
    var imageView10 : UIImageView!
    var imageView11 : UIImageView!
    var imageView12 : UIImageView!
    var imageView13 : UIImageView!
    var imageView14 : UIImageView!
    var imageView15 : UIImageView!
    var imageView16 : UIImageView!
    var imageView17 : UIImageView!
    var imageView18 : UIImageView!
    var imageView19 : UIImageView!
    var imageView20 : UIImageView!
    var imageView21 : UIImageView!
    var imageView22 : UIImageView!
    var imageView23 : UIImageView!
    var imageView24 : UIImageView!
    var imageView25 : UIImageView!
    
    var button1 : UIButton!
    var button3 : UIButton!
    var button4 : UIButton!
    
    var hintButton : UIButton!
    var hintLabel : UILabel!
    
    
    var restartButton : UIButton!
    var WinLose : UILabel!
    var confetti : UIImageView!
    
    var masterCount = 25
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .orange

        let label = UILabel()
        label.frame = CGRect(x: 225, y: 225, width: 1000, height: 100)
        label.text = "How to play: Take\nturns emptying\nboxes. Remember,\nyou are playing an"
        label.numberOfLines = 0
        label.textColor = .black
        view.addSubview(label)
        
        let label3 = UILabel()
        label3.frame = CGRect(x: 225, y: 307, width: 1000, height: 100)
        label3.text = "AI. First one to\nempty the last box\nwins! If you're\nstuck, click hint."
        label3.numberOfLines = 0
        label3.textColor = .black
        view.addSubview(label3)
        
        let label2 = UILabel()
        label2.frame = CGRect(x: 10, y: 125, width: 1000, height: 100)
        label2.text = "Welcome to Nim!\nTo start, click\nany of the three\nbuttons."
        label2.numberOfLines = 0
        label2.textColor = .black
        view.addSubview(label2)
        
        WinLose = UILabel()
        WinLose.frame = CGRect(x: 55, y: 530, width: 1000, height: 100)
        WinLose.text = ""
        WinLose.numberOfLines = 0
        WinLose.textColor = .black
        view.bringSubviewToFront(WinLose)
        WinLose.isHidden = true
        view.addSubview(WinLose)
        
        button1 = UIButton()
        button1.frame = CGRect(x: 10, y: 600, width: 90, height: 35)
        let button1Image = UIImage(named: "1-D.png")
        button1.setBackgroundImage(button1Image, for: UIControl.State.normal)
        button1.addTarget(self, action:#selector(MyViewController.Button1Pressed(_:)), for: .touchUpInside)
        view.addSubview(button1)
        
        button3 = UIButton()
        button3.frame = CGRect(x: 140, y: 600, width: 90, height: 35)
        let button3Image = UIImage(named: "3-D.png")
        button3.setBackgroundImage(button3Image, for: UIControl.State.normal)
        button3.addTarget(self, action:#selector(MyViewController.Button3Pressed(_:)), for: .touchUpInside)
        view.addSubview(button3)
        
        button4 = UIButton()
        button4.frame = CGRect(x: 270, y: 600, width: 90, height: 35)
        let button4Image = UIImage(named: "4-D.png")
        button4.setBackgroundImage(button4Image, for: UIControl.State.normal)
        button4.addTarget(self, action:#selector(MyViewController.Button4Pressed(_:)), for: .touchUpInside)
        view.addSubview(button4)
        
        restartButton = UIButton()
        restartButton.frame = CGRect(x: 140, y: 600, width: 90, height: 35)
        let restartButtonImage = UIImage(named: "R-D.png")
        restartButton.setBackgroundImage(restartButtonImage, for: UIControl.State.normal)
        restartButton.addTarget(self, action:#selector(MyViewController.restartButtonPressed(_:)), for: .touchUpInside)
        restartButton.isHidden = true
        view.addSubview(restartButton)
        
        hintButton = UIButton()
        hintButton.frame = CGRect(x: 240, y: 40, width: 90, height: 35)
        let hintButtonImage = UIImage(named: "H-D.png")
        hintButton.setBackgroundImage(hintButtonImage, for: UIControl.State.normal)
        hintButton.addTarget(self, action:#selector(MyViewController.hintButtonPressed(_:)), for: .touchUpInside)
        view.addSubview(hintButton)
        
        hintLabel = UILabel()
        hintLabel.frame = CGRect(x: 225, y: 75, width: 1000, height: 100)
        hintLabel.text = """
        Stay one above the
        numbers 21, 16, 14,
        9, 7, and 2.
        """
        hintLabel.numberOfLines = 0
        hintLabel.textColor = .green
        hintLabel.isHidden = true
        view.addSubview(hintLabel)
        
        let confettiImage = UIImage.gif(name: "Confetti")
        confetti = UIImageView(image: confettiImage!)
        confetti.frame = CGRect(x: 25, y: 250, width: 300, height: 300)
        confetti.isHidden = true
        view.bringSubviewToFront(confetti)
        view.addSubview(confetti)
        
        let xaxis = 150

        let imageNum1 = "1-F.png"
        let image1 = UIImage(named: imageNum1)
        imageView1 = UIImageView(image: image1!)
        imageView1.frame = CGRect(x: xaxis, y: 525, width: 65, height: 20)
        view.addSubview(imageView1)

        let imageNum2 = "2-F.png"
        let image2 = UIImage(named: imageNum2)
        imageView2 = UIImageView(image: image2!)
        imageView2.frame = CGRect(x: xaxis, y: 505, width: 65, height: 20)
        view.addSubview(imageView2)

        let imageNum3 = "3-F.png"
        let image3 = UIImage(named: imageNum3)
        imageView3 = UIImageView(image: image3!)
        imageView3.frame = CGRect(x: xaxis, y: 485, width: 65, height: 20)
        view.addSubview(imageView3)

        let imageNum4 = "4-F.png"
        let image4 = UIImage(named: imageNum4)
        imageView4 = UIImageView(image: image4!)
        imageView4.frame = CGRect(x: xaxis, y: 465, width: 65, height: 20)
        view.addSubview(imageView4)

        let imageNum5 = "5-F.png"
        let image5 = UIImage(named: imageNum5)
        imageView5 = UIImageView(image: image5!)
        imageView5.frame = CGRect(x: xaxis, y: 445, width: 65, height: 20)
        view.addSubview(imageView5)

        let imageNum6 = "6-F.png"
        let image6 = UIImage(named: imageNum6)
        imageView6 = UIImageView(image: image6!)
        imageView6.frame = CGRect(x: xaxis, y: 425, width: 65, height: 20)
        view.addSubview(imageView6)

        let imageNum7 = "7-F.png"
        let image7 = UIImage(named: imageNum7)
        imageView7 = UIImageView(image: image7!)
        imageView7.frame = CGRect(x: xaxis, y: 405, width: 65, height: 20)
        view.addSubview(imageView7)

        let imageNum8 = "8-F.png"
        let image8 = UIImage(named: imageNum8)
        imageView8 = UIImageView(image: image8!)
        imageView8.frame = CGRect(x: xaxis, y: 385, width: 65, height: 20)
        view.addSubview(imageView8)

        let imageNum9 = "9-F.png"
        let image9 = UIImage(named: imageNum9)
        imageView9 = UIImageView(image: image9!)
        imageView9.frame = CGRect(x: xaxis, y: 365, width: 65, height: 20)
        view.addSubview(imageView9)

        let imageNum10 = "10-F.png"
        let image10 = UIImage(named: imageNum10)
        imageView10 = UIImageView(image: image10!)
        imageView10.frame = CGRect(x: xaxis, y: 345, width: 65, height: 20)
        view.addSubview(imageView10)

        let imageNum11 = "11-F.png"
        let image11 = UIImage(named: imageNum11)
        imageView11 = UIImageView(image: image11!)
        imageView11.frame = CGRect(x: xaxis, y: 325, width: 65, height: 20)
        view.addSubview(imageView11)

        let imageNum12 = "12-F.png"
        let image12 = UIImage(named: imageNum12)
        imageView12 = UIImageView(image: image12!)
        imageView12.frame = CGRect(x: xaxis, y: 305, width: 65, height: 20)
        view.addSubview(imageView12)

        let imageNum13 = "13-F.png"
        let image13 = UIImage(named: imageNum13)
        imageView13 = UIImageView(image: image13!)
        imageView13.frame = CGRect(x: xaxis, y: 285, width: 65, height: 20)
        view.addSubview(imageView13)

        let imageNum14 = "14-F.png"
        let image14 = UIImage(named: imageNum14)
        imageView14 = UIImageView(image: image14!)
        imageView14.frame = CGRect(x: xaxis, y: 265, width: 65, height: 20)
        view.addSubview(imageView14)

        let imageNum15 = "15-F.png"
        let image15 = UIImage(named: imageNum15)
        imageView15 = UIImageView(image: image15!)
        imageView15.frame = CGRect(x: xaxis, y: 245, width: 65, height: 20)
        view.addSubview(imageView15)

        let imageNum16 = "16-F.png"
        let image16 = UIImage(named: imageNum16)
        imageView16 = UIImageView(image: image16!)
        imageView16.frame = CGRect(x: xaxis, y: 225, width: 65, height: 20)
        view.addSubview(imageView16)

        let imageNum17 = "17-F.png"
        let image17 = UIImage(named: imageNum17)
        imageView17 = UIImageView(image: image17!)
        imageView17.frame = CGRect(x: xaxis, y: 205, width: 65, height: 20)
        view.addSubview(imageView17)

        let imageNum18 = "18-F.png"
        let image18 = UIImage(named: imageNum18)
        imageView18 = UIImageView(image: image18!)
        imageView18.frame = CGRect(x: xaxis, y: 185, width: 65, height: 20)
        view.addSubview(imageView18)

        let imageNum19 = "19-F.png"
        let image19 = UIImage(named: imageNum19)
        imageView19 = UIImageView(image: image19!)
        imageView19.frame = CGRect(x: xaxis, y: 165, width: 65, height: 20)
        view.addSubview(imageView19)

        let imageNum20 = "20-F.png"
        let image20 = UIImage(named: imageNum20)
        imageView20 = UIImageView(image: image20!)
        imageView20.frame = CGRect(x: xaxis, y: 145, width: 65, height: 20)
        view.addSubview(imageView20)

        let imageNum21 = "21-F.png"
        let image21 = UIImage(named: imageNum21)
        imageView21 = UIImageView(image: image21!)
        imageView21.frame = CGRect(x: xaxis, y: 125, width: 65, height: 20)
        view.addSubview(imageView21)

        let imageNum22 = "22-F.png"
        let image22 = UIImage(named: imageNum22)
        imageView22 = UIImageView(image: image22!)
        imageView22.frame = CGRect(x: xaxis, y: 105, width: 65, height: 20)
        view.addSubview(imageView22)

        let imageNum23 = "23-F.png"
        let image23 = UIImage(named: imageNum23)
        imageView23 = UIImageView(image: image23!)
        imageView23.frame = CGRect(x: xaxis, y: 85, width: 65, height: 20)
        view.addSubview(imageView23)

        let imageNum24 = "24-F.png"
        let image24 = UIImage(named: imageNum24)
        imageView24 = UIImageView(image: image24!)
        imageView24.frame = CGRect(x: xaxis, y: 65, width: 65, height: 20)
        view.addSubview(imageView24)

        let imageNum25 = "25-F.png"
        let image25 = UIImage(named: imageNum25)
        imageView25 = UIImageView(image: image25!)
        imageView25.frame = CGRect(x: xaxis, y: 45, width: 65, height: 20)
        view.addSubview(imageView25)
        
        self.view = view
    }
    
    @objc func Button1Pressed(_ sender:UIButton!) {
        One()
        masterCount = masterCount - 1
        if masterCount == 0 {
            Win()
        } else {
            Robot()
        }
    }
    
    @objc func Button3Pressed(_ sender:UIButton!) {
        Three()
        masterCount = masterCount - 3
        if masterCount == 0 {
            Win()
        } else {
            Robot()
        }
    }
    
    @objc func Button4Pressed(_ sender:UIButton!) {
        Four()
        masterCount = masterCount - 4
        if masterCount == 0 {
            Win()
        } else {
            Robot()
        }
    }
    
    var hintToggled = 0
    @objc func hintButtonPressed(_ sender:UIButton!) {
        if hintToggled == 0 {
            hintToggled = 1
            hintLabel.isHidden = false
        } else if hintToggled == 1 {
            hintToggled = 0
            hintLabel.isHidden = true
        }
    }
    
    func Robot() {
        sleep(1)
        if masterCount == 23 || masterCount == 21 || masterCount == 16 || masterCount == 14 || masterCount == 9 || masterCount == 7 || masterCount == 2 || masterCount == 0 {
            let randomInt = Int.random(in: 1...3)
                if masterCount == 2 {
                    One()
                    masterCount = masterCount - 1
                } else {
                    if randomInt == 1 {
                        One()
                        masterCount = masterCount - 1
                    } else if randomInt == 2 {
                        Three()
                        masterCount = masterCount - 3
                    } else if randomInt == 3 {
                        Four()
                        masterCount = masterCount - 4
                    }
            }
        } else {
            let randomNim = Int.random(in: 1...2)
            if masterCount == 24 {
                imageView24.image = UIImage(named: "24-E.png")
                masterCount = masterCount - 1
            } else if masterCount == 22 {
                imageView22.image = UIImage(named: "22-E.png")
                masterCount = masterCount - 1
            } else if masterCount == 20 {
                imageView20.image = UIImage(named: "20-E.png")
                imageView19.image = UIImage(named: "19-E.png")
                imageView18.image = UIImage(named: "18-E.png")
                imageView17.image = UIImage(named: "17-E.png")
                masterCount = masterCount - 4
            } else if masterCount == 19 {
                imageView19.image = UIImage(named: "19-E.png")
                imageView18.image = UIImage(named: "18-E.png")
                imageView17.image = UIImage(named: "17-E.png")
                masterCount = masterCount - 3
            } else if masterCount == 18 {
                imageView18.image = UIImage(named: "18-E.png")
                imageView17.image = UIImage(named: "17-E.png")
                imageView16.image = UIImage(named: "16-E.png")
                imageView15.image = UIImage(named: "15-E.png")
                masterCount = masterCount - 4
            } else if masterCount == 17 {
                if randomNim == 1 {
                    imageView17.image = UIImage(named: "17-E.png")
                    masterCount = masterCount - 1
                } else if randomNim == 2 {
                    imageView17.image = UIImage(named: "17-E.png")
                    imageView16.image = UIImage(named: "16-E.png")
                    imageView15.image = UIImage(named: "15-E.png")
                    masterCount = masterCount - 3
                }
            } else if masterCount == 15 {
                imageView15.image = UIImage(named: "15-E.png")
                masterCount = masterCount - 1
            } else if masterCount == 13 {
                imageView13.image = UIImage(named: "13-E.png")
                imageView12.image = UIImage(named: "12-E.png")
                imageView11.image = UIImage(named: "11-E.png")
                imageView10.image = UIImage(named: "10-E.png")
                masterCount = masterCount - 4
            } else if masterCount == 12 {
                imageView12.image = UIImage(named: "12-E.png")
                imageView11.image = UIImage(named: "11-E.png")
                imageView10.image = UIImage(named: "10-E.png")
                masterCount = masterCount - 3
            } else if masterCount == 11 {
                imageView11.image = UIImage(named: "11-E.png")
                imageView10.image = UIImage(named: "10-E.png")
                imageView9.image = UIImage(named: "9-E.png")
                imageView8.image = UIImage(named: "8-E.png")
                masterCount = masterCount - 4
            } else if masterCount == 10 {
                if randomNim == 1 {
                    imageView10.image = UIImage(named: "10-E.png")
                    masterCount = masterCount - 1
                } else if randomNim == 2 {
                    imageView10.image = UIImage(named: "10-E.png")
                    imageView9.image = UIImage(named: "9-E.png")
                    imageView8.image = UIImage(named: "8-E.png")
                    masterCount = masterCount - 3
                }
            } else if masterCount == 8 {
                imageView8.image = UIImage(named: "8-E.png")
                masterCount = masterCount - 1
            } else if masterCount == 6 {
                imageView6.image = UIImage(named: "6-E.png")
                imageView5.image = UIImage(named: "5-E.png")
                imageView4.image = UIImage(named: "4-E.png")
                imageView3.image = UIImage(named: "3-E.png")
                masterCount = masterCount - 4
                button3.isHidden = true
                button4.isHidden = true
            } else if masterCount == 5 {
                imageView5.image = UIImage(named: "5-E.png")
                imageView4.image = UIImage(named: "4-E.png")
                imageView3.image = UIImage(named: "3-E.png")
                masterCount = masterCount - 3
                button3.isHidden = true
                button4.isHidden = true
            } else if masterCount == 4 {
                imageView4.image = UIImage(named: "4-E.png")
                imageView3.image = UIImage(named: "3-E.png")
                imageView2.image = UIImage(named: "2-E.png")
                imageView1.image = UIImage(named: "1-E.png")
                masterCount = masterCount - 4
                Lose()
            } else if masterCount == 3 {
                imageView3.image = UIImage(named: "3-E.png")
                imageView2.image = UIImage(named: "2-E.png")
                imageView1.image = UIImage(named: "1-E.png")
                masterCount = masterCount - 3
                Lose()
            } else if masterCount == 1 {
                imageView1.image = UIImage(named: "1-E.png")
                masterCount = masterCount - 1
                Lose()
            }
        }
        if masterCount == 1 {
            button3.isHidden = true
            button4.isHidden = true
        }
    }
    
    func Win() {
        ButtonStatus(status: true)
        restartButton.isHidden = false
        WinLose.text = "Congratulations! You won. Play again?"
        WinLose.isHidden = false
        confetti.isHidden = false
    }
    
    func Lose() {
        ButtonStatus(status: true)
        restartButton.isHidden = false
        WinLose.text = "Nice try. Wanna try again?"
        WinLose.isHidden = false
    }
    
    @objc func restartButtonPressed(_ sender:UIButton!) {
        restartButton.isHidden = true
        WinLose.text = ""
        WinLose.isHidden = true
        ButtonStatus(status: false)
        confetti.isHidden = true
        imageView25.image = UIImage(named: "25-F.png")
        imageView24.image = UIImage(named: "24-F.png")
        imageView23.image = UIImage(named: "23-F.png")
        imageView22.image = UIImage(named: "22-F.png")
        imageView21.image = UIImage(named: "21-F.png")
        imageView20.image = UIImage(named: "20-F.png")
        imageView19.image = UIImage(named: "19-F.png")
        imageView18.image = UIImage(named: "18-F.png")
        imageView17.image = UIImage(named: "17-F.png")
        imageView16.image = UIImage(named: "16-F.png")
        imageView15.image = UIImage(named: "15-F.png")
        imageView14.image = UIImage(named: "14-F.png")
        imageView13.image = UIImage(named: "13-F.png")
        imageView12.image = UIImage(named: "12-F.png")
        imageView11.image = UIImage(named: "11-F.png")
        imageView10.image = UIImage(named: "10-F.png")
        imageView9.image = UIImage(named: "9-F.png")
        imageView8.image = UIImage(named: "8-F.png")
        imageView7.image = UIImage(named: "7-F.png")
        imageView6.image = UIImage(named: "6-F.png")
        imageView5.image = UIImage(named: "5-F.png")
        imageView4.image = UIImage(named: "4-F.png")
        imageView3.image = UIImage(named: "3-F.png")
        imageView2.image = UIImage(named: "2-F.png")
        imageView1.image = UIImage(named: "1-F.png")
        masterCount = 25
    }
    
    func ButtonStatus(status: Bool) {
        button1.isHidden = status
        button3.isHidden = status
        button4.isHidden = status
    }
    
    func One() {
        if masterCount == 25 {
            imageView25.image = UIImage(named: "25-E.png")
        } else if masterCount == 24 {
            imageView24.image = UIImage(named: "24-E.png")
        } else if masterCount == 23 {
            imageView23.image = UIImage(named: "23-E.png")
        } else if masterCount == 22 {
            imageView22.image = UIImage(named: "22-E.png")
        } else if masterCount == 21 {
            imageView21.image = UIImage(named: "21-E.png")
        } else if masterCount == 20 {
            imageView20.image = UIImage(named: "20-E.png")
        } else if masterCount == 19 {
            imageView19.image = UIImage(named: "19-E.png")
        } else if masterCount == 18 {
            imageView18.image = UIImage(named: "18-E.png")
        } else if masterCount == 17 {
            imageView17.image = UIImage(named: "17-E.png")
        } else if masterCount == 16 {
            imageView16.image = UIImage(named: "16-E.png")
        } else if masterCount == 15 {
            imageView15.image = UIImage(named: "15-E.png")
        } else if masterCount == 14 {
            imageView14.image = UIImage(named: "14-E.png")
        } else if masterCount == 13 {
            imageView13.image = UIImage(named: "13-E.png")
        } else if masterCount == 12 {
            imageView12.image = UIImage(named: "12-E.png")
        } else if masterCount == 11 {
            imageView11.image = UIImage(named: "11-E.png")
        } else if masterCount == 10 {
            imageView10.image = UIImage(named: "10-E.png")
        } else if masterCount == 9 {
            imageView9.image = UIImage(named: "9-E.png")
        } else if masterCount == 8 {
            imageView8.image = UIImage(named: "8-E.png")
        } else if masterCount == 7 {
            imageView7.image = UIImage(named: "7-E.png")
        } else if masterCount == 6 {
            imageView6.image = UIImage(named: "6-E.png")
        } else if masterCount == 5 {
            imageView5.image = UIImage(named: "5-E.png")
        } else if masterCount == 4 {
            imageView4.image = UIImage(named: "4-E.png")
        } else if masterCount == 3 {
            imageView3.image = UIImage(named: "3-E.png")
        } else if masterCount == 2 {
            imageView2.image = UIImage(named: "2-E.png")
        } else if masterCount == 1 {
            imageView1.image = UIImage(named: "1-E.png")
        }
    }
    
    func Three() {
        if masterCount == 25 {
            imageView25.image = UIImage(named: "25-E.png")
            imageView24.image = UIImage(named: "24-E.png")
            imageView23.image = UIImage(named: "23-E.png")
        } else if masterCount == 24 {
            imageView24.image = UIImage(named: "24-E.png")
            imageView23.image = UIImage(named: "23-E.png")
            imageView22.image = UIImage(named: "22-E.png")
        } else if masterCount == 23 {
            imageView23.image = UIImage(named: "23-E.png")
            imageView22.image = UIImage(named: "22-E.png")
            imageView21.image = UIImage(named: "21-E.png")
        } else if masterCount == 22 {
            imageView22.image = UIImage(named: "22-E.png")
            imageView21.image = UIImage(named: "21-E.png")
            imageView20.image = UIImage(named: "20-E.png")
        } else if masterCount == 21 {
            imageView21.image = UIImage(named: "21-E.png")
            imageView20.image = UIImage(named: "20-E.png")
            imageView19.image = UIImage(named: "19-E.png")
        } else if masterCount == 20 {
            imageView20.image = UIImage(named: "20-E.png")
            imageView19.image = UIImage(named: "19-E.png")
            imageView18.image = UIImage(named: "18-E.png")
        } else if masterCount == 19 {
            imageView19.image = UIImage(named: "19-E.png")
            imageView18.image = UIImage(named: "18-E.png")
            imageView17.image = UIImage(named: "17-E.png")
        } else if masterCount == 18 {
            imageView18.image = UIImage(named: "18-E.png")
            imageView17.image = UIImage(named: "17-E.png")
            imageView16.image = UIImage(named: "16-E.png")
        } else if masterCount == 17 {
            imageView17.image = UIImage(named: "17-E.png")
            imageView16.image = UIImage(named: "16-E.png")
            imageView15.image = UIImage(named: "15-E.png")
        } else if masterCount == 16 {
            imageView16.image = UIImage(named: "16-E.png")
            imageView15.image = UIImage(named: "15-E.png")
            imageView14.image = UIImage(named: "14-E.png")
        } else if masterCount == 15 {
            imageView15.image = UIImage(named: "15-E.png")
            imageView14.image = UIImage(named: "14-E.png")
            imageView13.image = UIImage(named: "13-E.png")
        } else if masterCount == 14 {
            imageView14.image = UIImage(named: "14-E.png")
            imageView13.image = UIImage(named: "13-E.png")
            imageView12.image = UIImage(named: "12-E.png")
        } else if masterCount == 13 {
            imageView13.image = UIImage(named: "13-E.png")
            imageView12.image = UIImage(named: "12-E.png")
            imageView11.image = UIImage(named: "11-E.png")
        } else if masterCount == 12 {
            imageView12.image = UIImage(named: "12-E.png")
            imageView11.image = UIImage(named: "11-E.png")
            imageView10.image = UIImage(named: "10-E.png")
        } else if masterCount == 11 {
            imageView11.image = UIImage(named: "11-E.png")
            imageView10.image = UIImage(named: "10-E.png")
            imageView9.image = UIImage(named: "9-E.png")
        } else if masterCount == 10 {
            imageView10.image = UIImage(named: "10-E.png")
            imageView9.image = UIImage(named: "9-E.png")
            imageView8.image = UIImage(named: "8-E.png")
        } else if masterCount == 9 {
            imageView9.image = UIImage(named: "9-E.png")
            imageView8.image = UIImage(named: "8-E.png")
            imageView7.image = UIImage(named: "7-E.png")
        } else if masterCount == 8 {
            imageView8.image = UIImage(named: "8-E.png")
            imageView7.image = UIImage(named: "7-E.png")
            imageView6.image = UIImage(named: "6-E.png")
        } else if masterCount == 7 {
            imageView7.image = UIImage(named: "7-E.png")
            imageView6.image = UIImage(named: "6-E.png")
            imageView5.image = UIImage(named: "5-E.png")
        } else if masterCount == 6 {
            imageView6.image = UIImage(named: "6-E.png")
            imageView5.image = UIImage(named: "5-E.png")
            imageView4.image = UIImage(named: "4-E.png")
        } else if masterCount == 5 {
            imageView5.image = UIImage(named: "5-E.png")
            imageView4.image = UIImage(named: "4-E.png")
            imageView3.image = UIImage(named: "3-E.png")
        } else if masterCount == 4 {
            imageView4.image = UIImage(named: "4-E.png")
            imageView3.image = UIImage(named: "3-E.png")
            imageView2.image = UIImage(named: "2-E.png")
        } else if masterCount == 3 {
            imageView3.image = UIImage(named: "3-E.png")
            imageView2.image = UIImage(named: "2-E.png")
            imageView1.image = UIImage(named: "1-E.png")
        }
    }
    
    func Four() {
        if masterCount == 25 {
            imageView25.image = UIImage(named: "25-E.png")
            imageView24.image = UIImage(named: "24-E.png")
            imageView23.image = UIImage(named: "23-E.png")
            imageView22.image = UIImage(named: "22-E.png")
        } else if masterCount == 24 {
            imageView24.image = UIImage(named: "24-E.png")
            imageView23.image = UIImage(named: "23-E.png")
            imageView22.image = UIImage(named: "22-E.png")
            imageView21.image = UIImage(named: "21-E.png")
        } else if masterCount == 23 {
            imageView23.image = UIImage(named: "23-E.png")
            imageView22.image = UIImage(named: "22-E.png")
            imageView21.image = UIImage(named: "21-E.png")
            imageView20.image = UIImage(named: "20-E.png")
        } else if masterCount == 22 {
            imageView22.image = UIImage(named: "22-E.png")
            imageView21.image = UIImage(named: "21-E.png")
            imageView20.image = UIImage(named: "20-E.png")
            imageView19.image = UIImage(named: "19-E.png")
        } else if masterCount == 21 {
            imageView21.image = UIImage(named: "21-E.png")
            imageView20.image = UIImage(named: "20-E.png")
            imageView19.image = UIImage(named: "19-E.png")
            imageView18.image = UIImage(named: "18-E.png")
        } else if masterCount == 20 {
            imageView20.image = UIImage(named: "20-E.png")
            imageView19.image = UIImage(named: "19-E.png")
            imageView18.image = UIImage(named: "18-E.png")
            imageView17.image = UIImage(named: "17-E.png")
        } else if masterCount == 19 {
            imageView19.image = UIImage(named: "19-E.png")
            imageView18.image = UIImage(named: "18-E.png")
            imageView17.image = UIImage(named: "17-E.png")
            imageView16.image = UIImage(named: "16-E.png")
        } else if masterCount == 18 {
            imageView18.image = UIImage(named: "18-E.png")
            imageView17.image = UIImage(named: "17-E.png")
            imageView16.image = UIImage(named: "16-E.png")
            imageView15.image = UIImage(named: "15-E.png")
        } else if masterCount == 17 {
            imageView17.image = UIImage(named: "17-E.png")
            imageView16.image = UIImage(named: "16-E.png")
            imageView15.image = UIImage(named: "15-E.png")
            imageView14.image = UIImage(named: "14-E.png")
        } else if masterCount == 16 {
            imageView16.image = UIImage(named: "16-E.png")
            imageView15.image = UIImage(named: "15-E.png")
            imageView14.image = UIImage(named: "14-E.png")
            imageView13.image = UIImage(named: "13-E.png")
        } else if masterCount == 15 {
            imageView15.image = UIImage(named: "15-E.png")
            imageView14.image = UIImage(named: "14-E.png")
            imageView13.image = UIImage(named: "13-E.png")
            imageView12.image = UIImage(named: "12-E.png")
        } else if masterCount == 14 {
            imageView14.image = UIImage(named: "14-E.png")
            imageView13.image = UIImage(named: "13-E.png")
            imageView12.image = UIImage(named: "12-E.png")
            imageView11.image = UIImage(named: "11-E.png")
        } else if masterCount == 13 {
            imageView13.image = UIImage(named: "13-E.png")
            imageView12.image = UIImage(named: "12-E.png")
            imageView11.image = UIImage(named: "11-E.png")
            imageView10.image = UIImage(named: "10-E.png")
        } else if masterCount == 12 {
            imageView12.image = UIImage(named: "12-E.png")
            imageView11.image = UIImage(named: "11-E.png")
            imageView10.image = UIImage(named: "10-E.png")
            imageView9.image = UIImage(named: "9-E.png")
        } else if masterCount == 11 {
            imageView11.image = UIImage(named: "11-E.png")
            imageView10.image = UIImage(named: "10-E.png")
            imageView9.image = UIImage(named: "9-E.png")
            imageView8.image = UIImage(named: "8-E.png")
        } else if masterCount == 10 {
            imageView10.image = UIImage(named: "10-E.png")
            imageView9.image = UIImage(named: "9-E.png")
            imageView8.image = UIImage(named: "8-E.png")
            imageView7.image = UIImage(named: "7-E.png")
        } else if masterCount == 9 {
            imageView9.image = UIImage(named: "9-E.png")
            imageView8.image = UIImage(named: "8-E.png")
            imageView7.image = UIImage(named: "7-E.png")
            imageView6.image = UIImage(named: "6-E.png")
        } else if masterCount == 8 {
            imageView8.image = UIImage(named: "8-E.png")
            imageView7.image = UIImage(named: "7-E.png")
            imageView6.image = UIImage(named: "6-E.png")
            imageView5.image = UIImage(named: "5-E.png")
        } else if masterCount == 7 {
            imageView7.image = UIImage(named: "7-E.png")
            imageView6.image = UIImage(named: "6-E.png")
            imageView5.image = UIImage(named: "5-E.png")
            imageView4.image = UIImage(named: "4-E.png")
        } else if masterCount == 6 {
            imageView6.image = UIImage(named: "6-E.png")
            imageView5.image = UIImage(named: "5-E.png")
            imageView4.image = UIImage(named: "4-E.png")
            imageView3.image = UIImage(named: "3-E.png")
        } else if masterCount == 5 {
            imageView5.image = UIImage(named: "5-E.png")
            imageView4.image = UIImage(named: "4-E.png")
            imageView3.image = UIImage(named: "3-E.png")
            imageView2.image = UIImage(named: "2-E.png")
        } else if masterCount == 4 {
            imageView4.image = UIImage(named: "4-E.png")
            imageView3.image = UIImage(named: "3-E.png")
            imageView2.image = UIImage(named: "2-E.png")
            imageView1.image = UIImage(named: "1-E.png")
        }
    }
    
}

extension UIView {
    func fadeIn(duration: TimeInterval = 1.0, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.alpha = 1.0
        }, completion: completion)
    }
    
    func fadeOut(duration: TimeInterval = 1.0, delay: TimeInterval = 3.0, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.alpha = 0.0
        }, completion: completion)
    }
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
