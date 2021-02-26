/*   Copyright 2020 APPNEXUS INC
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import <XCTest/XCTest.h>
#import "Constant.h"
@interface BannerNativeRendererAdTrackerTestVC : XCTestCase

@end

@implementation BannerNativeRendererAdTrackerTestVC

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

/*
 testBannerNativeRendererImpressionTrackerTestAd: To test the impression tracker is fired by the Banner Native Renderer Ad.
 */

- (void)testBannerNativeRendererImpressionTrackerTestAd {
  
    XCUIApplication *app = [[XCUIApplication alloc] init];
    app.launchArguments = [app.launchArguments arrayByAddingObject:BannerNativeRendererImpressionClickTrackerTest];
    [app launch];
    XCUIElement *impressionTracker = app.staticTexts[@"ImpressionTracker"];
    [self waitForElementToAppear:impressionTracker  withTimeout:ImpressionTrackerTimeout];;
    XCTAssertTrue(impressionTracker.exists);
}

/*
 testBannerNativeRendererClickTrackerTestAd: To test the click tracker is fired by the Banner Native Renderer Ad.
 */
- (void)testBannerNativeRendererClickTrackerTestAd {
  
    XCUIApplication *app = [[XCUIApplication alloc] init];
    app.launchArguments = [app.launchArguments arrayByAddingObject:BannerNativeRendererImpressionClickTrackerTest];
    [app launch];
    
     XCUIElement *nativeRendererCampaignStaticText = [[[app.webViews.links[@"Native Renderer Campaign Native Renderer Campaign"] childrenMatchingType:XCUIElementTypeLink] matchingIdentifier:@"Native Renderer Campaign"] elementBoundByIndex:0].staticTexts[@"Native Renderer Campaign"];
    [self waitForElementToAppear:nativeRendererCampaignStaticText  withTimeout:ClickTrackerTimeout];
    [nativeRendererCampaignStaticText tap];
    XCUIElement *clickTracker = app.staticTexts[@"ClickTracker"];
    [self waitForElementToAppear:clickTracker  withTimeout:ClickTrackerTimeout];;
    XCTAssertTrue(clickTracker.exists);
}


/**
  Wait n amount of time for XCUIElement to appear on the screen
  @param element : XCUIElement that's required to appear.
  @param timeout : time for that UIElement wait for to appear.
 */
- (void)waitForElementToAppear:(XCUIElement *)element withTimeout:(NSTimeInterval)timeout
{
    
    NSPredicate *exists = [NSPredicate predicateWithFormat:@"exists == 1"];
    [self expectationForPredicate:exists evaluatedWithObject:element handler:nil];
    [self waitForExpectationsWithTimeout:timeout handler:nil];
}
@end
