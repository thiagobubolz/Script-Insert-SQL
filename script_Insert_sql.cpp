#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main(int argc, char const *argv[]){

	string auxiliar1, auxiliar2, auxiliar3;
	int num1, num2, num3;
	string aux;
	int num_treinadores = 0;
	bool terminou = true;
	bool continua = true;
	int numero_pokebolas = 0;
	int numero_pokemons = 0;
	int numero_ataques_totais = 0;
	int numero_boxes = 1;

	ofstream arquivo;
	arquivo.open("db_insert.sql", ios::app);

	while(terminou){
		cout << "Digite o nome do treinador:\n";
		cin >> auxiliar1;
		cout << "Digite a cidade do treinador\n";
		cin >> auxiliar2;
		cout << "Digite a idade do treinador\n";
		cin >> num1;

		cout << "\n\n";

		arquivo << "insert into treinador(nome, idade, cidade) values(" << "'" << auxiliar1 << "'" <<  "," << "'" << auxiliar2 << "'" <<  "," << num1 << ");\n";

		num_treinadores++;

		while(continua){
			bool pergunta = false;
			int num_suportado;

			cout << "Adicionar o box ? y = sim  n = não\n";
			cin >> aux;
			if (!aux.compare("y")){
				cout << "Digite o ambiente do box:\n";
				cin >> auxiliar1;
				cout << "Digite o numero suportado\n";
				cin >> num_suportado;

				cout << "\n\n";
				arquivo << "insert into box(tipo_ambiente, num_suportado, id_prof, id_treinador) values(" <<  "'" << auxiliar1 <<  "'" << "," << num_suportado << "," << 1 << "," << num_treinadores << ");\n";

				numero_boxes++;

				cout << "Deseja adicionar uma pokebola ?  y = sim  n = não\n ";
				cin >> aux;
				if (!aux.compare("y")){
					pergunta = true;
				}else pergunta = false;

				while(pergunta){
				 	bool ocupada;
				 	int num_ataques = 0;

				 	cout << "Digite o tipo da pokebola:\n";
					cin >> auxiliar1;
					cout << "Esta ocupada por um pokemon ?y = sim  n = não\n";
					cin >> aux;
					if (!aux.compare("y")){
						ocupada = true;
					}else ocupada = false;

					cout << "\n\n";
					arquivo << "insert into pokebola(ocupada, tipo, id_box, id_treinador) values(" << ocupada << "," <<  "'" << auxiliar1 <<  "'" << "," << numero_boxes << "," << num_treinadores << ");\n";
				 	numero_pokebolas++;

				 	if (ocupada){
				 		cout << "Coloque os dados do pokemon:\n";
				 		cout << "Digite o nivel de nivel de felicidade:\n";
						cin >> num1;
						cout << "Digite o nível do pokemon\n";
						cin >> num2;
						cout << "Digite o HP do pokemon\n";
						cin >> num3;

						cout << "\n\n";
						arquivo << "insert into pokemon(nivel_felicidade, nivel, hp) values(" << num1 << "," << num2 << "," << num3 << ");\n";
						numero_pokemons++;

						while(num_ataques != 2){
							cout << "Coloque os dados do ataque:\n";
					 		cout << "Digite o tipo de ataque:\n";
							cin >> auxiliar1;
							cout << "Digite a accuracy:\n";
							cin >> num1;
							cout << "Digite o dano do ataque:\n";
							cin >> num2;

							cout << "\n\n";
							arquivo << "insert into ataque(tipo, ccuracy, dano) values(" <<  "'" << auxiliar1 <<  "'" << "," << num1 << "," << num2 << ");\n";
							numero_ataques_totais++;
							num_ataques++;
							arquivo << "insert into tem(id_pokemon, id_ataque) values(" << numero_pokemons << "," << numero_ataques_totais << ");\n";
						}
						cout << "Coloque a evolução do pokemon 1 2 ou 3:\n";
						cin >> num1;
				 		cout << "Digite o peso do pokemon:\n";
						cin >> num2;
						cout << "Digite o nome do pokemon:\n";
						cin >> auxiliar1;
						cout << "Digite o CP do pokemon:\n";
						cin >> num3;
						cout << "\n\n";

						if(num1 == 1){
							arquivo << "insert into evolução1(id_pokemon, peso, nome, CP) values(" << numero_pokemons << "," << num2 << "," <<  "'" << auxiliar1 <<  "'" << "," << num3 << ");\n";

						}else if(num1 == 2){
							cout << "Digite o tipo 2 do pokemon:\n";
							cin >> auxiliar2;
							arquivo << "insert into evolução2(id_pokemon, peso, nome, CP, tipo2) values(" << numero_pokemons << "," << num2 << "," <<  "'" << auxiliar1 <<  "'" << "," << num3 << "," <<  "'" << auxiliar2 <<  "'" << ");\n";

						}else if(num1 == 3){
							cout << "Digite o tipo 2 do pokemon:\n";
							cin >> auxiliar2;
							arquivo << "insert into evolução3(id_pokemon, peso, nome, CP, tipo2) values(" << numero_pokemons << "," << num2 << "," <<  "'" << auxiliar1 <<  "'" << "," << num3 << "," <<  "'" << auxiliar2 <<  "'" << ");\n";
						}
				 	}
					cout << "Deseja adicionar outra pokebola ?  y = sim  n = não\n";
					cin >> aux;
					if (!aux.compare("y")){
						pergunta = true;
					}else pergunta = false;

					if(numero_pokebolas > num_suportado){
					 	cout << "O numero máximo de pokebolas foi alcansado adicione outro box \n";
					 	pergunta = false;
					}
				}

			}else{
				continua = false;
			}

		};

		cout << "Adicionar outro treinador ?  y = sim  n = não  \n";
		cin >> aux;
		if (!aux.compare("y")){
			terminou = true;
			continua = true;
			pergunta = true;
		}else{
			terminou = false;
		}

	}

	arquivo.close();
	return 0;
}