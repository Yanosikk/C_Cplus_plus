#include "triangle.h"
#include <stdio.h>
#include <math.h>

int main() {
    Point_t points[3];
    
    printf("Podaj wspolrzedne pierwszego punktu (x y): ");
    scanf("%d %d", &points[0].x, &points[0].y);
    printf("Podaj wspolrzedne drugiego punktu (x y): ");
    scanf("%d %d", &points[1].x, &points[1].y);
    printf("Podaj wspolrzedne trzeciego punktu (x y): ");
    scanf("%d %d", &points[2].x, &points[2].y);
	printf("Wprowadzone punkty:\n");
	
   
    if(isRightTriangle(points, 3)) {
        printf("Podane punkty tworza trojkat prostokatny.\n");
	}
	else {
        printf("Podane punkty nie tworza trojkata prostokatnego.\n");
    }
    
    return 0;
}