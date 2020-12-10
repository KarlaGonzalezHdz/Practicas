/*
Realizar un ejercicio con ayuda de funciones especificando las operaciones siguientes: suma, resta, multiplicacion y division.
Pedir dos numeros para realizar dicho proceso e imprimir el resultado.
*/

#include <iostream>
#include <locale.h>
#include <windows.h>

using namespace std;

float suma(), resta(), multiplicacion(), division(), v1 , v2, v3;

int main(){
	setlocale(LC_ALL, "Spanish");
	int operacion, regresar;
	
	do{
		system("cls");
		cout << "\nIngresa el numero de operación a realizar:\n(1)Suma \n(2)Resta \n(3)Multiplicacion \n(4)Division \n(5)Salir\n";
		cin >> operacion;
		
		while(operacion<1 || operacion>5){
			cout << "\nError... , la opcion no es valida\n";
			cout << "\nIngresa el numero de operación a realizar:\n(1)Suma \n(2)Resta \n(3)Multiplicacion \n(4)Division \n(5)Salir\n";
			cin >> operacion;
		}
		
		switch(operacion){
			case 1:
				v3 = suma();
			break;
			case 2:
				v3 = resta();
			break;
			case 3:
				v3 = multiplicacion();
			break;
			case 4:
				v3 = division();
			break;
			case 5:
				cout << "\nEspere..., Saliendo del ejercicio\n";
				v3 = 0;
			break;	
		}
		
		cout << "\nEl resultado obtenido es: " << v3 << "\n";
		cout <<"\n¿Desea realizar otra operación? \n(1)Si \n(0)No\n";
		cin >> regresar;
		
		while(regresar<0 || regresar>1){
			cout << "\nError, opcion no valida\n";
			cout <<"\n¿Desea realizar otra operación? \n(1)Si \n(0)No\n";
			cin >> regresar;
		}
		
	}while(regresar==1);
	
	cout << "\nEjercicio terminado\n";
	system("pause");
	
}

float suma(){
	cout << "\nIngresa el primer valor:\t";
	cin >> v1;
	cout << "\nIngresa el segundo valor\t";
	cin >> v2;
	v3 = v1 + v2;
	cout << "\nProceso sumatoria\n";
	return v3;
}

float resta(){
	cout << "\nIngresa el primer valor a restar:\t";
	cin >> v1;
	cout << "\nIngresa el segundo valor a restar:\t";
	cin >> v2;
	v3 = v1 - v2;
	cout << "\nProceso resta\n";
	return v3;
}

float multiplicacion(){
	cout << "\nIngrese el primer factor:\t";
	cin >> v1;
	cout << "\nIngrese el segundo factor:\t";
	cin >> v2;
	v3 = v1 * v2;
	cout << "\nProceso multiplicación\n";
	return v3;
}

float division(){
	cout << "\nIngrese el primer numero:\t";
	cin >> v1;
	cout << "\nIngrese el segundo numero:\t";
	cin >> v2;
	while(v2==0){
		cout << "\nError, no se puede dividir sobre 0\n";
		cout << "\nIngrese el segundo numero:\t";
		cin >> v2;
	}
	v3 = (v1/v2);
	return v3;
}

