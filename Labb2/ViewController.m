//
//  ViewController.m
//  Labb2
//
//  Created by it-högskolan on 2015-01-28.
//  Copyright (c) 2015 it-högskolan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *generateButton;

@property (weak, nonatomic) IBOutlet UISwitch *actionSwitch;

@property (weak, nonatomic) IBOutlet UISwitch *romanceSwitch;

@property (weak, nonatomic) IBOutlet UISwitch *horrorSwitch;

@property (weak, nonatomic) IBOutlet UITextView *storyText;

@property (nonatomic) StoryGenerator *sg;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.sg = [[StoryGenerator alloc ]init];
}

-(void)generateActionStory{
    NSString *storyText;
    storyText = [self.sg createActionStory];
    self.storyText.text = storyText;
    self.storyText.textColor = [UIColor blueColor];
    self.storyText.textAlignment = NSTextAlignmentJustified;
}

-(void)generateLoveStory{
    NSString *storyText;
    storyText = [self.sg createLoveStory];
    self.storyText.text = storyText;
    self.storyText.textColor = [UIColor redColor];
    self.storyText.textAlignment = NSTextAlignmentJustified;
}

-(void)generateHorrorStory{
    NSString *storyText;
    storyText = [self.sg createHorrorStory];
    self.storyText.text = storyText;
    self.storyText.textColor = [UIColor orangeColor];
    self.storyText.textAlignment = NSTextAlignmentJustified;
}

- (IBAction)generateStory:(id)sender {
    
    NSMutableArray *mutableStoryArray = [@[@"Action", @"Romance", @"Horror"] mutableCopy];
    
    NSString *storyType;
    
    if (self.actionSwitch.isOn) {
        [mutableStoryArray addObject:@"Action"];
        [mutableStoryArray addObject:@"Action"];
    }
    if (self.romanceSwitch.isOn) {
        [mutableStoryArray addObject:@"Romance"];
        [mutableStoryArray addObject:@"Romance"];
    }
    if (self.horrorSwitch.isOn) {
        [mutableStoryArray addObject:@"Horror"];
        [mutableStoryArray addObject:@"Horror"];
    }
    storyType = mutableStoryArray[arc4random() % [mutableStoryArray count] ];
    
    if ([@"Action" isEqualToString:storyType]) {
        [self generateActionStory];
    }
    else if ([@"Romance" isEqualToString:storyType]) {
        [self generateLoveStory];
    }
    else if ([@"Horror" isEqualToString:storyType]) {
        [self generateHorrorStory];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
