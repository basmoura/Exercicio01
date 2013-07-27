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
    UIImage *foto;
}
@end

@implementation PalestranteViewController

- (void) loadView
{
    [super loadView];
    self.view.backgroundColor = [UIColor whiteColor];
//    UIBarButtonItem *btnAdicionar = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(botaoAdicionarClicado)];
//    
//    self.navigationItem.rightBarButtonItem = btnAdicionar;
    
//    UIButton *meuBotao = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [meuBotao setTitle:@"Curiosidades" forState:UIControlStateNormal];
//    [meuBotao addTarget:self action:@selector(botaoPressionado) forControlEvents:UIControlEventTouchUpInside];
//    meuBotao.frame = CGRectMake(165, 80, 150, 30);
//    [self.view addSubview:meuBotao];

    UIImageView *imagem = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"meganFox.jpg"]];
    imagem.frame = CGRectMake(10, 10, 150, 200);
    [self.view addSubview:imagem];
    
    UITextView *idade = [[UITextView alloc] initWithFrame:CGRectMake(165, 10, 200, 30)];
    [idade setText:@"Idade: 25"];
    [self.view addSubview:idade];
    
    UITextView *estadoCivil = [[UITextView alloc] initWithFrame:CGRectMake(165, 30, 200, 30)];
    [estadoCivil setText:@"Casada: Com Hugo"];
    [self.view addSubview:estadoCivil];
    
    UITextView *nerd = [[UITextView alloc] initWithFrame:CGRectMake(165, 50, 200, 30)];
    [nerd setText:@"Nerd: Sim"];
    [self.view addSubview:nerd];
    
    UITextView *sobreMegan = [[UITextView alloc] initWithFrame:CGRectMake(2, 215, 315, 180)];
    [sobreMegan setText:@"Megan Denise Fox (Oak Ridge, 16 de maio de 1986) é uma atriz e modelo estadunidense. Depois de uma bem sucedida carreira como modelo, em 2001, Fox lançou sua carreira de atriz atuando em um papel de apoio como \"Brianna Wallace\" em Férias ao Sol, estrelando com Mary Kate e Ashley Olsen. Logo depois ela estrelou em várias séries de TV, incluindo What I Like About You, Two and a Half Men, The Help e Ocean Ave.. Ela também desempenhou um papel recorrente como \"Sydney Shanowski\" em Hope & Faith. Em 2004, Fox estrelou ao lado de Lindsay Lohan no filme Confissões de uma Adolescente em Crise. Seus outros filmes incluem A Herdeira da Máfia, Um Louco Apaixonado e Whore. Fox ficou conhecida internacionalmente após interpretar Mikaela Banes, interesse amoroso do personagem de Shia LaBeouf no filme blockbuster Transformers de 2007, um papel para o qual foi indicada e ganhou vários Teen Choice Awards. Ela apareceu na sequência, Transformers: A Vingança dos Derrotados. Seus filmes incluem Jennifer's Body, Jonah Hex e The Crossing"];
    [sobreMegan setTextAlignment:NSTextAlignmentJustified];
    [self.view addSubview:sobreMegan];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.title = @"Megan Delícia Fox";

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)botaoPressionado
{
//    [self.navigationController popToRootViewControllerAnimated:YES];
//    [self dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController popViewControllerAnimated:YES];
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
