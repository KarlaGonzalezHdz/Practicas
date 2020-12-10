/* 
Realiza un código en C++ , donde obtengas el área de un circulo, tomando
en cuenta que las variables deben estar declaradas como tipos reales e 
imprime el resultado.
*/

#include <iostream>
#include <windows.h>
#include <locale.h>

using namespace std;

int main()
{
	
	setlocale(LC_ALL, "Spanish");
	 //declaras variables
	float radio , area , pi=3.1416;
	
	//instrucciones
	cout << "\n\nEjercicio 3 \n\n";
	cout << "\nIngrese el valor de radio del circulo: ";
	cin >> radio;
	area = pi * (radio*radio);
	
	//imprimes resultado
	cout << "\n\nEl área del circulo es igual a: " << area << "\n";
	system("pause");
}
