/*
Realiza un ejercicio donde obtengas la sumatoria de todos los n�meros
menores que n, empezando desde el n�mero 1
*/

#include <iostream>
#include <locale.h>

using namespace std;

int main(){
	 setlocale (LC_ALL , "Spanish");
	 int suma=0, i , n;
	 
	 cout << "\nIngresa hasta que n�mero deseas sumar:\t";
	 cin >> n;
	 
	 // utilizando for para sumar los n�meros menores que n
	 for (i=1 ; i<n ; i++){
	 	//acomular la suma de todos los numeros
	 	suma = suma + i;
	 }
	 
	 cout << "\nLa suma de todos los n�meros menores que " << n << ", es de: " <<suma;
}
