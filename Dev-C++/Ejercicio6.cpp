/*
Realiza un código en C++ , donde obtengas el nombre del usuario, su edad 
y muestra un mensaje de felicitacion
*/

#include <iostream>
#include <locale.h>
#include <windows.h>

using namespace std;

int main()
{
	setlocale (LC_ALL, "Spanish");
	
	char nombre[30]; //número máximo de caracteres a guardar en la variable
	int edad;
	
	cout << "\n\nIngresa tu nombre: \t";
	cin.get(nombre, 30);
	
	cout << "\n\nIngresa tu edad: \t";
	cin >> edad;
	
	cout << "Felicidades... " <<  nombre << ", usted tiene " << edad << " años.\n\n";
	
	system("pause");
	 
}
