
#include <iostream>
#include <windows.h>
#include <locale.h>

using namespace std;

float sabritas(), elotes(), nieve() , total=0;

int main(){
	
	
	setlocale (LC_ALL , "Spanish");
	
	int regresar=1, opcion, pago , ttotal;
	
	cout << "\nSnack Vespertino\n";
	
	while(regresar==1)
	{
		
	cout << "Selecciona lo que mas te agrade: \n(1)Sabritas \n(2)Elotes \n(3)Nieve \n(4)Salir\n";
	cin >> opcion;
	
	while (opcion<1 || opcion>4){
		cout << "\nError... , opcion no valida\n";
		cout << "Selecciona lo que mas te agrade: \n(1)Sabritas \n(2)Elotes \n(3)Nieve \n(4)Salir\n";
		cin >> opcion;
	}
	
	switch(opcion){
		
		case 1:
			sabritas();
		break;
		
		case 2:
			elotes();
		break;
		
		case 3:
			nieve();
		break;
		
		case 4:
			cout << "\nEspere un momento por favor.";
		break;
	}
	
	cout << "\n¿Deseas Agregar algo más? \n(1)Si \n(0)No\n";
	cin >>regresar;
	
	//validar
	
	
	} //llave de cierre de while
	
	system("cls");
	cout << "\nEl total de tu compra es $"  << total << "\n";
	
	cout << "\nIngresa la cantidad en efectivo a pagar:\t";
	cin >> pago;
	
	while(pago<total){
		cout << "Su pago es menor al total de su compra";
		cout << "\nIngresa la cantidad en efectivo a pagar:\t";
		cin >> pago;
	}

	ttotal = pago - total;
	
	cout << "Su total es: $" << total << ", su cambio es de $ " << ttotal;
	cout << "\nRegrese pronto";
	
}

float sabritas(){
	int tipo, cantidad, preparadas, extra;
	float tot_sab;
	
	cout  << "\nSelecciona tus favoritas... \n(1)Naturales\n(2)Queso\n(3)Adobadas\n";
	cin >> tipo;
	
	//validar

	
	cout << "\nPor $5 más deseas que tus papitas se les agregue elote , salsa y queso? \(1)Si\n(2)No";
	cin>> preparadas;
	
	if(preparadas==1){
		tot_sab=12+5;
	} else {
		tot_sab = 12;
	}
	
	total = total + tot_sab;
	
	
	return total;
}

float elotes(){
	int cantidad, tipo, tamanio ;
	float tot_elo;
	system("cls");
	system("color 85");
	cout << "Selecciona tu favorito\n(1)Elote en Vaso\n(2)Elote Entero\n";
	cin >> tipo;
	
	//validar
	
	if(tipo==1){
		cout << "\nSelecciona el tamaño del  vaso: (1)CH\n(2)M";
		cin >> tamanio;
			if(tamanio=1){
				tot_elo = 20;
				
			} else {
				tot_elo = 25;
			}
		
	} 
	else{
		tot_elo = 15;
	}
	
	total = total + tot_elo;
	return total;
}


float nieve(){
	
	int sabor, tipo, tamanio, precio, sabor2;
	float tot_nieve;
	
	system("cls");
	cout << "\nSeleccione \n(1)Cono \n(2)Vaso\n";
	cin>> tipo;
	
	//validad
	
	if(tipo==1){
		
		cout << "(1)Vainilla \n(2)Chocolate\n";
		cin>> sabor2;
		precio = 10;
		
		
	} else {
		
		cout << "\n(1)CHICO \n (2)Mediano\n";
		cin >>  tamanio;
		if(tamanio==1){
			precio=15;
		}
		else {
			precio=20;
		}
	}
	
	cout << "\nSelecciona tu fav \n(1)Fresa \n(2)Chocolate\n(3)Vainilla\n";
	cin >> sabor;
	
	total = total + precio;
	
	return total;
	
	
	
}


