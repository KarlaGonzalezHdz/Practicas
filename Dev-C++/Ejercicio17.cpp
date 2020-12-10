#include <iostream>
#include <windows.h>
#include <locale.h>

using namespace std;

int miPrimerFuncion(int v1 , int v2);

int main(){
	setlocale (LC_ALL , "Spanish");
	
	int a, b;
	a = 10; 
	b = 20;
	
	cout << "\na , b = " << a << ", " << b;
	
	cout << "\nFuncion(a,b) = " << miPrimerFuncion(a,b);
	 
}

//crear codificacion en la funcion antes declarada

int miPrimerFuncion(int v1 , int v2){
	system("color E2");
	
	v1 = v1 + 2;
	//a = v1 , por lo tanto v1 = 10 + 2 = 12
	
	v2 = v2 - 10 ;
	// b = v2 , por lo tanto v2 = 20 - 10 = 10
	
	return v1 + v2;
	
}


