'''TODO MAL, acabar'''


def f_commoninterests(interests):
    # Crear una tupla con todos los nombres del diccionario
    names = tuple(interests.keys())


    # Inicializar un diccionario vacío para almacenar las combinaciones
    combinations_dict = {}

    # Iterar sobre la tupla
    for i in range(len(names)):
        for j in range(i + 1, len(names)):
            hobbys = set()
            # Crear la combinación de dos elementos
            combination = (names[i], names[j])
            # Verificar si la combinación ya se ha agregado al diccionario
            if combination in combinations_dict:
                continue
            # Agregar la combinación al diccionario



            combinations_dict[combination] = combination

    return combinations_dict


def main():
    A = "reading"
    B = "eating"
    C = "traveling"
    D = "writing"
    E = "running"
    F = "music"
    G = "movies"
    H = "programming"

    interests = {
        "Marco": {A, D, E, F},
        "Anna": {E, A, G},
        "Maria": {G, D, E},
        "Paolo": {B, D, F},
        "Frank": {D, B, E, F, A},
        "Teresa": {F, H, C, D}
        }


    print("a) Table of common interests:")
    commoninterests = f_commoninterests(interests)
    print(commoninterests)

    print("b) Maximum number of common interests:")
    maxCI = ...
    print(maxCI)

    print("c) Pairs with maximum number of matching interests:")
    maxmatches = ...
    print(maxmatches)

    print("d) Pairs with low similarity:")
    lowJaccard = ...
    print(lowJaccard)


# Start program:
main()

