//
//  main.m
//  Seminar2HW
//
//  Created by MacBook Pro on 29/08/23.
//
/**
 Создать абстрактный класс Figure с методами вычисления площади и периметра, а также методом, выводящим информацию о фигуре на экран.
 
 Создать производные классы: Rectangle (прямоугольник), Circle (круг), Triangle (треугольник) со своими методами вычисления площади и периметра.
 
 Создать массив n-фигур и вывести полную информацию о фигурах на экран.
 */
#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Circle.h"
#import "Triangle.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int n = 8; // Количество фигур
        
        NSMutableArray *figures = [NSMutableArray array];
        
        // Создание n-фигур и добавление их в массив
        for (int i = 0; i < n; i++) {
            if (i % 3 == 0) {
                Rectangle *rectangle = [[Rectangle alloc] init];
                rectangle.width = 5;
                rectangle.height = 3;
                [figures addObject:rectangle];
            } else if (i % 3 == 1) {
                Circle *circle = [[Circle alloc] init];
                circle.radius = 4;
                [figures addObject:circle];
            } else {
                Triangle *triangle = [[Triangle alloc] init];
                triangle.side1 = 3;
                triangle.side2 = 4;
                triangle.side3 = 5;
                [figures addObject:triangle];
            }
        }
        
        // Вывод информации о фигурах на экран
        for (Figure *figure in figures) {
            [figure printInfo];
        }
    }
    return 0;
}
