% Log Home Inspections
% Legajo: 1762310
% Pablo Nicolas La Rocca

% Punto 1
% vive(Persona, Ambiente)
% functores: casa(m^2) depa(ambientes,banios) loft(anio)
vive(juan,casa(120)).
vive(nico,depa(3,2)).
vive(alf,depa(3,1)).
vive(julian,loft(2000)).
vive(vale,depa(4,1)).
vive(fer,110).
vive(rocio,casa(90)).

vivenEn([alf,juan,nico,julian],almagro).
vivenEn([vale,fer],flores).

% Punto 2
esCopado(Persona, casa(Metros)) :-
    vive(Persona,)
    Metros > 100.
