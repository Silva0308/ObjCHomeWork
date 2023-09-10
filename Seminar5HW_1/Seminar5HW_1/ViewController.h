//
//  ViewController.h
//  Seminar5HW_1
//
//  Created by MacBook Pro on 10/09/23.
//

#import <UIKit/UIKit.h>
#import "Loader.h"
 
@interface ViewController : UIViewController  <UITextViewDelegate, UITextFieldDelegate>

@property (strong, nonatomic) Loader *loader;
@property (nonatomic, weak) UITextView *textView;
@property (nonatomic, weak) UITextField *searchTextField;

-(void) performLoadingWithGETRequest;
-(void) performLoadingWithPOSTRequest;

-(void) performSearchRequestWithQuery;

- (BOOL)textFieldShouldReturn;
- (void)searchBarSearchButtonClicked;

@end
