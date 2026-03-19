import random

def jogar():
    numero_secreto = random.randint(1, 10)
    tentativas_restantes = 5
    tentativa_atual = 1

    print("--- Bem-vindo ao Jogo de Adivinhação! ---")
    print("Tente adivinhar o número entre 1 e 10.")

    while tentativa_atual <= tentativas_restantes:
        print(f"\nTentativa {tentativa_atual} de {tentativas_restantes}")
        
        try:
            chute = int(input("Digite seu palpite: "))
        except ValueError:
            print("Por favor, digite um número válido.")
            continue

        if chute == numero_secreto:
            print(f"Parabéns! Você acertou o número {numero_secreto}!")
            break
        
        # Lógica do Bônus: Diferença de apenas 1 unidade
        elif abs(chute - numero_secreto) == 1:
            print("QUASE! Por estar tão perto, você ganhou +1 tentativa bônus!")
            tentativas_restantes += 1
            
        if chute < numero_secreto:
            print("O número secreto é maior.")
        else:
            print("O número secreto é menor.")

        tentativa_atual += 1
    else:
        print(f"\nGame Over! O número era {numero_secreto}.")

if __name__ == "__main__":
    jogar()
