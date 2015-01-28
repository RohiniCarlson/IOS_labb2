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
NSArray *timeOfDay;
NSArray *adjectivesRomance;
NSArray *adjectivesHorror;
NSArray *animals;
NSArray *nouns;
NSArray *clothing;
NSArray *noise;
NSArray *foreignWords;
NSArray *bodyParts;
NSArray *colors;
NSArray *numbers;
NSArray *heroes;
NSArray *heroines;
NSArray *names;
NSArray *device;
NSArray *food;
NSArray *drink;
NSArray *exclamation;
NSArray *adverb;

-(instancetype)init {
    self = [super init];
    if (self) {
        seasons = @[@"summer",@"winter",@"autumn",@"spring"];
        timeOfDay = @[@"night",@"afternoon",@"morning",@"evening",@"day"];
        adjectivesRomance=@[@"warm",@"fuzzy",@"dreamy",@"fantastic",@"gorgeous",
                        @"beautiful",@"breathtaking",@"handsome",@"marvellous",@"lovely"];
        adjectivesHorror=@[@"horrible",@"frightening",@"scary",@"bloody",@"terrifying",
                           @"petrifying",@"gruesome",@"hideous"];
        animals = @[@"ant",@"beetle",@"worm",@"bat",@"lion",@"elephant",@"ostrich",@"tiger",@"bee",
                    @"hyena",@"kangaroo",@"moose",@"hamster",@"mouse"];
        nouns = @[@"knife",@"spoon",@"fork",@"book", @"pen",@"computer",@"drum",
                @"trumpet",@"piano"];
        clothing = @[@"hat",@"tie",@"shoes",@"socks",@"hair-band",@"jeans",@"shirt",@"bikini",
                     @"bathing-shorts",@"tuxedo",@"ball-gown"];
        noise = @[@"whoosh",@"splotch",@"splat",@"twack",@"boom",@"crash",@"squeak",@"roar",@"bark",
                  @"grunt",@"moan",@"groan"];
        foreignWords = @[@"caramba", @"mammamia"];
        bodyParts = @[@"eyes",@"hair",@"legs",@"nose",@"cheeks",@"hands",@"elbows",@"fingers",
                    @"toes", @"ears", @"shoulders"];
        colors = @[@"red",@"green",@"blue",@"brown",@"purple",@"orange",@"black",@"white",@"pink"];
        numbers = @[@"ten",@"one thousand",@"fifty",@"five",@"eighty nine",@"hundred"];
        heroes = @[@"He-Man",@"Captain America",@"Batman",@"Hercules",@"Hulk",@"Thor",@"Spiderman",
                   @"Superman",@"Ironman",@"Daredevil"];
        heroines = @[@"Superwoman",@"She-hulk",@"Invisible-woman",@"Black-widow",@"Storm",
                     @"Elektra",@"Valkyrie",@"Scarlet-witch",@"Cat-woman"];
        names = @[@"Sean Banan",@"Popeye",@"Handyman Manny",@"Bob the Builder",@"Postman Pat",
                  @"Snoopy",@"Winnie the Pooh",@"Lagoona Blue",@"Frankie Stein",@"Cleo de Nile",
                  @"Shakira",@"Clawdeena Wolf",@"Ghoulia Yelps",@"Draculaura",@"Abbey Bominable",
                  @"Spectra Vondergeist"];
        device = @[@"vaccuum-cleaner",@"lawn-mower",@"bus",@"train",@"tanker",@"tractor",
                 @"jeep",@"cycle"];
        food = @[@"sushi",@"pancakes",@"waffles",@"spaghetti and meatballs",@"pizza",
                 @"rice and curry",@"dumplings",@"roast chicken"];
        drink = @[@"diet-coke",@"fanta",@"sprite",@"tea",@"coffee",@"milk",@"hot-chocolate",
                  @"latte",@"espresso",@"water",@"vodka"];
        exclamation = @[@"oops!",@"yikes!",@"help!",@"leaping!",@"lizards!",@"jeepers!",
                        @"creepers!",@"blistering barnacles!",@"eek!",@"oh rats!",
                        @"shiver me timbers!",@"ouch!"];
        adverb = @[@"quickly",@"slowly",@"roughly",@"carefully",@"meaningfully",@"lovingly",
                   @"warmly"];

        
    }
    return self;
}

