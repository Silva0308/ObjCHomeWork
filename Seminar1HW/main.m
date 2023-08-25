//
//  main.m
//  Seminar1HW
//
//  Created by MacBook Pro on 25/08/23.
//
/* Решить квадратные уравнения:
 x^2 – 8x + 12 = 0,
 12x^2 – 4x + 2 = 0,
 x^2 – 100x - 2 = 0
 (заменять константы в коде).
 
 Создать программу, которая находит большее число среди 3-х чисел.*/

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Задание 1
        
        double a, b, c;
        double discriminant, x1, x2;
        
        // Ввод коэффициентов уравнения
        NSLog(@"Введите коэффициент a: ");
        scanf("%lf", &a);
        
        NSLog(@"Введите коэффициент b: ");
        scanf("%lf", &b);
        
        NSLog(@"Введите коэффициент c: ");
        scanf("%lf", &c);
        
        // Расчет дискриминанта
        discriminant = b * b - 4 * a * c;
        
        // Проверка значений дискриминанта и вывод решений
        if (discriminant > 0) {
            x1 = (-b + sqrt(discriminant)) / (2 * a);
            x2 = (-b - sqrt(discriminant)) / (2 * a);
            
            NSLog(@"Уравнение имеет два корня:\n");
            NSLog(@"x1 = %.2lf\n", x1);
            NSLog(@"x2 = %.2lf\n", x2);
        } else if (discriminant == 0) {
            x1 = -b / (2 * a);
            
            NSLog(@"Уравнение имеет один корень:\n");
            NSLog(@"x1 = %.2lf\n", x1);
        } else {
            NSLog(@"Уравнение не имеет действительных корней.\n");
        }
        
        //Задание 2
        
        double num1, num2, num3;
        NSLog(@"Введите первое число: ");
        scanf("%lf", &num1);
        
        NSLog(@"Введите второе число: ");
        scanf("%lf", &num2);
        
        NSLog(@"Введите третье число: ");
        scanf("%lf", &num3);
        
        double largest = num1;
        if (num2 > largest) {
            largest = num2;
        }
        if (num3 > largest) {
            largest = num3;
        }
        
        NSLog(@"Наибольшее число из трех это %.2lf\\\\n", largest);
        
    }
    return 0;
}
