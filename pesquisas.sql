############# Pesquisa 1 #############
### Retorna todos os pokemons de um treinador#####

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
### Retorna todos os treinadores que tem um bulbassaur###
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
### Retorna todos os pokemons que estão armazenados em uma greatball ###
select distinct evolucao1.nome
from `pokemon`, `evolucao1`
where pokemon.id = evolucao1.id_pokemon
and pokemon.id in(select armazena.id_pokemon
					from `armazena`,`pokebola`
                    where pokebola.tipo = 'greatball' and armazena.id_pokebola = pokebola.id)
union(select distinct evolucao2.nome
from `pokemon`, `evolucao2`
where pokemon.id = evolucao2.id_pokemon
and pokemon.id in(select armazena.id_pokemon
					from `armazena`,`pokebola`
                    where pokebola.tipo = 'greatball' and armazena.id_pokebola = pokebola.id))
union(select distinct evolucao3.nome
from `pokemon`, `evolucao3`
where pokemon.id = evolucao3.id_pokemon
and pokemon.id in(select armazena.id_pokemon
					from `armazena`,`pokebola`
                    where pokebola.tipo = 'greatball' and armazena.id_pokebola = pokebola.id))
                    
order by nome;	

############# Pesquisa 4 #############
### Retorna uma lista com todos os pokemons com o seu CP ####

select evolucao1.nome, evolucao1.CP
from `evolucao1`
union(select evolucao2.nome, evolucao2.CP
from `evolucao2`)
union(select evolucao3.nome, evolucao3.CP
from `evolucao3`)

order by nome;		

############# Pesquisa 5 #############
### Retorna todos os pokemons que tem um ataque do tipo grass ###
select distinct evolucao1.nome
from `pokemon`, `evolucao1`
where pokemon.id = evolucao1.id_pokemon
and pokemon.id in(select tem.id_pokemon
					from `tem`,`ataque`
                    where ataque.tipo = 'grass' and tem.id_ataque = ataque.id)
union(select distinct evolucao2.nome
from `pokemon`, `evolucao2`
where pokemon.id = evolucao2.id_pokemon
and pokemon.id in(select tem.id_pokemon
					from `tem`,`ataque`
                    where ataque.tipo = 'grass' and tem.id_ataque = ataque.id))
union(select distinct evolucao3.nome
from `pokemon`, `evolucao3`
where pokemon.id = evolucao3.id_pokemon
and pokemon.id in(select tem.id_pokemon
					from `tem`,`ataque`
                    where ataque.tipo = 'grass' and tem.id_ataque = ataque.id));


############# Pesquisa 6 #############
### Retorna o numero de pokebolas separadas por tipo de cada treinador ###
select pokebola.tipo, count(pokebola.tipo)
from `treinador`, `pokebola`
where treinador.nome = 'thiago' and pokebola.id_treinador = treinador.id
group by pokebola.tipo;



