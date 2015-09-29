//
//  Gameplay.m
//  PeevedPenguins
//
//  Created by Vitaliy on 27/09/15.
//  Copyright © 2015 Apportable. All rights reserved.
//

#import "Gameplay.h"

@implementation Gameplay {
    
    CCPhysicsNode *_physicsNode;
    CCNode *_catapultArm;
    
}

- (void)didLoadFromCCB {
    
    self.userInteractionEnabled = YES;
    
}

- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event {
    
    [self launchPenguin];
    
}

- (void)launchPenguin {
    
    CCNode *penguin = [CCBReader load:@"Penguin"];
    
    penguin.position = ccpAdd(_catapultArm.position, ccp(16, 50));
    
    [_physicsNode addChild:penguin];
    
    CGPoint launchDirection = ccp(1, 0);
    CGPoint force = ccpMult(launchDirection, 8000);
    
    [penguin.physicsBody applyForce:force];
    
}

@end
