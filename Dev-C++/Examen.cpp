/*
Diseñe un programa en C que determine el área de triángulo, rectángulo, cuadrado y círculo 
según la opción elegida por el usuario e imprime dicho resultado.
Figura Área (fórmula)Triángulo A=(a*b)/2Rectángulo A=a*bCuadrado
A=a*aCirculo A=Pi*(b*b)Nota: todos los valores numéricos deben contener
validaciones numéricas y ejecución de programa si el usuario lo desea
en ambos ejercicios.(15 puntos)

*/ 

#include <iostream>
#include <windows.h>
#include <locale.h>

using namespace std;


float triangulo(), rectangulo(), cuadrado(), circulo(), a , b , area;

int main(){
	setlocale(LC_ALL, "Spanish");
	int opcion, regresar;
	
	do{
		system("cls");
		cout << "\nIngresa el numero de el area que deseas realizar:\n(1)Triangulo \n(2)Rectangulo \n(3)Cuadrado \n(4)Circulo \n(5)Salir\n";
		cin >> opcion;
		
		while(opcion<1 || opcion>5){
			cout << "\nError... , la opcion no es valida\n";
			cout << "\nIngresa el numero de operación a realizar:\n(1)Triangulo \n(2)Rectangulo \n(3)Cuadrado \n(4)Circulo \n(5)Salir\n";
			cin >> opcion;
		}
		
		switch(opcion){
			case 1:
				area = triangulo();
			break;
			case 2:
				area = rectangulo();
			break;
			case 3:
				area = cuadrado();
			break;
			case 4:
				area = circulo();
			break;
			case 5:
				cout << "\nEspere..., Saliendo del ejercicio\n";
				area = 0;
			break;	
		}
		
		cout << "\nEl area obtenido es: " << area << "\n";
		cout <<"\n¿Desea obtener otra area? \n(1)Si \n(0)No\n";
		cin >> regresar;
		
		while(regresar<0 || regresar>1){
			cout << "\nError, opcion no valida\n";
			cout <<"\n¿Desea obtener otra area? \n(1)Si \n(0)No\n";
			cin >> regresar;
		}
		
	}while(regresar==1);
	
	cout << "\nEjercicio terminado\n";
	system("pause");
	
}

float triangulo(){
	cout << "\nIngresa el valor de la altura:\t";
	cin >> a;
	cout << "\nIngresa el valor de la base:\t";
	cin >> b;
	area = a * b;
	cout << "\nArea del triangulo\n";
	return area;
}

float rectangulo(){
	cout << "\nIngresa el valor de la altura:\t";
	cin >> a;
	cout << "\nIngresa el valor de la base:\t";
	cin >> b;
	area = (a * b)/ 2;
	cout << "\nArea del rectangulo\n";
	return area;		
}

float cuadrado(){
	cout << "\nIngresa el valor del lado:\t";
	cin >> b;
	area = b*b;
	cout << "\nArea del cuadrado\n";
	return area;
}

float circulo(){
	cout << "\nIngresa el valor del radio:\t";
	cin >> b;
	area = 3.1416 * (b*b);
	cout << "\nArea del radio.\n";
	return area;
}

