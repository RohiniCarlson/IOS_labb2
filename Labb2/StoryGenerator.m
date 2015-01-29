//
//  StoryGenerator.m
//  Labb2
//
//  Created by it-högskolan on 2015-01-28.
//  Copyright (c) 2015 it-högskolan. All rights reserved.
//

#import "StoryGenerator.h"

@implementation StoryGenerator

NSArray *seasons;
NSArray *timesOfDay;
NSArray *adjectivesRomance;
NSArray *adjectivesHorror;
NSArray *animals;
NSArray *nouns;
NSArray *clothes;
NSArray *noises;
NSArray *foreignWords;
NSArray *bodyParts;
NSArray *colors;
NSArray *numbers;
NSArray *heroes;
NSArray *heroines;
NSArray *names;
NSArray *devices;
NSArray *food;
NSArray *drinks;
NSArray *exclamations;
NSArray *adverbs;

-(instancetype)init {
    self = [super init];
    if (self) {
        seasons = @[@"summer",@"winter",@"autumn",@"spring"];
        timesOfDay = @[@"night",@"afternoon",@"morning",@"evening",@"day"];
        adjectivesRomance=@[@"warm",@"fuzzy",@"dreamy",@"fantastic",@"gorgeous",
                            @"beautiful",@"breathtaking",@"handsome",@"marvellous",
                            @"lovely"];
        adjectivesHorror=@[@"horrible",@"frightening",@"scary",@"bloody",@"terrifying",
                           @"petrifying",@"gruesome",@"hideous"];
        animals = @[@"an ant", @"a beetle",@"a worm",@"a bat",@"a lion",
                    @"an elephant",@"an ostrich",@"a tiger",@"a bee",@"a hyena",
                    @"a kangaroo",@"a moose",@"a hamster",@"a mouse"];
        nouns = @[@"a knife",@"a spoon",@"a fork",@"a book", @"a pen",@"a computer",
                  @"a drum",@"a trumpet",@"a piano"];
        clothes = @[@"hat",@"tie",@"shoes",@"socks",@"hair-band",@"jeans", @"shirt",
                    @"bikini",@"bathing-shorts",@"tuxedo",@"ball-gown"];
        noises = @[@"whoosh",@"splotch",@"splat",@"twack",@"boom",@"crash",
                   @"squeak",@"roar",@"bark",@"grunt",@"moan",@"groan"];
        foreignWords = @[@"caramba", @"mammamia"];
        bodyParts = @[@"eyes",@"hair",@"legs",@"nose",@"cheeks",@"hands",@"elbows",
                      @"fingers",@"toes", @"ears", @"shoulders"];
        colors = @[@"red",@"green",@"blue",@"brown",@"purple",@"orange",@"black",
                   @"white",@"pink"];
        numbers = @[@"ten",@"one thousand",@"fifty",@"five",@"eighty nine",@"hundred"];
        heroes = @[@"He-Man",@"Captain America",@"Batman",@"Hercules",@"Hulk",@"Thor",
                   @"Spiderman",@"Superman",@"Ironman",@"Daredevil"];
        heroines = @[@"Superwoman",@"She-hulk",@"Invisible-woman",@"Black-widow",
                     @"Storm",@"Elektra",@"Valkyrie",@"Scarlet-witch", @"Cat-woman"];
        names = @[@"Sean Banan",@"Popeye",@"Handyman Manny",@"Bob the Builder",
                  @"Postman Pat",@"Snoopy",@"Winnie the Pooh",@"Lagoona Blue",
                  @"Frankie Stein",@"Cleo de Nile",@"Shakira",@"Clawdeena Wolf"
                  @"Ghoulia Yelps",@"Draculaura",@"Abbey Bominable",
                  @"Spectra Vondergeist"];
        devices = @[@"a vaccuum-cleaner",@"a lawn-mower",@"a bus",@"a train",
                    @"a tanker",@"a tractor",@"a jeep",@"a tri-cycle"];
        food = @[@"sushi",@"pancakes",@"waffles",@"spaghetti and meatballs",@"pizza",
                 @"rice and curry",@"dumplings",@"roast chicken"];
        drinks = @[@"diet-coke",@"fanta",@"sprite",@"tea",@"coffee",@"milk",
                   @"hot-chocolate",@"latte",@"espresso",@"water",@"vodka"];
        exclamations = @[@"Oops!",@"Yikes!",@"Help!",@"Leaping Lizards!",
                         @"Jeepers!",@"Creepers!",@"Blistering Barnacles!",@"Eek!",
                         @"Oh Rats!",@"Shiver Me Timbers!",@"Ouch!"];
        adverbs = @[@"quickly",@"slowly",@"roughly",@"carefully",@"meaningfully",
                    @"lovingly",@"warmly"];
    }
    return self;
}
-(NSString*)randomElement: (NSArray*) array {
    return array[arc4random() % array.count];
}

