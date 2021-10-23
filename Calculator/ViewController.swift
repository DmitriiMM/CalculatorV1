import UIKit

class ViewController: UIViewController {
    
    
    var buttonDel = UIButton()
    var button0 = UIButton()
    var buttonPunkt = UIButton()
    var buttonEqual = UIButton()
    var button1 = UIButton()
    var button2 = UIButton()
    var button3 = UIButton()
    var buttonPlus = UIButton()
    var button4 = UIButton()
    var button5 = UIButton()
    var button6 = UIButton()
    var buttonMinus = UIButton()
    var button7 = UIButton()
    var button8 = UIButton()
    var button9 = UIButton()
    var buttonMulti = UIButton()
    var buttonReset = UIButton()
    var buttonChange = UIButton()
    var buttonPercent = UIButton()
    var buttonDivision = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        view.backgroundColor = UIColor.darkGray
        
        view.addSubview(buttonDel)
        view.addSubview(button0)
        view.addSubview(buttonPunkt)
        view.addSubview(buttonEqual)
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(buttonPlus)
        view.addSubview(button4)
        view.addSubview(button5)
        view.addSubview(button6)
        view.addSubview(buttonMinus)
        view.addSubview(button7)
        view.addSubview(button8)
        view.addSubview(button9)
        view.addSubview(buttonMulti)
        view.addSubview(buttonReset)
        view.addSubview(buttonChange)
        view.addSubview(buttonPercent)
        view.addSubview(buttonDivision)
        
