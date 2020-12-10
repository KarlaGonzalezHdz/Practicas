 //HERENCIA
 
 #include <iostream>
 #include <windows.h>
 #include <locale.h>
 
 using namespace std;
 
 boole
 
 class animal{
 	protected:
 		char nom[20];
 		
 	public:
 		void iniciar();
 		void imprimir();
 		void caminar();
 		void morder();
 };
 
 void animal::iniciar(){
 	cout << "\nIngrese el nombre del animal:\t";
 	fflush(stdin);
 	cin.getline(nom,20);
 }
 
 void animal::caminar(){
 	cout << "\nEl animal camina?";
 }
 
 void animal::morder(){
 	cout << "\nLa mayoria de los animales muerden, ten cuidado \n";
 }
 
 
 void animal::imprimir(){
 	cout << "\nEl nombre del animal es:\t" << nom;
 	cout << "\n";
 }
 
 
 //crear otra clase
 
 class mamifero(){
 	public:
 		
 	void caminar(){
 		cout << "\nEl mamifero camina\n";
	 }
 }
 
 
 
 //crear herencia
 
 class tigre: public animal, public mamifero{
 	
 };
 
 class perrito: public animal, public mamifero{
 	
 };
 
 
 
 int main(){
 	
 	tigre t1;
 	tigre t2;
 	perrito p1;
 	perrito p2:
 		
 	//mandar llamar metodos
 	
 	t1.animal.iniciar();
 	t2.animal.iniciar();
 	p1.animal.iniciar();
 	p2.animal.iniciar();
 	
 	t1.animal::imprimir();
 	t1.animal::caminar();
 	t1.animal::morder();
 	t1.mamifero.caminar();
 	
 	t2.animal::imprimir();
 	t2.animal::caminar();
 	t2.animal::morder();
 	t2.mamifero.caminar();
 	
 	p1.animal::imprimir();
 	p1.animal::caminar();
 	p1.animal::morder();
 	p1.mamifero.caminar();
 	
	p2.animal::imprimir();
 	p2.animal::caminar();
 	p2.animal::morder();
 	p2.mamifero.caminar();
 	
 	
 }
