/*
Realiza un ejercicio en C, donde obtengas el resultado de dos números
y verifica si el resultado obtenido es par o impar e imprime lo antes
mencionado
*/

#include <iostream>
#include <locale.h>
#include <windows.h>

using namespace std;

int numeroParImpar(int respuesta);

int main(){
	setlocale(LC_ALL, "Spanish");
	int num1, num2, suma , regresar;
	
	do{
		system("color A1");
		system("cls");
		cout << "\nIngresa el primer numero:\t";
		cin >> num1;
		cout << "\nIngresa el segundo numero:\t";
		cin >> num2;
		
		suma = num1 + num2;
		
		suma = numeroParImpar(suma);
		
		cout << "\n¿Desea realizar otra suma? \n(1)Si \n(0)No\n";
		cin >> regresar;
		
		while(regresar<0 || regresar>1){
			cout << "\nError, \n Intende de nuevo\n";
			cout << "\n¿Desea realizar otra suma? \n(1)Si \n(0)No\n";
			cin >> regresar;
		}
		
	}while(regresar==1);
	system("color F3");
	cout << "\nFin del ejercicio... vuelve pronto\n";
	
}

//codigo para la funcion
int numeroParImpar(int respuesta){
	system("color 85");
	if(respuesta%2==0){
		cout << "\nEl resultado de la sumatoria es: \t PAR. \n";
	} else {
		cout << "\nEl resultado de la sumatoria es: \t IMPAR. \n";
	}
}

