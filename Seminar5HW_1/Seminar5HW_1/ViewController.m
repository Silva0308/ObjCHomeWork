//
//  ViewController.m
//  Seminar5HW_1
//
//  Created by MacBook Pro on 10/09/23.
//

#import "ViewController.h"
#import "Loader.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
    self.textView.delegate = self;
    self.searchTextField.delegate = self;

    
    self.textView = [[UITextView alloc] initWithFrame:self.view.bounds];
    self.textView.editable = NO;
    [self.view addSubview:self.textView];
    
    self.searchTextField = [[UITextField alloc] initWithFrame:CGRectMake(20,20,200,30)];
    self.searchTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.searchTextField.placeholder = @"Введите поисковый запрос";
    self.searchTextField.delegate = self;
    [self.view addSubview:self.searchTextField];
}

- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
//    [self performLoadingWithGETRequest];
    [self performLoadingWithPOSTRequest];
}


- (void)performSearchRequestWithQuery:(NSString *)query {
    NSString *urlString = [NSString stringWithFormat:@"https://www.yandex.ru/search/?text=%@", [query stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]]];
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSURLSessionDataTask *dataTask = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
            return;
        }
        
        NSString *searchResults = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        
        dispatch_async(dispatch_get_main_queue(), ^{
         
            self.textView.text = searchResults;
        });
    }];
    
    [dataTask resume];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self performSearchRequestWithQuery:textField.text];
    [textField resignFirstResponder];
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    [self performSearchRequestWithQuery:textField.text];
    [textField resignFirstResponder];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [self performSearchRequestWithQuery:searchBar.text];
    [searchBar resignFirstResponder];
}

- (void)performLoadingWithGETRequest {
    [self.loader performGETRequestForURL:@"https://postman-echo.com/get" arguments:@{@"first": @"first value", @"second": @"second value"} competion:^(NSDictionary * dict, NSError * error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"%@", [NSString stringWithFormat:@"Error: %@", error]);
                return;
            }
            NSLog(@"%@", [NSString stringWithFormat:@"%@", dict]);
        });
    }];
}

- (void)performLoadingWithPOSTRequest {
    [self.loader performPOSTRequestForURL: @"https://postman-echo.com/post" arguments:@{@"first": @"first value", @"second": @"second value"} competion: ^(NSDictionary * dict, NSError * error){
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"%@", [NSString stringWithFormat:@"Error: %@", error]);
                return;
            }
            NSLog(@"%@", [NSString stringWithFormat:@"%@", dict]);
        });
    }];
}

@end
