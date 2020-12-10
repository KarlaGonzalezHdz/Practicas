/*
Se busca calcular el sueldo de un empleado en base a su nivel de empleto.
Si se pide como datos de entrada el nombre del empleado, su nivel de empledo 
y la cantidad horas trabajadas.
*/

#include <iostream>
#include <windows.h>
#include <locale.h>

using namespace std;

int main(){
	setlocale(LC_ALL, "Spanish");
	char nombre[15];
	int horas_t , horas_e , nivel, regresar , h;
	float sueldo;
	
	do{ // desde este punto se regresará si la condicional se cumple
		system("cls");
		cout << "\nObteniendo la nomina de los trabajadores...\n";
		cout << "\nIngresa el nombre del trabajador:\t";
		fflush(stdin);
		cin.getline(nombre,sizeof(nombre)); 
		//cin.getline(nombre,30) o cin.get(nombre, 30) 
		//get line sirve para que todo se  imprima en una misma linea
		 
		 cout << "\nVerifica los siguientes niveles e ingresa el número correspondiente a elegir";
		 cout << "\n(1)Directivos \n(2)Administrativos \n(3)Técnicos \n(4)Operador \n(5)Mantenimiento \n(6)Salir\n";
		 cin >> nivel;
		 
		 //validad que solo se acepten los números correspondientes
		 while(nivel<1 || nivel>6){
		 	cout << "\nError, vuelve a intentarlo\n";
		 	 cout << "\nVerifica los siguientes niveles e ingresa el número correspondiente a elegir";
			 cout << "\n(1)Directivos \n(2)Administrativos \n(3)Técnicos \n(4)Operador \n(5)Mantenimiento \n(6)Salir\n";
			 cin >> nivel;
		 }
		 
		 
		 cout << "\nIngresa las horas que trabajo " << nombre << ":\t";
		 cin >> horas_t;
		 
		//validad que solo se acepten horas negativas
		 while(horas_t<1 || horas_t >100){
			cout << "\nLas horas ingresadas no  pueden atudar a obtener el sueldo\n";
			cout << "\nIngresa las horas que trabajo " << nombre << ":\t";
			cin >> horas_t;
		 	
		 }
		 
		 if(horas_t>35){
		 	horas_e = horas_t - 35;
		 	h = horas_t;
		 }else 
		 {
		 	horas_e = 0;
		 	h = horas_t;
		 }
		 
		  //opciones
		  switch(nivel){
		  	case 1: 
			  	sueldo = ((h * 250) + (horas_e * 200));
			  	cout <<"\nNivel de empleo: Directivo.\n";
			break;
			case 2:
				sueldo = ((h * 192) + (horas_e * 200));
			  	cout <<"\nNivel de empleo: Administrativo.\n";
			break;
			case 3: 
			  	sueldo = ((h * 160) + (horas_e * 180));
			  	cout <<"\nNivel de empleo: Tecnico.\n";
			break;
			case 4:
				sueldo = ((h * 145) + (horas_e * 180));
			  	cout <<"\nNivel de empleo: Operador.\n";
			break;
			case 5: 
			  	sueldo = ((h * 130) + (horas_e * 150));
			  	cout <<"\nNivel de empleo: Mantenimiento.\n";
			break;
			case 6:
				sueldo = 0;
				cout <"\nEspere un momento... Saliendo del proceso";
			break;
		  }
		  
		  //Impresion de resultado
		  
		cout << "\n\nEl empleado:\t" << nombre << ", obtuvo un sueldo de $" << sueldo;
		cout <<"\ntrabajo " << horas_e << " horas extra.\n";
		  
		// regresas al inicio
		cout << "\n¿Deseas calcular otro sueldo?\n(1)Si\t (0)No\n";
		cin >> regresar;
		
		while(regresar<0 || regresar>1){
			cout << "\nOpcion no valida.\n";
			cout << "\n¿Deseas calcular otro sueldo?\n(1)Si\t (0)No\n";
			cin >> regresar;
		}
		
			
		
	} while (regresar == 1); // si se cumple se regresa a do
	
	cout << "\nfin del ejercicio...\n";
}
