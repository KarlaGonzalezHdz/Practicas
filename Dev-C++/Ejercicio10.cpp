/*Realiza un menú donde le pidas al usuario a que figura quieres sacar el área, 

1.- Triangulo 

2.- Rectángulo 

3.- Circulo 

4.- Cuadrado

y pide cada uno de los elementos para sacar el área desea e imprime su resultado. */
 
 #include <iostream>
 #include <locale.h>
 #include <windows.h>
 
 using namespace std;
 
 int main(){
 	setlocale (LC_ALL, "Spanish");
 	float area, b, h,r , pi=3.1416;
 	int figura;
 	
 	// imprimiendo un menu
 	cout << "\nIngresa el numero de la figura que deseas obtener el area\n";
	cout <<"\n (1)- Triangulo\n (2)- Rectangulo\n (3) - Circulo\n (4)-Cuadrado\n";
	cin >> figura;
	
	switch (figura){
		
		case 1 : 
			cout << "\nIngrese el valor de altura\n";
			cin >> h;
			cout << "\nIngrese el valor de base\n";
			cin >> b;
			area = (b * h)/2;
			break;
	
		case 2: 
			cout << "\nIngrese el valor de altura\n";
			cin >> h;
			cout << "\nIngrese el valor de base\n";
			cin >> b;
			area = b * h;
			break;
			
		case 3:
			cout << "\nIngresa el valor del radio\n";
			cin >> r;
			area = pi * (r * r);
			break;
			
		case 4: 
			cout << "\nIngrese el valor del lado\n";
			cin >> b;
			area = b * b;
			break;
			
		default: 
			cout << "\nEl numero que ingresaste no esta en las opciones";
			break;	
	}
	
	cout << "\nEl resultado del area es: " << area << "\n";
	
 	
 }
