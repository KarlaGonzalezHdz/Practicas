/*
Realiza un programa en C , donde obtengas la calificaci�n final 
del m�dulo, si calificaci�n es mayor o igual a 70 imprime
"Pasaste al siguiente m�dulo", de lo contrario  no pasaste la materia"
*/

#include <iostream>
#include <locale.h>

using namespace std;

int main()
{
	setlocale (LC_ALL, "Spanish" );

	int cali_final;
	
	cout << "\n\n M�dulo 2";
	
	cout << "\n\nIngrese su calificaci�n final: ";
	
	cin >> cali_final;
	
	if(cali_final>=70) {
		
		cout << "\nFelicidades, pasaste al siguiente m�dulo\n";
	
	} else {
		 
		cout << "\nNo pasaste al siguiente m�dulo.\n";
	}	
		
	return 0;	
}