-(NSString*)createActionStory {
    
    NSString *heroe = [self randomElement:heroes];
    NSString *heroine = [self randomElement:heroines];
    NSString *colorHim = [self randomElement:colors];
    NSString *colorHer = [self randomElement:colors];
    NSString *colorPirate = [self randomElement:colors].capitalizedString;
    NSString *clothingHim = [self randomElement:clothes];
    NSString *clothingHer = [self randomElement:clothes];
    NSString *animal = [self randomElement:animals];
    NSString *animal2 = [self randomElement:animals];
    NSString *device = [self randomElement:devices];
    NSString *adjectiveHorror = [self randomElement:adjectivesHorror];
    NSString *adjectiveHorror2 = [self randomElement:adjectivesHorror];
    NSString *bodyPartCaptain = [self randomElement:bodyParts].capitalizedString;
    NSString *season = [self randomElement:seasons];
    NSString *timeOfDay = [self randomElement:timesOfDay];
    NSString *name = [self randomElement:names];
    NSString *exclamation = [self randomElement:exclamations];
    NSString *exclamation2 = [self randomElement:exclamations];
    NSString *foreignWord = [self randomElement:foreignWords];
    NSString *adverb = [self randomElement:adverbs];
    NSString *bodyPartBandit1 = [self randomElement:bodyParts];
    NSString *bodyPartBandit2 = [self randomElement:bodyParts];
    NSString *bodyPartBandit3 = [self randomElement:bodyParts];
    NSString *number = [self randomElement:numbers];
    NSString *noise = [self randomElement:noises];
    NSString *noise2 = [self randomElement:noises];
    
    NSString *paragraph1 = [NSString stringWithFormat:@"%@ and %@ were the bravest superheroes in Gothenburg. They flew around the city dressed in their distinctive superhero costumes. %@ wore his famous %@ %@ and %@ wore her equally famous and well known %@ %@.", heroe,heroine,heroe,colorHim,clothingHim,heroine,colorHer,clothingHer];
    
    NSString *paragraph2 = [NSString stringWithFormat:@"Last week they rescued %@ before it could get run over by %@ and then they rescued %@ just before it was made to walk the plank by the %@ Captain %@ %@ and his motely crew of %@ pirates.",animal,device,animal2,adjectiveHorror,colorPirate,bodyPartCaptain,adjectiveHorror2 ];
    
    NSString *paragraph3 = [NSString stringWithFormat:@"One %@ %@, they saw that %@ was about to be used as target practice by a trigger happy gang of lawless bandits. %@ yelled \"%@!\" %@ cried out \"%@!\" and swooped %@ down from the sky!",season,timeOfDay,name,heroe,exclamation,heroine,foreignWord,adverb];
    
    NSString *paragraph4 = [NSString stringWithFormat:@"%@ got hold of one bandit's %@ and administered over %@ punches. The air was filled with the sound of loud %@(s). The bandit screamed \"%@!\" and ran away. %@ caught two bandits by their %@(s) and immediately started to box their %@(s). With a massive %@(s) they lost consciousness.",heroe,bodyPartBandit1,number,noise,exclamation2,heroine,bodyPartBandit2,bodyPartBandit3,noise2];
    
    NSString *paragraph5 = [NSString stringWithFormat:@"The rest of the bandits just turned tail and ran away as fast as their legs could carry them. They were never ever seen in Gothenburg again! %@ was very happy and grateful to be rescued by the super duo!",name];
    
    return [NSString stringWithFormat:@"%@\n\n%@\n\n%@\n\n%@\n\n%@",paragraph1,paragraph2,paragraph3,paragraph4,paragraph5];
}

