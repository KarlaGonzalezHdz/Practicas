/* Realiza un programa c, donde  la edad de un
usuario, donde mandes las siguientes indicaciones,  los bebes no pueden
entrar soy muy chiquitos, ni�os  de 3 a�os solo clasificaciones A, AA,
mayores a 12 a�os hasta 17 a�os 
"pueden entrar a ver las clasificaciones A, AA, B", 
si son mayores de edad pueden ver todas las clasificaciones" ,
no se aceptan edades negativas o mayores a 120 a�os. */


#include <iostream>
#include <locale.h>
#include <windows.h>

using namespace std;

int main(){
	
	int edad;
	//char nombre[15];
	
	cout << "\nCine Mar";
	cout << "\nIngresa tu edad: ";
	cin >> edad;
	
	if(edad<0 || edad>120){
		
		cout << "\nTu edad ingresada no es valida";
	}
	else if (edad==1 ||  edad==2 ){
		
		cout << "\n Los bebes no pueden entrar, no es discriminaci�n";
	} 
	else if (edad>=3 && edad <=11){
		cout << "\n solo pueden ver clasificaciones A, AA,";
	} 
	else if (edad>=12 && edad<=17){
		cout <<"\n Solo pueden ver clasificaciones A, AA y B";
	}
	else if (edad>=18){
		cout << "\nPuede ver todas las clasificaciones";
	} else {
		cout <<"\nEl dato que ingresaste no es valido";
	}
	
	cout <<"\nGracias por asistir";
	
}
