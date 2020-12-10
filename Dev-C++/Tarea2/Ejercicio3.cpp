/* 3.	Imprime de los primeros 50 números de la serie del 4 
y pide al final de ejercicio al usuario si desea volver a realizar el ejercicio.*/

#include <iostream>
#include <locale.h>
#include <windows.h>

using namespace std;

int main(){
	setlocale (LC_ALL, "Spanish");
	int i, regresar;
	float resultado;
	
	do{
		 cout << "LOS PRIMEROS 50 NÚMEROS DE LA SERIE DEL 4\n";
		 for (i=1; i<=50 ; i++){
		 	
		 	resultado = 4 * i;
		 	
		 	cout <<  resultado << "\n" ;
			  
		 }
		 
	 	cout << "¿Desea ejecutar el ejercicio otra vez? \n (1) Sí \n (0) No\n ";
		cin >> regresar; 
			 
	}	while(regresar==1);
	cout << "Fin del ejercicio\n";
	system("pause");
	
}
