/*
5. Realiza un programa  donde obtengas cuatro letras e imprimelas
*/

#include <iostream>
#include <locale.h>
#include <windows.h>

using namespace std;

int main()
{
	setlocale (LC_ALL, "Spanish");
	
	char c1, c2, c3, c4;
	
	cout << "\nEjercicio 5\n";
	cout << "\nIntroduce 4 caracteres:\t";
	cin.get(c1);
	cin.get(c2);
	cin.get(c3);
	cin.get(c4);
	
	//impresión de los 4 caracteres pedidos al usuario
	
	cout << "\nEl resultado de los 4 caracteres son:\t";
	cout.put(c1);
	cout.put(c2);
	cout.put(c3);
	cout.put(c4);
	cout << "\n";
	system("pause");
	
	
}
