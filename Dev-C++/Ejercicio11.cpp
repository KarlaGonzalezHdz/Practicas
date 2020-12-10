/*
Realiza un ejercicio donde obtengas la sumatoria de todos los números
menores que n, empezando desde el número 1
*/

#include <iostream>
#include <locale.h>

using namespace std;

int main(){
	 setlocale (LC_ALL , "Spanish");
	 int suma=0, i , n;
	 
	 cout << "\nIngresa hasta que número deseas sumar:\t";
	 cin >> n;
	 
	 // utilizando for para sumar los números menores que n
	 for (i=1 ; i<n ; i++){
	 	//acomular la suma de todos los numeros
	 	suma = suma + i;
	 }
	 
	 cout << "\nLa suma de todos los números menores que " << n << ", es de: " <<suma;
}
