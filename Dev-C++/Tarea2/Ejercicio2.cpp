#include <iostream>
#include <locale.h>
#include <windows.h>

using namespace std;

int main(){
	setlocale (LC_ALL, "Spanish");
	int num1 , num2 , suma=0, regresar, positivos=0 , negativos=0 , veces=0;
	
	do{
	system("cls");
	cout << "\nIngresa el primer numero: ";
	cin >> num1;
	
	cout <<"\nIngresa el segundo numero: ";
	cin >> num2;	
	
	suma = num1 + num2;
	
	if(suma>=0){
		positivos = positivos + 1;
	} else 
	{
		negativos = negativos + 1;
	}
	
	cout << "\nEl resultado de la suma es: " << suma;
	veces = veces + 1;
	
	cout << "\n ¿Desea ingresar otra tabla? \n (1) Sí \n (0) No\n ";
	cin >> regresar; 
	
	}while (regresar == 1);
	
	cout << "\nLa cantidad de veces que realizo el ejercicio fue:" << veces;
	cout << "\nLa cantidad de resultados positivos es: " << positivos;
	cout << "\nLa cantidad de resultados negativos es: " << negativos;	
	
}
