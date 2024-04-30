#include "triangle.h"
#include <math.h>

bool isRightTriangle(Point_t points[], int size) {
 
    if(size != 3) {
        return false;
    }
    
    double a = sqrt(pow(points[0].x - points[1].x, 2) + pow(points[0].y - points[1].y, 2));
    double b = sqrt(pow(points[1].x - points[2].x, 2) + pow(points[1].y - points[2].y, 2));
    double c = sqrt(pow(points[2].x - points[0].x, 2) + pow(points[2].y - points[0].y, 2));
    
    if(pow(a,2) + pow(b,2) == pow(c,2) || pow(b,2) + pow(c,2) == pow(a,2) || pow(c,2) + pow(a,2) == pow(b,2)) {
        return true;
    }
    
    return false;
}