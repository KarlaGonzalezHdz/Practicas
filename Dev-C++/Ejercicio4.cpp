/*
Realiza un programa un lenguaje C, donde obtengas el a�o 
de nacimiento de una persona a partir de su edad e imprime
su a�o de nacimiento
*/

#include <iostream>
#include <locale.h>
#include <windows.h>


using namespace std;

int main() 
{
	setlocale(LC_ALL, "Spanish");
	
	int edad, anio_nac , anio_act;
	
	// cout mensaje de salida
	// cin su funcion es guardar los valores dentro de las variables
	
	cout << "\nEjercicio 4 \n\n";
	cout << "\nIngresa tu edad: ";
	cin >> edad;
	cout << "\nIngresa el a�o: ";
	cin >> anio_act;
	
	anio_nac = anio_act - edad;
	
	// imprimir el resultado
	
	cout << "El a�o de nacimiento del usuario es: " << anio_nac << "\n";
	system("pause");

}