        setupViews()
    }
    
    func setupViews() {
        
//MARK: - раскрашиваю кнопки
        
        buttonDel.backgroundColor = UIColor.orange
        button0.backgroundColor = UIColor.orange
        buttonPunkt.backgroundColor = UIColor.orange
        buttonEqual.backgroundColor = UIColor.orange
        button1.backgroundColor = UIColor.orange
        button2.backgroundColor = UIColor.orange
        button3.backgroundColor = UIColor.orange
        buttonPlus.backgroundColor = UIColor.orange
        button4.backgroundColor = UIColor.orange
        button5.backgroundColor = UIColor.orange
        button6.backgroundColor = UIColor.orange
        buttonMinus.backgroundColor = UIColor.orange
        button7.backgroundColor = UIColor.orange
        button8.backgroundColor = UIColor.orange
        button9.backgroundColor = UIColor.orange
        buttonMulti.backgroundColor = UIColor.orange
        buttonReset.backgroundColor = UIColor.orange
        buttonChange.backgroundColor = UIColor.orange
        buttonPercent.backgroundColor = UIColor.orange
        buttonDivision.backgroundColor = UIColor.orange
        
//MARK: - закругляю кнопки
        
        buttonDel.layer.cornerRadius = buttonRect().width / 2
        button0.layer.cornerRadius = buttonRect().width / 2
        buttonPunkt.layer.cornerRadius = buttonRect().width / 2
        buttonEqual.layer.cornerRadius = buttonRect().width / 2
        button1.layer.cornerRadius = buttonRect().width / 2
        button2.layer.cornerRadius = buttonRect().width / 2
        button3.layer.cornerRadius = buttonRect().width / 2
        buttonPlus.layer.cornerRadius = buttonRect().width / 2
        button4.layer.cornerRadius = buttonRect().width / 2
        button5.layer.cornerRadius = buttonRect().width / 2
        button6.layer.cornerRadius = buttonRect().width / 2
        buttonMinus.layer.cornerRadius = buttonRect().width / 2
        button7.layer.cornerRadius = buttonRect().width / 2
        button8.layer.cornerRadius = buttonRect().width / 2
        button9.layer.cornerRadius = buttonRect().width / 2
        buttonMulti.layer.cornerRadius = buttonRect().width / 2
        buttonReset.layer.cornerRadius = buttonRect().width / 2
        buttonChange.layer.cornerRadius = buttonRect().width / 2
        buttonPercent.layer.cornerRadius = buttonRect().width / 2
        buttonDivision.layer.cornerRadius = buttonRect().width / 2
        
//MARK: - отрисовываю расположение кнопок
        
        buttonDel.translatesAutoresizingMaskIntoConstraints = false
        buttonDel.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        buttonDel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10.0).isActive = true
        buttonDel.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        buttonDel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10.0).isActive = true
        
        button0.translatesAutoresizingMaskIntoConstraints = false
        button0.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button0.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width + 20).isActive = true
        button0.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button0.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10.0).isActive = true
        
        buttonPunkt.translatesAutoresizingMaskIntoConstraints = false
        buttonPunkt.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        buttonPunkt.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 2 + 30).isActive = true
        buttonPunkt.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        buttonPunkt.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10.0).isActive = true
        
        buttonEqual.translatesAutoresizingMaskIntoConstraints = false
        buttonEqual.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        buttonEqual.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 3 + 40).isActive = true
        buttonEqual.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        buttonEqual.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10.0).isActive = true
        
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        button1.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height + -20.0).isActive = true
        
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width + 20).isActive = true
        button2.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height + -20.0).isActive = true
        
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 2 + 30).isActive = true
        button3.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button3.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height + -20.0).isActive = true
        
        buttonPlus.translatesAutoresizingMaskIntoConstraints = false
        buttonPlus.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        buttonPlus.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 3 + 40).isActive = true
        buttonPlus.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        buttonPlus.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height + -20.0).isActive = true
        
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        button4.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button4.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 2 + -30.0).isActive = true
        
        button5.translatesAutoresizingMaskIntoConstraints = false
        button5.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button5.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width + 20).isActive = true
        button5.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button5.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 2 + -30.0).isActive = true
        
        button6.translatesAutoresizingMaskIntoConstraints = false
        button6.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button6.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 2 + 30).isActive = true
        button6.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button6.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 2 + -30.0).isActive = true
        
        buttonMinus.translatesAutoresizingMaskIntoConstraints = false
        buttonMinus.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        buttonMinus.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 3 + 40).isActive = true
        buttonMinus.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        buttonMinus.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 2 + -30.0).isActive = true
        
        button7.translatesAutoresizingMaskIntoConstraints = false
        button7.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button7.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        button7.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button7.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 3 + -40.0).isActive = true
        
        button8.translatesAutoresizingMaskIntoConstraints = false
        button8.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button8.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width + 20).isActive = true
        button8.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button8.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 3 + -40.0).isActive = true
        
        button9.translatesAutoresizingMaskIntoConstraints = false
        button9.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button9.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 2 + 30).isActive = true
        button9.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button9.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 3 + -40.0).isActive = true
        
        buttonMulti.translatesAutoresizingMaskIntoConstraints = false
        buttonMulti.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        buttonMulti.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 3 + 40).isActive = true
        buttonMulti.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        buttonMulti.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 3 + -40.0).isActive = true
        
        buttonReset.translatesAutoresizingMaskIntoConstraints = false
        buttonReset.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        buttonReset.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        buttonReset.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        buttonReset.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 4 + -50.0).isActive = true
        
        buttonChange.translatesAutoresizingMaskIntoConstraints = false
        buttonChange.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        buttonChange.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width + 20).isActive = true
        buttonChange.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        buttonChange.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 4 + -50.0).isActive = true
        
        buttonPercent.translatesAutoresizingMaskIntoConstraints = false
        buttonPercent.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        buttonPercent.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 2 + 30).isActive = true
        buttonPercent.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        buttonPercent.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 4 + -50.0).isActive = true
        
        buttonDivision.translatesAutoresizingMaskIntoConstraints = false
        buttonDivision.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        buttonDivision.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 3 + 40).isActive = true
        buttonDivision.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        buttonDivision.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 4 + -50.0).isActive = true
        
    }

//MARK: - получаю универсальный размер типовой кнопки
    
    func buttonRect() -> CGSize {
        let screenWidth = UIScreen.main.bounds.width
        let space = 10.0
        let buttonWidth = (screenWidth - 5 * space) / 4
        //   let screenHeight = UIScreen.main.bounds.height
        //   let buttonHeight = (screenHeight - 8 * space) / 7
        let buttonHeight = buttonWidth
        
        return CGSize(width: buttonWidth, height: buttonHeight)
    }
    
    //    func buttonWidth() -> CGFloat {
    //        let buttonWidth = buttonRect().width
    //        return buttonWidth
    //    }
    
    
}

