//
//  BEViewController.m
//  BlockExamples
//
//  Created by Nick Martin on 2/13/14.
//  Copyright (c) 2014 org.rivermoss. All rights reserved.
//

#import "BEViewController.h"

@interface BEViewController ()

@end

@implementation BEViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showSubview:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:nil];
    BESubViewController *subviewController =
    [storyboard instantiateViewControllerWithIdentifier:@"subview"];
    
    [self presentViewController:subviewController animated:YES completion:^{
    NSLog(@"Subview opened.");
    [NSTimer scheduledTimerWithTimeInterval:10.0
                                         target:self
                                       selector:@selector(dismissSubview)
                                       userInfo:nil
                                        repeats:NO];
    }];
}

-(void)dismissSubview{
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"Subview closed.");
    }];
}


@end
