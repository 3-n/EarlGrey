//
// Copyright 2017 Google Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
#import "GREYFailureScreenshotSaver.h"

#import "NSFileManager+GREYCommon.h"
#import "GREYConfiguration.h"
#import "GREYError.h"

@implementation GREYFailureScreenshotSaver

+ (NSArray *)saveFailureScreenshotsInDictionary:(NSDictionary *)screenshotsDict
                                    toDirectory:(NSString *)screenshotDir {
  NSMutableArray<NSString *> *screenshotPaths = [[NSMutableArray alloc] init];

  // Save and log screenshot, before and after images (if available).
  UIImage *screenshot = screenshotsDict[kGREYScreenshotAtFailure];
  if (screenshot) {
    [screenshotPaths addObject:[NSFileManager grey_saveImageAsPNG:screenshot
                                                           toFile:@"screenshot.png"
                                                      inDirectory:screenshotDir]];
  }

  screenshot = screenshotsDict[kGREYScreenshotBeforeImage];
  if (screenshot) {
    [screenshotPaths addObject:[NSFileManager grey_saveImageAsPNG:screenshot
                                                           toFile:@"visibility_before.png"
                                                      inDirectory:screenshotDir]];
  }

  screenshot = screenshotsDict[kGREYScreenshotExpectedAfterImage];
  if (screenshot) {
    [screenshotPaths addObject:[NSFileManager grey_saveImageAsPNG:screenshot
                                                           toFile:@"visibility_after_expected.png"
                                                      inDirectory:screenshotDir]];
  }

  screenshot = screenshotsDict[kGREYScreenshotActualAfterImage];
  if (screenshot) {
    [screenshotPaths addObject:[NSFileManager grey_saveImageAsPNG:screenshot
                                                           toFile:@"visibility_after_actual.png"
                                                      inDirectory:screenshotDir]];
  }
  return [screenshotPaths copy];
}

@end
