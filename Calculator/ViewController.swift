import UIKit

class ViewController: UIViewController {
    
    
    var buttonDel = UIButton(type: .system)
    var button0 = UIButton(type: .system)
    var buttonPunkt = UIButton(type: .system)
    var buttonEqual = UIButton(type: .system)
    var button1 = UIButton(type: .system)
    var button2 = UIButton(type: .system)
    var button3 = UIButton(type: .system)
    var buttonPlus = UIButton(type: .system)
    var button4 = UIButton(type: .system)
    var button5 = UIButton(type: .system)
    var button6 = UIButton(type: .system)
    var buttonMinus = UIButton(type: .system)
    var button7 = UIButton(type: .system)
    var button8 = UIButton(type: .system)
    var button9 = UIButton(type: .system)
    var buttonMulti = UIButton(type: .system)
    var buttonReset = UIButton(type: .system)
    var buttonChange = UIButton(type: .system)
    var buttonPercent = UIButton(type: .system)
    var buttonDivision = UIButton(type: .system)
    
    var infoField = UILabel()
    
    var numberOnInfoField: Double = 0
    var firstNumber: Double = 0
    var operation: Int = 0
    var mathSign: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.black
        
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
        
        view.addSubview(infoField)
        
        setupViews()
        
    }
    
    func setupViews() {
        
//MARK: - раскрашиваю кнопки
        
        buttonDel.backgroundColor = UIColor.darkGray
        button0.backgroundColor = UIColor.darkGray
        buttonPunkt.backgroundColor = UIColor.darkGray
        buttonEqual.backgroundColor = UIColor.orange
        button1.backgroundColor = UIColor.darkGray
        button2.backgroundColor = UIColor.darkGray
        button3.backgroundColor = UIColor.darkGray
        buttonPlus.backgroundColor = UIColor.orange
        button4.backgroundColor = UIColor.darkGray
        button5.backgroundColor = UIColor.darkGray
        button6.backgroundColor = UIColor.darkGray
        buttonMinus.backgroundColor = UIColor.orange
        button7.backgroundColor = UIColor.darkGray
        button8.backgroundColor = UIColor.darkGray
        button9.backgroundColor = UIColor.darkGray
        buttonMulti.backgroundColor = UIColor.orange
        buttonReset.backgroundColor = UIColor.systemGray
        buttonChange.backgroundColor = UIColor.systemGray
        buttonPercent.backgroundColor = UIColor.systemGray
        buttonDivision.backgroundColor = UIColor.orange
        
//MARK: - текст на кнопках
        
        buttonDel.setTitle("C", for: .normal)
        buttonDel.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 2/5)
        buttonDel.setTitleColor(.white, for: .normal)
        
        button0.setTitle("0", for: .normal)
        button0.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 1/2)
        button0.setTitleColor(.white, for: .normal)
        
        
        buttonPunkt.setTitle(",", for: .normal)
        buttonPunkt.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 1/2)
        buttonPunkt.setTitleColor(.white, for: .normal)
       
        buttonEqual.setTitle("=", for: .normal)
        buttonEqual.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 1/2)
        buttonEqual.setTitleColor(.white, for: .normal)
       
        button1.setTitle("1", for: .normal)
        button1.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 1/2)
        button1.setTitleColor(.white, for: .normal)
        
        button2.setTitle("2", for: .normal)
        button2.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 1/2)
        button2.setTitleColor(.white, for: .normal)
        
        button3.setTitle("3", for: .normal)
        button3.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 1/2)
        button3.setTitleColor(.white, for: .normal)
        
        buttonPlus.setTitle("+", for: .normal)
        buttonPlus.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 1/2)
        buttonPlus.setTitleColor(.white, for: .normal)
        
        button4.setTitle("4", for: .normal)
        button4.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 1/2)
        button4.setTitleColor(.white, for: .normal)
        
        button5.setTitle("5", for: .normal)
        button5.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 1/2)
        button5.setTitleColor(.white, for: .normal)
        
        button6.setTitle("6", for: .normal)
        button6.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 1/2)
        button6.setTitleColor(.white, for: .normal)
        
        buttonMinus.setTitle("−", for: .normal)
        buttonMinus.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 1/2)
        buttonMinus.setTitleColor(.white, for: .normal)
        
        button7.setTitle("7", for: .normal)
        button7.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 1/2)
        button7.setTitleColor(.white, for: .normal)
        
        button8.setTitle("8", for: .normal)
        button8.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 1/2)
        button8.setTitleColor(.white, for: .normal)
        
        button9.setTitle("9", for: .normal)
        button9.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 1/2)
        button9.setTitleColor(.white, for: .normal)
        
        buttonMulti.setTitle("×", for: .normal)
        buttonMulti.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 1/2)
        buttonMulti.setTitleColor(.white, for: .normal)
        
        buttonReset.setTitle("AC", for: .normal)
        buttonReset.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 2/5)
        buttonReset.setTitleColor(.black, for: .normal)
        
        buttonChange.setTitle("±", for: .normal)
        buttonChange.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 1/2, weight: .light)
        buttonChange.setTitleColor(.black, for: .normal)
        
        buttonPercent.setTitle("%", for: .normal)
        buttonPercent.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 2/5)
        buttonPercent.setTitleColor(.black, for: .normal)
        
        buttonDivision.setTitle("÷", for: .normal)
        buttonDivision.titleLabel?.font = .systemFont(ofSize: buttonRect().height * 1/2)
        buttonDivision.setTitleColor(.white, for: .normal)

