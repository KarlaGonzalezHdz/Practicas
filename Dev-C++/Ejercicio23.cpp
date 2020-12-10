#include <iostream>
#include <windows.h>
#include <locale.h>

using namespace std;

class persona{
	private:
		char nombre[40];
		int edad;
		
	public:
		void iniciar();
		void imprimir();
		void verificandoEdad();
};


void persona::iniciar(){
	system("cls");
	
	cout << "\nIngresa el nombre:\t";
	fflush(stdin);
	cin.getline(nombre, 40);
	cout << "\nIngresa la edad:\t";
	cin >>edad;
	
	while(edad<0 || edad>115){
		cout << "\nError...,Ingresa de nuevo la edad\n";
		cout << "\nIngresa la edad:\t";
		cin >>edad;
	}
	
}

void persona::verificandoEdad(){
	if(edad >=18){
		cout << "\nEs Mayor de edad\n";
	} else {
		cout << "\nEs Menor de edad\n";
	}
}


void persona::imprimir(){
	cout << "\nEl nombre del participante es: " << nombre;
	cout << "\nSu edad es de " << edad << " años.\n";
	
}

int main(){
	setlocale(LC_ALL, "Spanish");
	system("color 85");
	int regresar;
	
	do {
		
		persona per1;
		persona per2;
		persona per3;
		
		//llamar metodo
		
		per1.iniciar();
		per2.iniciar();
		per3.iniciar();
		
		cout << "\nObjeto 1 de la clase persona\n";
		per1.imprimir();
		per1.verificandoEdad();
		
		cout << "\nObjeto 2 de la clase persona\n";
		per2.imprimir();
		per2.verificandoEdad();
		
		cout << "\nObjeto 3 de la clase persona\n";
		per3.imprimir();
		per3.verificandoEdad();
		
		cout << "\n¿Desea repetir el ejercicio de nuevo?\n(1)Si\n(0)No\n";
		cin >> regresar;
		
		while(regresar<0 || regresar>1){
			cout << "\nError...\n";
			cout << "\n¿Desea repetir el ejercicio de nuevo?\n(1)Si\n(0)No\n";
			cin >> regresar;
		}
		
		
	}while(regresar==1);
	
	
}


