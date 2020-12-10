/*
1.Diseñe un programa en C, que calcule las compras totales, 
realizadas por un grupo de 20 amas de casa. Luego con esa información 
obtenga la media.
*/



#include <iostream>
#include <locale.h>
#include <windows.h>

using namespace std;

int main (){
	 setlocale(LC_ALL, "Spanish");
	 int i=1; 
	 float compra, suma=0 , media;
	 
	 while(i<=20){
	 	cout << "\nIngresa el total de la compra de la persona #  " << i << "  $\t";
	 	cin >> compra;
	 	suma += compra;
	 	
		i= i + 1;
	 }
	 media = suma / 20;
	 
	 cout << "\nEl total de todas las compras fue de: " << suma << "\n";
	 cout << "\nLa media obtenida de las 20 compras " << media << "\n";
	 
	 return 0;
	 
}
