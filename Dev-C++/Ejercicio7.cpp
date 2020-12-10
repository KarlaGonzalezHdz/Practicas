/*
Ejercicio 7
Un empleado de RH, desea realizar un sistema que le permita calcular
el sueldo de los trabajadores, para eso debe capturar el nombre del empleado 
(cadena de texto), su numero de empleado (entero) y sus horas trabajadas al 
mes(entero), donde calcules su sueldo (real), tomando en cuenta que una hora
equivale a $150, e imprime el nombre y su sueldo

*/

#include <iostream>
#include <locale.h>
#include <windows.h>

using namespace std;

int main ()
{
	setlocale (LC_ALL , "Spanish");
	
	char nombre[15];
	int num_e, horas, h=150;
	float sueldo;
	
	cout << "\n Ingresa el nombre del empleado:\t";
	cin.get (nombre, 15);
	cout << "\n Ingresa el numero del empleado:\t";
	cin >> num_e;
	cout << "\n ¿Cuantas horas trabajó el empleado " << nombre << " ?\t";
	cin >> horas;
	sueldo = horas * h;
	cout << "\n El trabajador " << nombre << " obtuvo un sueldo  mensual de: $ " << sueldo << " pesos\n";
	system("pause");
}
