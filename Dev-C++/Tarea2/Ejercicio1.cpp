/*
1.	Muestre un programa en c, que imprima en pantalla los números 
desde un valor inicial, hasta un valor final, ingresados por el usuario, 
tanto en forma descendente y pregunta al final de ejercicio si se decía
ejecutar de nuevo el programa.
*/

#include <iostream>
#include <windows.h>
#include <locale.h>

using namespace std;

int main(){
	int valor_i , valor_f , i , regresar;
	
	do{
		cout << "\nIngresa el valor inicial\n";
		cin >> valor_i;
		
		cout << "\nIngresa el valor final\n";
		cin >> valor_f;
		
		cout << "\nForma Ascendete\n";
		for(i=valor_i ; i<=valor_f; i++){
			
			cout << "\nNumero: " << i;
		}
		
		cout << "\nForma Descendente\n";
		for(i=valor_f ; i>=valor_i; i--){
			
			cout << "\nNumero: " << i;
		}
		
		cout << "\n¿Desea regresar de nuevo al programa? (1) - Si, (0) -No\n";
		cin >> regresar;
		
	} while (regresar == 1);
	
	cout << "\nEl ejercicio ha terminado...";
}



