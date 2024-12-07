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
% esCopada(Persona, Ambiente)
esCopada(_, casa(Metros)) :- Metros > 100.

esCopada(_, depa(Ambientes,_)):- Ambientes > 3.

esCopada(_, depa(_,Banio)):- Banio > 3.

esCopada(_, loft(Anio)):- Anio > 2015.

copado(Barrio):-
    barrio(Barrio),
    forall( (viveEn(Persona,Barrio),
            vive(Persona,Propiedad)), esCopada(Persona, Propiedad) ).

% Punto 3
