# You throw a dart that hits coordinates (x, y) on a dartboard.
# Create a program that gives you the score.
# See:
#   https://en.wikipedia.org/wiki/Darts#Dartboard
#   https://www.dimensions.com/element/dartboard

#DIMENSIONS:
#largura (diametro) = 451mm ---> raio = 225.5
#diametro pequeno do centro = 12.7mm  ---> raio = 6.35
#diametro grande do centro = 32mm --> raio = 16
#raio(maior)ao redor do centro =107mm (o menor é -8mm)--> raio = 53.5
#raio2 (maior) = 170mm (menor= -8mm) --> raio= 85
#
print("Enter the coordinates in mm from the center of the board.")
x = float(input("x(mm)? "))
y = float(input("y(mm)? "))
score = 0
# Points of the sectors, clockwise from the top
# Example: the sector right from the center is POINTS[5] == 6.
POINTS = (20, 1, 18, 4, 13, 6, 10, 15, 2, 17, 3, 19, 7, 16, 8, 11, 14, 9, 12, 5)

# COMPLETE...
'TAMANHO EM FORMULA:'
'(x**2) + (y**2) <= 225.5**2'

'CENTRO:'
if x**2 + y**2 <= 6.35**2:
    score = 50
if 6.35**2 < x**2 + y**2 <= 16**2:
    score = 25
'FORA DO CENTRO:'
if (x**2) + (y**2) > 225.5**2:
    print("Falhaste :( o raio do alvo tem 50850mm")
    exit(1)
else:
    print("Acertaste!")
    'Angulo de cada seccção: 360/20 = 18'
import math
ang = math.degrees(math.atan2(x, y))
if ang < 0:
    ang = 180 + (180 + ang)
'ANGULOS:'
if 0 < ang <= 9:
    score = 6
elif 9 < ang <= 27:
    score = 13
elif 27 < ang <= 45:
    score = 18
if 81 < ang <= 99:
    score = 20
elif 99 < ang <= 117:
    score = 5
elif 117 < ang <= 135:
    score = 12
if 135 < ang <= 153:
    score = 9
elif 153 < ang <= 171:
    score = 14
elif 171 < ang <= 189:
    score = 11
if 189 < ang <= 207:
    score = 8
elif 207 < ang <= 225:
    score = 16
elif 225 < ang <= 243:
    score = 7
if 243 < ang <= 261:
    score = 19
elif 261 < ang <= 279:
    score = 3
elif 279 < ang <= 297:
    score = 17
if 297 < ang <= 315:
    score = 2
elif 315 < ang <= 333:
    score = 15
elif 333 < ang <= 351:
    score = 10
else:
    score = 6




print("A sua pontuação foi de:", score, "pontos")
