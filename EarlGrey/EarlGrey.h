//
//  EarlGrey.h
//  EarlGrey
//
//  Created by Jaroslaw Gliwinski on 2020-04-08.
//

#import <Foundation/Foundation.h>

//! Project version number for EarlGrey.
FOUNDATION_EXPORT double EarlGreyVersionNumber;

//! Project version string for EarlGrey.
FOUNDATION_EXPORT const unsigned char EarlGreyVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <EarlGrey/PublicHeader.h>

#import "GREYAction.h"
#import "GREYActionsShorthand.h"
#import "GREYInteraction.h"
#import "GREYHostBackgroundDistantObject+GREYApp.h"
#import "GREYMatchersShorthand.h"
#import "GREYAssertionBlock.h"
#import "GREYConfiguration.h"
#import "GREYHostApplicationDistantObject.h"
#import "GREYTestApplicationDistantObject.h"
#import "GREYErrorConstants.h"
#import "GREYFailureHandler.h"
#import "GREYFrameworkException.h"
#import "GREYDefines.h"
#import "GREYElementMatcherBlock.h"
#import "GREYMatcher.h"
#import "XCTestCase+GREYSystemAlertHandler.h"
#import "GREYAssertionDefines.h"
#import "GREYCondition.h"
