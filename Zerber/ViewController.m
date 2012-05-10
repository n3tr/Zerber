//
//  ViewController.m
//  Zerber
//
//  Created by n3tr on 5/10/55 BE.
//  Copyright (c) 2555 Simpletail. All rights reserved.
//

#import "ViewController.h"
#import "JKNavigationBar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Set Bar Button
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc] initWithTitle:@"save" style:UIBarButtonItemStyleBordered target:self action:nil];
    self.navigationItem.rightBarButtonItem = barBtn;
    barBtn = nil;
    
    // Usage Here
    JKNavigationBar *jkBar = (JKNavigationBar*) self.navigationController.navigationBar;
    [jkBar setBackgroundImage:[UIImage imageNamed:@"NavBarBG.jpg"]];
    [jkBar setBackgroundColor:[UIColor blueColor]];
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
