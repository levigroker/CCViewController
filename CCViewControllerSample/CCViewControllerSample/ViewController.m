//
//  ViewController.m
//  CCViewControllerSample
//
//  Created by Levi Brown on 3/19/13.
//  Copyright (c) 2013 Levi Brown. All rights reserved.
//

#import "ViewController.h"
#import "IntroLayer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Run whatever scene we'd like to run here.
    CCDirector *director = [CCDirector sharedDirector];
    if(director.runningScene)
        [director replaceScene:[IntroLayer scene]];
    else
        [director runWithScene:[IntroLayer scene]];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
	// ask director for the window size
    CCDirector *director = [CCDirector sharedDirector];
	CGSize size = [director winSize];
    
	CCSprite *background;
	
	if( UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone ) {
		background = [CCSprite spriteWithFile:@"Default.png"];
		background.rotation = 90;
	} else {
		background = [CCSprite spriteWithFile:@"Default-Landscape~ipad.png"];
	}
	background.position = ccp(size.width/2, size.height/2);
    
	// add the label as a child to this Layer
	[director.runningScene addChild: background];
}

@end
