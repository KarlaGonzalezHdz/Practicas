/*
Pedir el nombre y la calificacion final de su proyecto e imprimir
si su calificacion es mayor igual a 8 con el mensaje su proyecto
ha sido seleccionado
*/

#include <iostream>
#include <locale.h>
#include <windows.h>

using namespace std;

int main(){
	setlocale (LC_ALL, "Spanish");
	char nombre[15];
	float calificacion;
	int regresar;
	// desde aqui se regresara el programa si asi lo decide el usuario.
	do{
		// inicio de do
		cout << "\nIngrese su nombre:\t";
		fflush(stdin);
		cin.get(nombre, 15);
		cout << "\nIngrese su calificacion: ";
		cin >> calificacion;
		
		if(calificacion >=8){
		
			cout << "Hola " << nombre << " , felicidades... tu proyecto no ha sido seleccionado";
			cout << "tu calificacion es : " << calificacion << "\n";
		}
		
		cout << "\n¿Desea regresar de nuevo al programa? (1) - Si, (0) -No\n";
		cin >> regresar;
		
	} while (regresar==1);
	
	cout << "\nSe ha finalizado el programa\n";
	
}
