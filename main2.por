programa {
  const real PI = 3.1416

  funcao soma(real a, real b) -> real {
    retorne a + b
  }

  funcao subtracao(real a, real b) -> real {
    retorne a - b
  }

  funcao multiplicacao(real a, real b) -> real {
    retorne a * b
  }

  funcao divisao(real a, real b) -> real {
    se (b != 0) entao
      retorne a / b
    senao
      escreva("Erro: Divisão por zero não permitida.\n")
      retorne 0
    fimse
  }

  funcao calcularAreaRetangulo(real base, real altura) -> real {
    retorne base * altura
  }

  funcao calcularAreaTriangulo(real base, real altura) -> real {
    retorne (base * altura) / 2
  }

  funcao calcularAreaTrapezio(real baseMaior, real baseMenor, real altura) -> real {
    retorne ((baseMaior + baseMenor) * altura) / 2
  }

  funcao calcularAreaCirculo(real raio) -> real {
    retorne PI * (raio * raio)
  }

  funcao inicio() {
    inteiro opcao
    real num1, num2, resultado
    real base, altura, raio, baseMaior

    escreva("----------[ CALCULADORA DE ÁREA - MENU DE AÇÕES ]----------\n")
    escreva("1. ADIÇÃO (+)\n")
    escreva("2. SUBTRAÇÃO (-)\n")
    escreva("3. MULTIPLICAÇÃO (*)\n")
    escreva("4. DIVISÃO (/)\n")
    escreva("5. RETÂNGULO\n")
    escreva("6. TRIÂNGULO\n")
    escreva("7. TRAPÉZIO\n")
    escreva("8. CÍRCULO\n")
    escreva("Escolha uma opção: ")
    leia(opcao)

    se (opcao >= 1 e opcao <= 4) entao
      escreva("Digite o primeiro número: ")
      leia(num1)
      escreva("Digite o segundo número: ")
      leia(num2)

      se (opcao == 1) resultado = soma(num1, num2)
      senao se (opcao == 2) resultado = subtracao(num1, num2)
      senao se (opcao == 3) resultado = multiplicacao(num1, num2)
      senao se (opcao == 4) resultado = divisao(num1, num2)

      escreva("Resultado: ", resultado, "\n")

    senao se (opcao == 5) entao
      escreva("Digite a base do retângulo: ")
      leia(base)
      escreva("Digite a altura do retângulo: ")
      leia(altura)
      escreva("Área do retângulo: ", calcularAreaRetangulo(base, altura), "\n")

    senao se (opcao == 6) entao
      escreva("Digite a base do triângulo: ")
      leia(base)
      escreva("Digite a altura do triângulo: ")
      leia(altura)
      escreva("Área do triângulo: ", calcularAreaTriangulo(base, altura), "\n")

    senao se (opcao == 7) entao
      escreva("Digite a base maior do trapézio: ")
      leia(baseMaior)
      escreva("Digite a base menor do trapézio: ")
      leia(base)
      escreva("Digite a altura do trapézio: ")
      leia(altura)
      escreva("Área do trapézio: ", calcularAreaTrapezio(baseMaior, base, altura), "\n")

    senao se (opcao == 8) entao
      escreva("Digite o raio do círculo: ")
      leia(raio)
      escreva("Área do círculo: ", calcularAreaCirculo(raio), "\n")

    senao
      escreva("Opção inválida.\n")
    fimse
  }
}