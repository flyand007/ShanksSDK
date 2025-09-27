// Copyright 2018-2021 Google LLC
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

#import <GoogleMobileAds/GoogleMobileAds.h>

/// Constants used to style your template.
typedef NSString* GADTNativeTemplateStyleKey NS_STRING_ENUM;

/// The font, font color and background color for your call to action view.
/// All templates have a call to action view.
#pragma mark - Call To Action

/// Call to action font. Expects a UIFont.
extern GADTNativeTemplateStyleKey const GADPNativeTemplateStyleKeyCallToActionFont;

/// Call to action font color. Expects a UIColor.
extern GADTNativeTemplateStyleKey const GADPNativeTemplateStyleKeyCallToActionFontColor;

/// Call to action background color. Expects a UIColor.
extern GADTNativeTemplateStyleKey const GADPNativeTemplateStyleKeyCallToActionBackgroundColor;

/// The font, font color and background color for the first row of text in the template.
/// All templates have a primary text area which is populated by the native ad's headline.
#pragma mark - Primary Text

/// Primary text font. Expects a UIFont.
extern GADTNativeTemplateStyleKey const GADPNativeTemplateStyleKeyPrimaryFont;

/// Primary text font color. Expects a UIColor.
extern GADTNativeTemplateStyleKey const GADPNativeTemplateStyleKeyPrimaryFontColor;

/// Primary text background color. Expects a UIColor.
extern GADTNativeTemplateStyleKey const GADPNativeTemplateStyleKeyPrimaryBackgroundColor;

/// The font, font color and background color for the second row of text in the template.
/// All templates have a secondary text area which is populated either by the body of the ad,
/// or by the rating of the app.
#pragma mark - Secondary Text

/// Secondary text font. Expects a UIFont.
extern GADTNativeTemplateStyleKey const GADPNativeTemplateStyleKeySecondaryFont;

/// Secondary text font color. Expects a UIColor.
extern GADTNativeTemplateStyleKey const GADPNativeTemplateStyleKeySecondaryFontColor;

/// Secondary text background color. Expects a UIColor.
extern GADTNativeTemplateStyleKey const GADPNativeTemplateStyleKeySecondaryBackgroundColor;

/// The font, font color and background color for the third row of text in the template.
/// The third row is used to display store name or the default tertiary text.
#pragma mark - Tertiary Text

/// Tertiary text font. Expects a UIFont.
extern GADTNativeTemplateStyleKey const GADPNativeTemplateStyleKeyTertiaryFont;

/// Tertiary text font color. Expects a UIColor.
extern GADTNativeTemplateStyleKey const GADPNativeTemplateStyleKeyTertiaryFontColor;

/// Tertiary text background color. Expects a UIColor.
extern GADTNativeTemplateStyleKey const GADPNativeTemplateStyleKeyTertiaryBackgroundColor;

#pragma mark - Additional Style Options

/// The background color for the bulk of the ad. Expects a UIColor.
extern GADTNativeTemplateStyleKey const GADPNativeTemplateStyleKeyMainBackgroundColor;

/// The corner rounding radius for the icon view and call to action. Expects an NSNumber.
extern GADTNativeTemplateStyleKey const GADPNativeTemplateStyleKeyCornerRadius;

/// The super class for every template object.
/// This class has the majority of all layout and styling logic.
@interface GADPTemplateView : GADNativeAdView
@property(nonatomic, copy) NSDictionary<GADTNativeTemplateStyleKey, NSObject *> *styles;
@property(weak) IBOutlet UILabel *adBadge;
@property(weak) UIView *rootView;

/// Adds a constraint to the superview so that the template spans the width of its parent.
/// Does nothing if there is no superview.
- (void)addHorizontalConstraintsToSuperviewWidth;

/// Adds a constraint to the superview so that the template is centered vertically in its parent.
/// Does nothing if there is no superview.
- (void)addVerticalCenterConstraintToSuperview;

/// Utility method to get a color from a hex string.
+ (UIColor *)colorFromHexString:(NSString *)hexString;

- (NSString *)getTemplateTypeName;
@end
