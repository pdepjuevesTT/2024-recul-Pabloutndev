% Log Home Inspections
% Legajo: 1762310
% Pablo Nicolas La Rocca
% Jueves TM 

% Punto 1
% vive(Persona, Ambiente)
% functores: casa(m^2) depa(ambientes,banios) loft(anio)
vive(juan,casa(120)).
vive(nico,depa(3,2)).
vive(alf,depa(3,1)).
vive(julian,loft(2000)).
vive(vale,depa(4,1)).
vive(fer,casa(110)).
vive(rocio,casa(90)).

viveEn(alf,almagro).
viveEn(juan,almagro).
viveEn(nico,almagro).
viveEn(julian,almagro).
viveEn(vale,flores).
viveEn(fer,flores).

persona(Persona) :- vive(Persona, _).
barrio(Barrio) :- viveEn(_,Barrio).

% Punto 2
% esCopada(Ambiente)
esCopada(casa(Metros)) :- Metros > 100.

esCopada(depa(Ambientes,_)):- Ambientes > 3.

esCopada(depa(_,Banio)):- Banio > 3.

esCopada(loft(Anio)):- Anio > 2015.

copado(Barrio):-
    barrio(Barrio),
    forall( (viveEn(Persona,Barrio),
            vive(Persona,Propiedad)), esCopada(Propiedad) ).

% Punto 3

esBarato(loft(Anio)) :- Anio < 2005.
esBarato(casas(Metros)) :- Metros < 90.
esBarato(depa(Ambientes,_)) :- Ambientes == 1.
esBarato(depa(Ambientes,_)) :- Ambientes == 2.

esCaro(Barrio):-
    barrio(Barrio),
    forall( (viveEn(Persona,Barrio),
            vive(Persona,Propiedad)), not(esBarato(Propiedad)) ).

% Punto 4
% tasa(Persona,Valor)
tasa(juan,150000).
tasa(nico,80000).
tasa(alf,75000).
tasa(julian,140000).
tasa(vale,95000).
tasa(fer,60000).

tasas([juan,nico,alf,julian,vale,fer]).
tasasValor([150000,80000,75000,140000,95000,60000]).

% Condicion de compra y devuelve el resto    
compra(Plata,Valor,Resto) :-
    Plata >= Valor,
    Resto is Plata - Valor.

% agregar a la lista
compras([Cabeza|Cola],MiLista,Plata):-
    compra(Plata,Cabeza,Resto),
    

compras([],Plata) :- true.

% sublista(Lista1,Lista2)
% Sirve para saber si Lista2 esta en Lista1
sublista([],[]).
sublista([_|Cola], Sublista) :- sublista(Cola,Sublista).
sublista([Cabeza|Cola],[Cabeza|Sublista]) :- sublista(Cola,Sublista).

%Ejemplo: Juan 100000
