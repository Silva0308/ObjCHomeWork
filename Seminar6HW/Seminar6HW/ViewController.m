//
//  ViewController.m
//  Seminar6HW
//
//  Created by MacBook Pro on 14/09/23.
//

#import "ViewController.h"
#import "Robot.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Создаем объект робота
    Robot *robot = [[Robot alloc] initWithX:10.0 y:20.0 name:@"Robot1"];
    
    // Сохраняем объект робота в userDefaults
    NSData *robotData = [NSKeyedArchiver archivedDataWithRootObject:robot requiringSecureCoding:NO error:nil];
    [[NSUserDefaults standardUserDefaults] setObject:robotData forKey:@"Robot1"];
    
    // Считываем объект робота из userDefaults
    NSData *savedRobotData = [[NSUserDefaults standardUserDefaults] objectForKey:@"Robot1"];
    Robot *savedRobot = [NSKeyedUnarchiver unarchiveObjectWithData:savedRobotData];
    
    // Отображаем информацию о роботе в виде TextView
    self.textView.text = [NSString stringWithFormat:@"Name: %@\nCoordinates: (%.2f, %.2f)", savedRobot.name, savedRobot.x, savedRobot.y];
    
    // Сохраняем информацию о роботе в файл с названием таким же как имя робота
    NSString *filePath = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingPathComponent:savedRobot.name];
    [NSKeyedArchiver archiveRootObject:savedRobot toFile:filePath];
    
    // Считываем содержимое файла
    Robot *readRobot = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    
    // Отображаем содержимое файла в виде TextView
    self.textView.text = [NSString stringWithFormat:@"%@\n\nName: %@\nCoordinates: (%.2f, %.2f)", self.textView.text, readRobot.name, readRobot.x, readRobot.y];
}

@end
