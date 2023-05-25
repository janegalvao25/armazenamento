//funcionalidades básicas e classes 
import Foundation

var lista_senhas:[senhas] = 

class Senha {
    private var itens: [String]
    
    init() {
        self.itens = []
    }
    
    func criarSenha() {
        self.itens = []
    }
    
    func inserir(_ item: String) {
        self.itens.append(item)
    }
    
    func retirar() -> String? {
        if !vazio() {
            return self.itens.remove(at: 0)
        }
        return nil
    }
    
    func listar() -> [String] {
        return self.itens
    }
    
    func vazio() -> Bool {
        return self.itens.isEmpty
    }
}
 
var senha = Senha()

while true {
    print("Selecione a operação:")
    print("1 - Inserir Senha")
    print("2 - Retirar Senha")
    print("3 - Listar Senhas")
    print("9 - Sair")
    
    if let opcao = readLine() {
        switch opcao {
        case "1":
            print("Digite a senha:")
            if let senhaDigitada = readLine() {
                senha.inserir(senhaDigitada)
                print("Senha inserida com sucesso!")
            } else {
                print("Senha inválida!")
            }
        case "2":
            if let senhaRetirada = senha.retirar() {
                print("Senha retirada: \(senhaRetirada)")
            } else {
                print("Não há senhas disponíveis!")
            }
        case "3":
            let senhas = senha.listar()
            if !senhas.isEmpty {
                print("Senhas:")
                for senha in senhas {
                    print(senha)
                }
            } else {
                print("Não há senhas cadastradas!")
            }
        case "9":
            break
        default:
            print("Opção inválida!")
        }
        
        if opcao == "9" {
            break
        }
    }
}
