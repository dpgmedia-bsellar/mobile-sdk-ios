/*   Copyright 2018 APPNEXUS INC
 
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

#import <Foundation/Foundation.h>
#import "ANAdResponseInfo.h"
#import "ANGlobal.h"

@interface ANBaseAdObject : NSObject

@property (nonatomic, readwrite, strong)  NSString              *content;
@property (nonatomic, readwrite, strong)  NSString              *height;
@property (nonatomic, readwrite, strong)  NSString              *width;

@property (nonatomic, readwrite, strong)  NSString              *adType;
@property (nonatomic, readwrite, strong)  NSString              *creativeId;
@property (nonatomic, readwrite, strong)  NSArray<NSString *>   *impressionUrls;
@property (nonatomic, readwrite, strong)  ANAdResponseInfo      *adResponseInfo;
@property (nonatomic, readwrite, assign)  ANImpressionType      impressionType;

@end