//MARK: - добавление девочек
        
        
        button0.setBackgroundImage(UIImage(named: "girl0"), for: .highlighted)
        button1.setBackgroundImage(UIImage(named: "girl1"), for: .highlighted)
        button2.setBackgroundImage(UIImage(named: "girl2"), for: .highlighted)
        button3.setBackgroundImage(UIImage(named: "girl3"), for: .highlighted)
        button4.setBackgroundImage(UIImage(named: "girl4"), for: .highlighted)
        button5.setBackgroundImage(UIImage(named: "girl5"), for: .highlighted)
        button6.setBackgroundImage(UIImage(named: "girl6"), for: .highlighted)
        button7.setBackgroundImage(UIImage(named: "girl7"), for: .highlighted)
        button8.setBackgroundImage(UIImage(named: "girl8"), for: .highlighted)
        button9.setBackgroundImage(UIImage(named: "girl9"), for: .highlighted)
        
        button0.setTitle("", for: .highlighted)
        button1.setTitle("", for: .highlighted)
        button2.setTitle("", for: .highlighted)
        button3.setTitle("", for: .highlighted)
        button4.setTitle("", for: .highlighted)
        button5.setTitle("", for: .highlighted)
        button6.setTitle("", for: .highlighted)
        button7.setTitle("", for: .highlighted)
        button8.setTitle("", for: .highlighted)
        button9.setTitle("", for: .highlighted)
        
        button0.clipsToBounds = true
        button1.clipsToBounds = true
        button2.clipsToBounds = true
        button3.clipsToBounds = true
        button4.clipsToBounds = true
        button5.clipsToBounds = true
        button6.clipsToBounds = true
        button7.clipsToBounds = true
        button8.clipsToBounds = true
        button9.clipsToBounds = true
        
        
        
        
       // button0.configuration?.background.image?.draw(in: .infinite, blendMode: .clear, alpha: 0.5)
        
        
        
        
//MARK: - тэги кнопок
        button0.tag = 0
        button1.tag = 1
        button2.tag = 2
        button3.tag = 3
        button4.tag = 4
        button5.tag = 5
        button6.tag = 6
        button7.tag = 7
        button8.tag = 8
        button9.tag = 9
        buttonReset.tag = 10
        buttonChange.tag = 11
        buttonPercent.tag = 12
        buttonDivision.tag = 13
        buttonMulti.tag = 14
        buttonMinus.tag = 15
        buttonPlus.tag = 16
        buttonEqual.tag = 17
        buttonPunkt.tag = 18
        buttonDel.tag = 19
        
