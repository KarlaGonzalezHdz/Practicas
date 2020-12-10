/* Pedir al usuario que tabla desea imprimir y vuelve a
preguntar al final si desea imprimir otra tabla*/

#include <iostream>
#include <locale.h>
#include <windows.h>

using namespace std;

int main(){
	setlocale (LC_ALL, "Spanish");
	int i, regresar=1;
	float tabla, resultado;
	
	while(regresar==1){
		cout << "\nIngresar el número de la tabla que desea imprimir:\t";
		cin >> tabla;
		 
		 for (i=1; i<=10 ; i++){
		 	
		 	resultado = tabla * i;
		 	
		 	cout << "\n" << tabla << " * " << i << " = " << resultado << "\n" ;
			  
		 }
		 
	 	cout << "\n ¿Desea ingresar otra tabla? \n (1) Sí \n (0) No\n ";
		cin >> regresar; 	 
	}
	
	cout << "\nFin del ejercicio\n";
	system("pause");
	
}