-(NSString*)createActionStory {
    NSString *story = @"&Heroes and &Heroines were the bravest superheroes in Gothenburg. They flew around the city dressed in their distinctive superhero costumes. &Heroes wore his famous &Color &Clothing and &Heroiness wore her equally famous and well known &Color &Clothing.Last week they rescued a(n) &Animals before it could get run over by a  vaccuum cleaner and rescued a(n) &Animals just before it was made to walk the plank by the &AdjectivesHorror &Captain &Colors &Bodyparts and his motely crew of &AdjectivesHorror pirates.One &Season &TimeOfDay. they saw that &Names. was about to be used as target practice by a trigger happy gang of lawless bandits. &Heroes yelled ”&Exclamations”! &Heroines cried out ”&ForeignWords”! They swooped &Adverbs down from the sky!! &Heroes got hold of one bandit's &Bodyparts and administered over &Numbers punches. The air was filled with the sound of loud &Sounds(s). The bandit screamed ”&Exclamations! and ran away. &Heroines caught two bandits by their &Bodyparts and immediately started to box their &Bodyparts. With a massive &Sounds they lost consciousness. The rest of the bandits just turned tail and ran away as fast as their legs could carry them. They were never ever seen in Gothenburg again! &Names was very happy and grateful to be rescued by the super duo!";
    return story;
}

-(NSString*)createLoveStory{
    NSString *story = @"One &Seasons &Day, &Heroes saw &Heroines &Adverb walking down the street. &Heroines had &Color &Bodyparts and &Color &Bodyparts. She was wearing a &Color &Clothing and &Color &Clothing. ”I must talk to her”, he thought. But just as &Heroes prepared to approach &Heroines, a &Animals crossed her path. She gasped and cried out, ”&Exclamation ”!&Heroes used his super powers to &Adverb and reach her side and catch her before she fainted. When &Heroines opened her eyes, the first thing she saw was &Heroes's &Color &Bodyparts. ”Oh, my!”she thought, ”I have never seen such &AdjectivesRomance &Bodyparts, he sure is &AdjectivesRomance”. She smiled at him and said ”Thank you so much for rescuing me from that &AdjectivesHorror &Animals”. &Heroes felt like a proper superhero!They made their way to the local pub, The Eating Place. He ordered a plate of &Favfoods and she ordered a bowl of &Favfood. While they waited for their order to arrive, &Heroes asked &Heroines what her favorite hobby was. ”I just love to twirl &Nouns in the air” she said. ”Wow! That is impressive!” said &Heroes, ”I just can't get enough of jumping over a &Nouns.” ”Incredible!, said &Heroines. They looked &Adverbs at each other. It was the beginning of a wonderful partnership!";
    return story;
}

-(NSString*)createHorrorStory{

    NSString *story = @"&Names will never forget that &AdjectivesHorror night. &Names was relaxing with a large mug of his/her favorite drink, &FavDrink, when  suddenely he/she heard a loud &Sounds from the basement. &Names Jumped up, grabbed a flashlight and went to investigate. He/She opened the door just a bit and pointed his/her flashlight, only to see a pair of &Color eyes shining in the light. &Names gasped and yelped ”&Exclamations!”. There was another loud &Sounds and &Names turned and ran back up the stairs. &Names could hear the &AdjectivesHorror creature just behind him/her. ”I should've locked the door, &ForeignWord!” thought &Names, but it was too late.&Names turned around and faced the &AdjectivesHorror creature. It was huge and slimy, with &Colored &Bodyparts and &Colored splotches all over. &Names grabbed a(n) &Noun and threw it at the monster, but the &AdjectivesHorror beast just swallowed it whole! Next, &Names threw a &Noun at it, but it just bounced off of his &AdjectivesHorror &Bodyparts. &Names began to think this is it, when with a shout of  ”&Exclamation!” in jumped &Heroes and &Heroines through &Name's window. They punched the slimy creature on it's &BodyPart. It just collapsed and melted into a pool of slime. &Names thanked &Heros & &Heroines for saving his/her life. ”That is what we do!”, they said before flying off into the night!";
    return story;

}

@end
