############# Pesquisa 1 #############

(select evolucao1.nome
from `evolucao1`, `armazena`
where armazena.id_pokemon = evolucao1.id_pokemon
and armazena.id_pokebola in(select pokebola.id 
							from `pokebola`,`treinador`  
							where treinador.nome='thiago' and pokebola.id_treinador = treinador.id))
union(select evolucao2.nome
from `evolucao2`, `armazena`
where armazena.id_pokemon = evolucao2.id_pokemon
and armazena.id_pokebola in(select pokebola.id 
							from `pokebola`,`treinador`  
							where treinador.nome='thiago' and pokebola.id_treinador = treinador.id))
union(select evolucao3.nome
from `evolucao3`, `armazena`
where armazena.id_pokemon = evolucao3.id_pokemon
and armazena.id_pokebola in(select pokebola.id 
							from `pokebola`,`treinador`  
							where treinador.nome='thiago' and pokebola.id_treinador = treinador.id));

############# Pesquisa 2 #############

select treinador.nome
from `treinador`, `pokebola`
where pokebola.id_treinador = treinador.id
and pokebola.id in( select armazena.id_pokebola
					from `armazena`,`pokemon`
					where armazena.id_pokemon = pokemon.id 
					and pokemon.id in ( select evolucao1.id_pokemon
																from `evolucao1`
																where evolucao1.nome='bulbassaur'));	

############# Pesquisa 3 #############

select evolucao1.nome, evolucao1.CP
from `evolucao1`
union(select evolucao2.nome, evolucao2.CP
from `evolucao2`)
union(select evolucao3.nome, evolucao3.CP
from `evolucao3`)

order by nome;		

############# Pesquisa 4 #############

select distinct evolucao1.nome
from `pokemon`, `tem`, `evolucao1`
where pokemon.id = evolucao1.id_pokemon
and tem.id_ataque in(select ataque.id
					from `ataque`
                    where ataque.tipo = 'grass');				