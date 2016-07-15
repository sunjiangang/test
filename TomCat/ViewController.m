//
//  ViewController.m
//  TomCat
//
//  Created by sjg on 15/9/20.
//  Copyright (c) 2015年 sjg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSDictionary *_dataDic;
    
}
@property (weak, nonatomic) IBOutlet UIImageView *bgview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Tomcat" ofType:@"plist"];
    _dataDic = [NSDictionary dictionaryWithContentsOfFile:path];
}
- (IBAction)btnClick:(UIButton *)sender {
    NSDictionary *subDic = nil;
    switch (sender.tag) {
        case 1:
        {
            subDic = [_dataDic objectForKey:@"cymbal"];
        }
            break;
            
            // aaaa
            
            
            
            
            
            
            
            

        case 2:
        {
            subDic = [_dataDic objectForKey:@"fart"];
        }
            break;
            
        default:
            break;
    }
    NSMutableArray *imageArr = [NSMutableArray array];
    for (int i=0; i<[[subDic objectForKey:@"frames"] intValue]; i++) {
        [imageArr addObject:[UIImage imageNamed:[NSString stringWithFormat:[subDic objectForKey:@"imageFormat"],i]]];
        
    }
    _bgview.animationImages = imageArr;
    _bgview.animationDuration = imageArr.count/10;
    _bgview.animationRepeatCount = 1;
    [_bgview startAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
