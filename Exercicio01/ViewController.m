//
//  ViewController.m
//  Exercicio01
//
//  Created by Breno A. S. Moura on 7/27/13.
//  Copyright (c) 2013 Popcode Mobile Solutions. All rights reserved.
//

#import "ViewController.h"
#import "PalestranteViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"Treinamentos.mobi";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)botaoClicado:(UIButton *)sender
{
    PalestranteViewController *palestranteVC = [PalestranteViewController new];
    [self.navigationController pushViewController:palestranteVC animated:YES];
}

@end
