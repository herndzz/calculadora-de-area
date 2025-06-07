programa
{
    funcao inicio()
    {
        inteiro opcao
        real num1, num2, resultado
        real base, altura

        escreva("----------[ CALCULADORA SIMPLES ]----------\n")
        escreva("1. Adição (+)\n")
        escreva("2. Subtração (-)\n")
        escreva("3. Multiplicação (*)\n")
        escreva("4. Divisão (/)\n")
        escreva("5. Área do Retângulo\n")
        escreva("6. Área do Triângulo\n")
        escreva("Escolha uma opção: ")
        leia(opcao)

        // Operações matemáticas básicas
        se (opcao >= 1) e (opcao <= 4)
        {
            escreva("Digite o primeiro número: ")
            leia(num1)
            escreva("Digite o segundo número: ")
            leia(num2)

            se (opcao == 1)
            {
                resultado = num1 + num2
            }
            senao se (opcao == 2)
            {
                resultado = num1 - num2
            }
            senao se (opcao == 3)
            {
                resultado = num1 * num2
            }
            senao
            {
                se (num2 != 0)
                {
                    resultado = num1 / num2
                }
                senao
                {
                    escreva("Erro: Divisão por zero não permitida.\n")
                    resultado = 0
                }
            }

            escreva("Resultado: ", resultado, "\n")
        }

        // Cálculo da área do retângulo
        senao se (opcao == 5)
        {
            escreva("Digite a base do retângulo: ")
            leia(base)
            escreva("Digite a altura do retângulo: ")
            leia(altura)
            resultado = base * altura
            escreva("Área do retângulo: ", resultado, "\n")
        }

        // Cálculo da área do triângulo
        senao se (opcao == 6)
        {
            escreva("Digite a base do triângulo: ")
            leia(base)
            escreva("Digite a altura do triângulo: ")
            leia(altura)
            resultado = (base * altura) / 2
            escreva("Área do triângulo: ", resultado, "\n")
        }

        senao
        {
            escreva("Opção inválida.\n")
        }
    }
}