-(NSString*)createLoveStory{
    
    NSString *season = [self randomElement:seasons];
    NSString *timeOfDay = [self randomElement:timesOfDay];
    NSString *heroe = [self randomElement:heroes];
    NSString *heroine = [self randomElement:heroines];
    NSString *adverb = [self randomElement:adverbs];
    NSString *colorHerBody = [self randomElement:colors];
    NSString *bodyPartHer = [self randomElement:bodyParts];
    NSString *colorHerBody2 = [self randomElement:colors];
    NSString *bodyPartHer2 = [self randomElement:bodyParts];
    NSString *colorClothingHer = [self randomElement:colors];
    NSString *clothingHer = [self randomElement:clothes];
    NSString *colorClothingHer2 = [self randomElement:colors];
    NSString *clothingHer2 = [self randomElement:clothes];
    NSString *animal = [self randomElement:animals];
    NSString *exclamation = [self randomElement:exclamations];
    NSString *adverb2 = [self randomElement:adverbs];
    NSString *colorHisBody = [self randomElement:colors];
    NSString *bodyPartHis = [self randomElement:bodyParts];
    NSString *adjectiveRomance = [self randomElement:adjectivesRomance];
    NSString *adjectiveRomance2 = [self randomElement:adjectivesRomance];
    NSString *adjectiveHorror = [self randomElement:adjectivesHorror];
    NSString *foodItem = [self randomElement:food];
    NSString *foodItem2 = [self randomElement:food];
    NSString *noun = [self randomElement:nouns];
    NSString *noun2 = [self randomElement:nouns];
    NSString *adverb3 = [self randomElement:adverbs];
    
    
    NSString *paragraph1 = [NSString stringWithFormat:@"One %@ %@, %@ saw %@ %@ walking down the street. %@ had %@ %@ and %@ %@. She was wearing a %@ %@ and %@ %@. ”I must talk to her”, he thought. But just as %@ prepared to approach %@, %@ crossed her path. She gasped and cried out, \"%@!\" %@ used his super powers to %@ reach her side and catch her before she fainted.",season,timeOfDay,heroe,heroine,adverb,heroine,colorHerBody,bodyPartHer,colorHerBody2,bodyPartHer2,colorClothingHer,clothingHer,colorClothingHer2,clothingHer2,heroe,heroine,animal,exclamation,heroe,adverb2];
    
    NSString *paragraph2 = [NSString stringWithFormat:@"When %@ opened her eyes, the first thing she saw was %@'s %@ %@. \"Oh, my!\" she thought, \"I have never seen such %@ %@, he sure is %@\". She smiled at him and said \"Thank you so much for rescuing me from that %@ %@\". %@ felt like a real superhero!",heroine,heroe,colorHisBody,bodyPartHis,adjectiveRomance,bodyPartHis,adjectiveRomance2,adjectiveHorror,animal,heroe];
    
    NSString *paragraph3 = [NSString stringWithFormat: @"They made their way to the local pub, hand in hand. He ordered a plate of %@ and she ordered a bowl of %@. While they waited for their order to arrive, %@ asked %@ what her favorite hobby was. \"I just love to twirl %@ in the air\" she said. \"Wow! That is impressive!\" said %@, \"I just can't get enough of jumping over %@.\" \"Incredible!\", said %@. They looked %@ at each other. It was the beginning of a wonderful partnership!",foodItem,foodItem2,heroe,heroine,noun,heroe,noun2,heroine,adverb3];
    return [NSString stringWithFormat:@"%@\n\n%@\n\n%@",paragraph1,paragraph2,paragraph3];
}

-(NSString*)createHorrorStory{
    NSString *name = [self randomElement:names];
    NSString *adjectiveHorror = [self randomElement:adjectivesHorror];
    NSString *drink = [self randomElement:drinks];
    NSString *noise = [self randomElement:noises];
    NSString *color = [self randomElement:colors];
    NSString *exclamation = [self randomElement:exclamations];
    NSString *adjectiveHorror2 = [self randomElement:adjectivesHorror];
    NSString *foreignWord = [self randomElement:foreignWords];
    NSString *adjectiveHorror3 = [self randomElement:adjectivesHorror];
    NSString *color2 = [self randomElement:colors];
    NSString *bodyPart = [self randomElement:bodyParts];
    NSString *color3 = [self randomElement:colors];
    NSString *noun = [self randomElement:nouns];
    NSString *noun2 = [self randomElement:nouns];
    NSString *adjectiveHorror4 = [self randomElement:adjectivesHorror];
    NSString *adjectiveHorror5 = [self randomElement:adjectivesHorror];
    NSString *bodyPart2 = [self randomElement:bodyParts];
    NSString *exclamation2 = [self randomElement:exclamations];
    NSString *heroe = [self randomElement:heroes];
    NSString *heroine = [self randomElement:heroines];
    NSString *bodyPart3 = [self randomElement:bodyParts];
    
    NSString *paragraph1 = [NSString stringWithFormat:@"%@ will never forget that %@ night. %@ was relaxing with a large mug of his/her favorite drink, %@, when  suddenly he/she heard a loud %@ from the basement.",name,adjectiveHorror,name,drink,noise];
    
    NSString *paragraph2 = [NSString stringWithFormat:@"%@ jumped up, grabbed a flashlight and went to investigate. He/She opened the door just a bit and pointed his/her flashlight, only to see a pair of %@ eyes shining in the light. %@ gasped and yelped \"%@!\". There was another loud %@ and %@ turned and ran back up the stairs.",name,color,name,exclamation,noise,name];
    
    NSString *paragraph3 = [NSString stringWithFormat:@"%@ could hear the %@ creature just behind him/her. \"I should've locked the door, %@!\" thought %@, but it was too late. %@ turned around and faced the %@ creature. It was huge and slimy, with %@ %@ and %@ splotches all over. %@ grabbed %@ and threw it at the monster, but the %@ beast just swallowed it whole! Next, %@ threw %@ at it, but it just bounced off of his %@ %@.",name,adjectiveHorror2,foreignWord,name,name,adjectiveHorror3,color2,bodyPart,color3,name,noun,adjectiveHorror4,name,noun2,adjectiveHorror5,bodyPart2];
    
    NSString *paragraph4 = [NSString stringWithFormat:@"%@ began to think this is it, when with a shout of \"%@!\" in jumped %@ and %@ through %@'s window. They punched the slimy creature on it's %@. It just collapsed and melted into a pool of slime. %@ thanked %@ & %@ for saving his/her life. ”That is what we do!”, they said before flying off into the night!",name,exclamation2,heroe,heroine,name,bodyPart3,name,heroe,heroine];
    
    return [NSString stringWithFormat:@"%@\n\n%@\n\n%@\n\n%@",paragraph1,paragraph2,paragraph3,paragraph4];

}

@end
