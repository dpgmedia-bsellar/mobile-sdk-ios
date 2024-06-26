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

#import "ANNativeAdView.h"


@implementation ANNativeAdView

@synthesize nativeResponse = _nativeResponse;

-(void) setNativeResponse:(ANNativeAdResponse *)nativeAdResponse {
    _nativeResponse = nativeAdResponse;
    self.titleLabel.text = nativeAdResponse.title;
    self.bodyLabel.text = nativeAdResponse.body;
    self.iconImageView.image = nativeAdResponse.iconImage;
    self.mainImageView.image = nativeAdResponse.mainImage;
    self.sponsoredLabel.text = nativeAdResponse.sponsoredBy;
    [self.callToActionButton setTitle:nativeAdResponse.callToAction forState:UIControlStateNormal];
}

@end
