//
//  ViewController.m
//  ScrollViewImagesGalleries
//
//  Created by Noor Alhoussari on 2017-06-12.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@property (nonatomic) UIImageView *image1;
@property (nonatomic) UIImageView *image2;
@property (nonatomic) UIImageView *image3;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollView.delegate = self;
    
//    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
//    [self.view addSubview:self.scrollView];
    self.scrollView.pagingEnabled = YES;
//    self.scrollView.showsHorizontalScrollIndicator = NO;
    
    self.image1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))];
    self.image1.image = [UIImage imageNamed:@"Lighthouse-in-Field"];
    self.image1.userInteractionEnabled = YES;
    self.image1.contentMode = UIViewContentModeScaleAspectFit;
    [self.scrollView addSubview:self.image1];
//    self.image1.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.image2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))];
    self.image2.image = [UIImage imageNamed:@"Lighthouse-night"];
    self.image2.userInteractionEnabled = YES;
    [self.scrollView addSubview:self.image2];
    
    self.image3 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))];
    self.image3.image = [UIImage imageNamed:@"Lighthouse-zoomed"];
    self.image3.userInteractionEnabled = YES;
    [self.scrollView addSubview:self.image3];
    
    NSArray *images = @[self.image1, self.image2, self.image3];
    
    int startingPointOfX = 0;

    for (UIImageView *image in images){
        CGRect frm = image.frame;
        frm.origin.x = startingPointOfX;
        image.frame = frm;
        
        startingPointOfX += CGRectGetWidth(self.view.frame);
    }
    
    self.scrollView.contentSize = CGSizeMake(startingPointOfX, CGRectGetHeight(self.view.frame));

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
