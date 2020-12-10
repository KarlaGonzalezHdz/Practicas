/*
Realiza un programa en C , donde obtengas la calificación final 
del módulo, si calificación es mayor o igual a 70 imprime
"Pasaste al siguiente módulo", de lo contrario  no pasaste la materia"
*/

#include <iostream>
#include <locale.h>

using namespace std;

int main()
{
	setlocale (LC_ALL, "Spanish" );

	int cali_final;
	
	cout << "\n\n Módulo 2";
	
	cout << "\n\nIngrese su calificación final: ";
	
	cin >> cali_final;
	
	if(cali_final>=70) {
		
		cout << "\nFelicidades, pasaste al siguiente módulo\n";
	
	} else {
		 
		cout << "\nNo pasaste al siguiente módulo.\n";
	}	
		
	return 0;	
}
