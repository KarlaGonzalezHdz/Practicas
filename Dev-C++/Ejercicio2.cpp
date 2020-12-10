/* 

Ejercicio 2 , realiza un código en C++ , donde obtengas la sumatoria de dos
numeros enteros e imprime el resultado. 

*/

#include <iostream>
#include <windows.h>
#include <locale.h> // libreria para agregar tíldes, la letra ñ o simbolos de inicio

using namespace std;

int main()
{
	setlocale(LC_ALL, "Spanish");
		
	/* DECLARAR VARIABLES
	tipo 1: 
		tipo de dato + nombrevariable;
			Ejemplo: 
				int base;
				int altura;
				int area;

	tipo 2: 
		tipo de datos + nombre de variable;
			Ejemplo: float base, altura, area;
	
	*/
	
	//declaracion de variables
	int num1, num2, respuesta;
	
	//instrucciones
	cout << "\n\nEjercicio 2\n\n";
	cout << "\nIngresa el primer número: ";
	cin >> num1; //para guardar valor en la variable
	cout << "\nIngresa el segundo número: ";
	cin >> num2;
	
	//realizar el proceso
	respuesta = num1 + num2;
	
	//imprimir resultado
	cout << "\nEl resultado de la sumatoria de los numeros es igual a: " << respuesta; 
	cout << "\n";
	system("pause");	
}
