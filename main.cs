#include <iostream>

using namespace std;

int main() {
    int opcao;
    double num1, num2, resultado;
    double base, altura;

    cout << "----------[ CALCULADORA SIMPLES ]----------" << endl;
    cout << "1. Adição (+)" << endl;
    cout << "2. Subtração (-)" << endl;
    cout << "3. Multiplicação (*)" << endl;
    cout << "4. Divisão (/)" << endl;
    cout << "5. Área do Retângulo" << endl;
    cout << "6. Área do Triângulo" << endl;
    cout << "Escolha uma opção: ";
    cin >> opcao;

    // Operações matemáticas básicas
    if (opcao >= 1 && opcao <= 4) {
        cout << "Digite o primeiro número: ";
        cin >> num1;
        cout << "Digite o segundo número: ";
        cin >> num2;

        if (opcao == 1) {
            resultado = num1 + num2;
        } else if (opcao == 2) {
            resultado = num1 - num2;
        } else if (opcao == 3) {
            resultado = num1 * num2;
        } else {
            if (num2 != 0) {
                resultado = num1 / num2;
            } else {
                cout << "Erro: Divisão por zero não permitida." << endl;
                resultado = 0;
            }
        }

        cout << "Resultado: " << resultado << endl;
    }
    // Cálculo da área do retângulo
    else if (opcao == 5) {
        cout << "Digite a base do retângulo: ";
        cin >> base;
        cout << "Digite a altura do retângulo: ";
        cin >> altura;
        resultado = base * altura;
        cout << "Área do retângulo: " << resultado << endl;
    }
    // Cálculo da área do triângulo
    else if (opcao == 6) {
        cout << "Digite a base do triângulo: ";
        cin >> base;
        cout << "Digite a altura do triângulo: ";
        cin >> altura;
        resultado = (base * altura) / 2;
        cout << "Área do triângulo: " << resultado << endl;
    }
    // Opção inválida
    else {
        cout << "Opção inválida." << endl;
    }

    return 0;
}
