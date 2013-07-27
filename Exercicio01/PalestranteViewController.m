//
//  PalestranteViewController.m
//  Exercicio01
//
//  Created by Breno A. S. Moura on 7/27/13.
//  Copyright (c) 2013 Popcode Mobile Solutions. All rights reserved.
//

#import "PalestranteViewController.h"

@interface PalestranteViewController ()
{
    UITextView *textView;
}
@end

@implementation PalestranteViewController

- (void) loadView
{
    [super loadView];
    UIButton *meuBotao = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [meuBotao setTitle:@"Fechar" forState:UIControlStateNormal];

    [meuBotao addTarget:self action:@selector(botaoPressionado) forControlEvents:UIControlEventTouchUpInside];
    meuBotao.frame = CGRectMake(150, 360, 100, 50);
    
    [self.view addSubview:meuBotao];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem *btnAdicionar = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(botaoAdicionarClicado)];
    
    self.navigationItem.rightBarButtonItem = btnAdicionar;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)botaoPressionado
{
    [self.navigationController popToRootViewControllerAnimated:YES];
//    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)botaoAdicionarClicado
{
    if (!textView) {
        textView = [[UITextView alloc] initWithFrame:CGRectMake(100, 150, 200, 200)];
        [textView setText:@"Olá"];
    }
    
    [self.view addSubview:textView];
}

@end
