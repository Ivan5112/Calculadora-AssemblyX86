#include <iostream>
using namespace std;

extern "C" int menu(int num1, int num2, int opcion);

int main() {
    bool salir = false;
    int num1, num2, resultado, opcion; 

    while(salir == false){
        
        cout << "\t Menú" << endl;
        cout << "Seleccione una opción:" << endl;
        cout << "1- Suma" << endl;
        cout << "2- Resta" << endl;
        cout << "3- Multiplicación" << endl;
        cout << "4- División" << endl;
        cout << "5- Salir" << endl;
        cout << "----------------------------" << endl;

        cin >> opcion;

    
        if (opcion >= 1 && opcion <= 4) {
            cout << "Ingrese el primer número: ";
            cin >> num1;
            cout << "Ingrese el segundo número: ";
            cin >> num2;
            cout << "----------------------------" << endl;

            resultado = menu(num1, num2, opcion);
            cout << "El resultado es: " << resultado << "\n";
            cout << "----------------------------" << endl;
        } else if (opcion == 5) {
            cout << "Saliendo del programa." << endl;
            salir = true;
        } else {
            cout << "Opción no válida." << endl;
        }
    }
    return 0;
}