//MARK: - параметры отображения информации в поле ввода
        
        infoField.textAlignment = .right
        infoField.textColor = .white
        infoField.textRect(forBounds: infoField.bounds, limitedToNumberOfLines: 10)
        infoField.font = UIFont(name: "Helvetica Neue Thin", size: buttonRect().height)
        infoField.adjustsFontSizeToFitWidth = true
        

        
        
        
        
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
        buttonDel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70.0).isActive = true
        
        button0.translatesAutoresizingMaskIntoConstraints = false
        button0.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button0.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width + 20).isActive = true
        button0.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button0.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70.0).isActive = true
        
        buttonPunkt.translatesAutoresizingMaskIntoConstraints = false
        buttonPunkt.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        buttonPunkt.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 2 + 30).isActive = true
        buttonPunkt.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        buttonPunkt.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70.0).isActive = true
        
        buttonEqual.translatesAutoresizingMaskIntoConstraints = false
        buttonEqual.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        buttonEqual.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 3 + 40).isActive = true
        buttonEqual.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        buttonEqual.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70.0).isActive = true
        
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        button1.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height + -80.0).isActive = true
        
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width + 20).isActive = true
        button2.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height + -80.0).isActive = true
        
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 2 + 30).isActive = true
        button3.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button3.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height + -80.0).isActive = true
        
        buttonPlus.translatesAutoresizingMaskIntoConstraints = false
        buttonPlus.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        buttonPlus.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 3 + 40).isActive = true
        buttonPlus.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        buttonPlus.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height + -80.0).isActive = true
        
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        button4.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button4.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 2 + -90.0).isActive = true
        
        button5.translatesAutoresizingMaskIntoConstraints = false
        button5.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button5.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width + 20).isActive = true
        button5.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button5.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 2 + -90.0).isActive = true
        
        button6.translatesAutoresizingMaskIntoConstraints = false
        button6.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button6.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 2 + 30).isActive = true
        button6.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button6.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 2 + -90.0).isActive = true
        
        buttonMinus.translatesAutoresizingMaskIntoConstraints = false
        buttonMinus.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        buttonMinus.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 3 + 40).isActive = true
        buttonMinus.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        buttonMinus.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 2 + -90.0).isActive = true
        
        button7.translatesAutoresizingMaskIntoConstraints = false
        button7.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button7.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        button7.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button7.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 3 + -100.0).isActive = true
        
        button8.translatesAutoresizingMaskIntoConstraints = false
        button8.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button8.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width + 20).isActive = true
        button8.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button8.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 3 + -100.0).isActive = true
        
        button9.translatesAutoresizingMaskIntoConstraints = false
        button9.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        button9.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 2 + 30).isActive = true
        button9.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        button9.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 3 + -100.0).isActive = true
        
        buttonMulti.translatesAutoresizingMaskIntoConstraints = false
        buttonMulti.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        buttonMulti.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 3 + 40).isActive = true
        buttonMulti.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        buttonMulti.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 3 + -100.0).isActive = true
        
        buttonReset.translatesAutoresizingMaskIntoConstraints = false
        buttonReset.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        buttonReset.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        buttonReset.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        buttonReset.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 4 + -110.0).isActive = true
        
        buttonChange.translatesAutoresizingMaskIntoConstraints = false
        buttonChange.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        buttonChange.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width + 20).isActive = true
        buttonChange.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        buttonChange.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 4 + -110.0).isActive = true
        
        buttonPercent.translatesAutoresizingMaskIntoConstraints = false
        buttonPercent.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        buttonPercent.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 2 + 30).isActive = true
        buttonPercent.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        buttonPercent.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 4 + -110.0).isActive = true
        
        buttonDivision.translatesAutoresizingMaskIntoConstraints = false
        buttonDivision.widthAnchor.constraint(equalToConstant: buttonRect().width).isActive = true
        buttonDivision.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: buttonRect().width * 3 + 40).isActive = true
        buttonDivision.heightAnchor.constraint(equalToConstant: buttonRect().height).isActive = true
        buttonDivision.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 4 + -110.0).isActive = true
        
