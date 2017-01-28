#include <iostream>
#include <vector>
#include <ofstream>
#include <string>

using namespace std;

int main(int argc, char const *argv[]){

	string auxiliar1, auxiliar2, auxiliar3;

	bool continua = true;

	ofstream arquivo;
	arquivo.open("db_insert.txt");

	cout << "Digite o nome do treinador:\n";
	cin >> auxiliar1;
	cout << "Digite a cidade do treinador\n";
	cin >> auxiliar2;
	cout << "Digite a idade do treinador\n";
	cin >> auxiliar3;

	arquivo << "insert into treinador(nome, idade, cidade) values(" + auxiliar1 + "," + auxiliar2 + "," + auxiliar3 ");\n";

	while(continua){
		int numero_boxes = 1;
		bool pergunta = false;
		char aux;

		cout<< "Adicionar o " + numero_boxes + "º box ? y = sim  n = não \n";
		cin >> aux;
		if (aux == "y"){
			//Fazer o insert do box

			numero_boxes++;

			cout << "Deseja adicionar um Pokemon ? \n ";
			while(pergunta){
				//Fazer insert dos Pokemon
				


			}

		}else{
			return 0;
		}
			

		cout << "Deseja adicionar outro box para este treinador ? \n";


	};

	return 0;
}