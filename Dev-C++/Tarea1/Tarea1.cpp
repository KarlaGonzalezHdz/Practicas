#include <iostream>
#include <locale.h>

using namespace std;

int main(){
	setlocale(LC_ALL, "Spanish");
	int t1, t2, t3, t4, t5, t6, t7;
	float prom;
	char nomdia[10];
	cout << "\nIngresa tu día favorito";
	cin.get(nomdia, 10);
	cout << "\nIngresa la temperatura del dia Lunes";
	cin >> t1;
	cout << "\nIngresa la temperatura del dia Martes";
	cin >> t2;
	cout << "\nIngresa la temperatura del dia Miercoles";
	cin >> t3;
	cout << "\nIngresa la temperatura del dia Jueves";
	cin >> t4;
	cout << "\nIngresa la temperatura del dia Viernes";
	cin >> t5;
	cout << "\nIngresa la temperatura del dia Sabado";
	cin >> t6;
	cout << "\nIngresa la temperatura del dia Domingo";
	cin >> t7;
	prom = (t1 + t2 + t3 + t4 + t5 + t6 + t7)/ 7;
	cout << "\nEl promedio de la temperatura de la semana es: " << prom ;
	cout << "\nTu día favorito es: " << nomdia;
	return 0;
}