//MARK: - отрисовываю расположение поля ввода
        
        infoField.translatesAutoresizingMaskIntoConstraints = false
        infoField.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        infoField.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        infoField.heightAnchor.constraint(equalToConstant: buttonRect().height * 1.5).isActive = true
        infoField.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -buttonRect().height * 5 + -120.0).isActive = true
        
//MARK: - добавление реакции на нажатия кнопок
        
        button0.addTarget(self, action: #selector(click), for: .touchUpInside)
        button1.addTarget(self, action: #selector(click), for: .touchUpInside)
        button2.addTarget(self, action: #selector(click), for: .touchUpInside)
        button3.addTarget(self, action: #selector(click), for: .touchUpInside)
        button4.addTarget(self, action: #selector(click), for: .touchUpInside)
        button5.addTarget(self, action: #selector(click), for: .touchUpInside)
        button6.addTarget(self, action: #selector(click), for: .touchUpInside)
        button7.addTarget(self, action: #selector(click), for: .touchUpInside)
        button8.addTarget(self, action: #selector(click), for: .touchUpInside)
        button9.addTarget(self, action: #selector(click), for: .touchUpInside)
        
        buttonReset.addTarget(self, action: #selector(tapSigns), for: .touchUpInside)
        buttonChange.addTarget(self, action: #selector(tapSigns), for: .touchUpInside)
        buttonPercent.addTarget(self, action: #selector(tapSigns), for: .touchUpInside)
        buttonDivision.addTarget(self, action: #selector(tapSigns), for: .touchUpInside)
        buttonMulti.addTarget(self, action: #selector(tapSigns), for: .touchUpInside)
        buttonMinus.addTarget(self, action: #selector(tapSigns), for: .touchUpInside)
        buttonPlus.addTarget(self, action: #selector(tapSigns), for: .touchUpInside)
        buttonEqual.addTarget(self, action: #selector(tapSigns), for: .touchUpInside)
        buttonPunkt.addTarget(self, action: #selector(tapSigns), for: .touchUpInside)
        buttonDel.addTarget(self, action: #selector(tapSigns), for: .touchUpInside)
        
    }


//MARK: - методы работы кнопок
    
    @objc func click(_ sender: UIButton) {
        if mathSign == true {
            infoField.text = String(sender.tag)
            mathSign = false
        } else {
            infoField.text = (infoField.text ?? "") + String(sender.tag)
        }
        
        numberOnInfoField = Double(infoField.text!)!
    }
    
    @objc func tapSigns(_ sender: UIButton) {
        if infoField.text != "" && sender.tag != 10 && sender.tag != 17 && sender.tag != 19 {
            
            firstNumber = Double(infoField.text!) ?? 0
            
            if sender.tag == 13 { //Деление
                infoField.text = "/"
            }
            else if sender.tag == 14 { //Умножение
                infoField.text = "x"
            }
            else if sender.tag == 15 { //Вычитание
                infoField.text = "-"
            }
            else if sender.tag == 16 { //Сложение
                infoField.text = "+"
            }
            
            else if sender.tag == 11 { //Изменение знака
                if Double(infoField.text!)! > 0 {
                    infoField.text = String(-Double(infoField.text!)!)
                } else if Double(infoField.text!)! < 0 {
                    infoField.text = String(-Double(infoField.text!)!)
                }
            }
            
            mathSign = true
            operation = sender.tag
        }
        
        else if sender.tag == 18 {
            infoField.text?.append(".")
        }
        
        else if sender.tag == 17 { //Кнопка равно
            if operation == 13 {
                infoField.text = String(firstNumber / numberOnInfoField)
            }
            else if operation == 14 {
                infoField.text = String(firstNumber * numberOnInfoField)
            }
            else if operation == 15 {
                infoField.text = String(firstNumber - numberOnInfoField)
            }
            else if operation == 16 {
                infoField.text = String(firstNumber + numberOnInfoField)
            }
            else if operation == 12 {
                infoField.text = String(numberOnInfoField * 1/100)
            }
        }
        
        else if sender.tag == 10 {
            infoField.text = ""
            firstNumber = 0
            numberOnInfoField = 0
            operation = 0
        }
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

