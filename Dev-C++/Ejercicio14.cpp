/*
Realiza un programa donde obtengas las edades de todo un grupo de alumnos, 
donde se desconoce dicho valor, obten el promedio y la cantidad de alumnos
que son mayores o menores de edad, recuerda que no se aceptan edades negativas 
o mayores a 110 años y cantidad de alumnos negativos, e imprime la cantidad de alumnos, 
y el promedio y la cantidad de alumnos mayores y menores de edad.
*/


#include <iostream>
#include <locale.h>
#include <windows.h>

using namespace std;

int main(){
	setlocale(LC_ALL, "Spanish");
	int i, n_alumnos, edad, mayores=0 , menores=0, suma=0;
	float prom;
	
	cout << "\nIngrese la cantidad de alumnos de su salón de clase:\t";
	cin >> n_alumnos;
	
	//valida que no se acepten númenos negativos
	while(n_alumnos < 0){
		cout << "\nError, no se aceptan números negativos.\n";
		cout << "\nIngrese la cantidad de alumnos de su salón de clase:\t";
		cin >> n_alumnos;
	}
	
	for(i=1; i<=n_alumnos; i++){
		cout <<"\n¿Cuantos años tiene el alumno " << i << ":\t";
		cin >> edad;
		
		//validad que no se acepten número negativos o mayores a 110
		while(edad<0 || edad>110){
			cout << "\n Error!!!\nIntenta de nuevo.";
			cout << "\n¿Cuantos años tiene el alumno " << i << ":\t";
			cin >>edad;
		}
		
		//calcular cuantos alumnos hay mayores o menores de edad
		if(edad>=18){
			//acomulador de la cantidad  de alumnos mayores o igual a 18 años;
			mayores = mayores + 1;
		} else{
			//acomulador de la cantidad de alumnos menores de 18 años;
			menores = menores + 1;
		}
		
		//obtener la suma de todas las edades
		suma = suma + edad;
		
	}
		//obtener el promedio de todas las edades
		prom = (suma / n_alumnos);
		
		//imprimir los resultados
		cout << "\nLa cantidad de alumnos del grupo son: " << n_alumnos << "\n";
		cout << "\nEn el salón hay " << mayores << " alumnos mayores de edad, ";
		cout << "\n y " << menores << " alumnos menores de edad. ";
		cout << "\n El promedio general es de " << prom << "\n";
		
	
	
}


