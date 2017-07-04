//
//  UIColor+CJ.m
//  CJColorExample
//
//  Created by Chen_Jun on 2017/7/4.
//  Copyright © 2017年 zwu. All rights reserved.
//

#import "UIColor+CJ.h"

@implementation UIColor (CJ)

#pragma mark -
#pragma mark - custom initialisations

/** R: G: B: A: */
+ (UIColor *)RGBColorWithRed:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue alpha:(CGFloat)alpha {
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}

/** R: G: B: A=1 */
+ (UIColor *)RGBColorWithRed:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue {
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1.0];
}

/** 十六进制(#000000) A: */
+ (UIColor *)colorWithHexString:(NSString *)hexColorString alpha:(CGFloat)alpha {
    
    unsigned colorValue = 0;
    
    NSScanner *valueScanner = [NSScanner scannerWithString:hexColorString];
    
    if ([hexColorString rangeOfString:@"#"].location != NSNotFound) [valueScanner setScanLocation:1];
    
    [valueScanner scanHexInt:&colorValue];
    
    return [UIColor colorWithRed:((colorValue & 0xFF0000) >> 16)/255.0 green:((colorValue & 0xFF00) >> 8)/255.0 blue:((colorValue & 0xFF) >> 0)/255.0 alpha:alpha];
}

/** 十六进制(#000000) A=1 */
+ (UIColor *)colorWithHexString:(NSString *)hexColorString {
    
    return [self colorWithHexString:hexColorString alpha:1.0];
}




- (CGFloat)getComponentValueForIndex:(NSUInteger)index {
    
    CGColorRef thisColorRef = [self CGColor];
    
    int numberOfComponents = (int)CGColorGetNumberOfComponents(thisColorRef);
    
    const CGFloat *components = NULL;
    
    if (numberOfComponents == 4) CGColorGetComponents(thisColorRef);
    
    CGColorRelease(thisColorRef);
    
    return components[index];
}

#pragma mark -
#pragma mark - get color components and values

- (CGFloat)redValue {
    
    return [self getComponentValueForIndex:0];
}

- (NSUInteger)RGBRedValue {
    
    return [self getComponentValueForIndex:0] * 255.0;
}

- (CGFloat)greenValue {
    
    return [self getComponentValueForIndex:1];
}

- (NSUInteger)RGBGreenValue {
    
    return [self getComponentValueForIndex:1] * 255.0;
}

- (CGFloat)blueValue {
    
    return [self getComponentValueForIndex:2];
}

- (NSUInteger)RGBBlueValue {
    
    return [self getComponentValueForIndex:2] * 255.0;
}

- (CGFloat)alphaValue {
    
    return [self getComponentValueForIndex:3];
}

#pragma mark -
#pragma mark - custom X11/W3C colors

+ (UIColor *)Color {

    return [UIColor colorWithHexString:@""];
}


#pragma mark -
#pragma mark - A:

+ (UIColor *)aliceBlueColor {
    
    return [UIColor colorWithHexString:@"#F0F8FF"];
}

+ (UIColor *)antiqueWhiteColor {
    
    return [UIColor colorWithHexString:@"#FAEBD7"];
}

+ (UIColor *)aquaColor {
    
    return [UIColor colorWithHexString:@"#00FFFF"];
}

+ (UIColor *)aquamarineColor {
    
    return [UIColor colorWithHexString:@"#7FFFD4"];
}

+ (UIColor *)azureColor {
    
    return [UIColor colorWithHexString:@"#F0FFFF"];
}

#pragma mark -
#pragma mark - B:

+ (UIColor *)beigeColor {
    
    return [UIColor colorWithHexString:@"#F5F5DC"];
}

+ (UIColor *)bisqueColor {
    
    return [UIColor colorWithHexString:@"#FFE4C4"];
}

//+ (UIColor *)blackColor {
//
//    return [UIColor colorWithHexString:@"#000000"];
//}

+ (UIColor *)blanchedAlmondColor {
    
    return [UIColor colorWithHexString:@"#FFEBCD"];
}

//+ (UIColor *)blueColor {
//
//    return [UIColor colorWithHexString:@"#0000FF"];
//}

+ (UIColor *)blueVioletColor {
    
    return [UIColor colorWithHexString:@"#8A2BE2"];
}

//+ (UIColor *)brownColor {
//
//    return [UIColor colorWithHexString:@"#A52A2A"];
//}

+ (UIColor *)burlyWoodColor {
    
    return [UIColor colorWithHexString:@"#DEB887"];
}

#pragma mark -
#pragma mark - C:

+ (UIColor *)cadetBlueColor {
    
    return [UIColor colorWithHexString:@"#5F9EA0"];
}

+ (UIColor *)chartreuseColor {
    
    return [UIColor colorWithHexString:@"#7FFF00"];
}

+ (UIColor *)chocolateColor {
    
    return [UIColor colorWithHexString:@"#D2691E"];
}

+ (UIColor *)coralColor {
    
    return [UIColor colorWithHexString:@"#FF7F50"];
}

+ (UIColor *)cornflowerBlueColor {
    
    return [UIColor colorWithHexString:@"#6495ED"];
}

+ (UIColor *)cornsilkColor {
    
    return [UIColor colorWithHexString:@"#FFF8DC"];
}

+ (UIColor *)crimsonColor {
    
    return [UIColor colorWithHexString:@"#DC143C"];
}

//+ (UIColor *)cyanColor {
//
//    return [UIColor colorWithHexString:@"#00FFFF"];
//}

#pragma mark -
#pragma mark - D:

+ (UIColor *)darkBlueColor {
    
    return [UIColor colorWithHexString:@"#00008B"];
}

+ (UIColor *)darkCyanColor {
    
    return [UIColor colorWithHexString:@"#008B8B"];
}

+ (UIColor *)darkGoldenRodColor {
    
    return [UIColor colorWithHexString:@"#B8860B"];
}

//+ (UIColor *)darkGrayColor {
//
//    return [UIColor colorWithHexString:@"#A9A9A9"];
//}

+ (UIColor *)darkGreenColor {
    
    return [UIColor colorWithHexString:@"#006400"];
}

+ (UIColor *)darkKhakiColor {
    
    return [UIColor colorWithHexString:@"#BDB76B"];
}

+ (UIColor *)darkMagentaColor {
    
    return [UIColor colorWithHexString:@"#8B008B"];
}

+ (UIColor *)darkOliveGreenColor {
    
    return [UIColor colorWithHexString:@"#556B2F"];
}

+ (UIColor *)darkOrangeColor {
    
    return [UIColor colorWithHexString:@"#FF8C00"];
}

+ (UIColor *)darkOrchidColor {
    
    return [UIColor colorWithHexString:@"#9932CC"];
}

+ (UIColor *)darkRedColor {
    
    return [UIColor colorWithHexString:@"#8B0000"];
}

+ (UIColor *)darkSalmonColor {
    
    return [UIColor colorWithHexString:@"#E9967A"];
}

+ (UIColor *)darkSeaGreenColor {
    
    return [UIColor colorWithHexString:@"#8FBC8F"];
}

+ (UIColor *)darkSlateBlueColor {
    
    return [UIColor colorWithHexString:@"#483D8B"];
}

+ (UIColor *)darkSlateGrayColor {
    
    return [UIColor colorWithHexString:@"#2F4F4F"];
}

+ (UIColor *)darkTurquoiseColor {
    
    return [UIColor colorWithHexString:@"#00CED1"];
}

+ (UIColor *)darkVioletColor {
    
    return [UIColor colorWithHexString:@"#9400D3"];
}

+ (UIColor *)deepPinkColor {
    
    return [UIColor colorWithHexString:@"#FF1493"];
}

+ (UIColor *)deepSkyBlueColor {
    
    return [UIColor colorWithHexString:@"#00BFFF"];
}

+ (UIColor *)dimGrayColor {
    
    return [UIColor colorWithHexString:@"#696969"];
}

+ (UIColor *)dodgerBlueColor {
    
    return [UIColor colorWithHexString:@"#1E90FF"];
}

#pragma mark -
#pragma mark - E:

#pragma mark -
#pragma mark - F:

+ (UIColor *)fireBrickColor {
    
    return [UIColor colorWithHexString:@"#B22222"];
}

+ (UIColor *)floralWhiteColor {
    
    return [UIColor colorWithHexString:@"#FFFAF0"];
}

+ (UIColor *)forestGreenColor {
    
    return [UIColor colorWithHexString:@"#228B22"];
}

+ (UIColor *)fuchsiaColor {
    
    return [UIColor colorWithHexString:@"#FF00FF"];
}

#pragma mark -
#pragma mark - G:

+ (UIColor *)gainsboroColor {
    
    return [UIColor colorWithHexString:@"#DCDCDC"];
}

+ (UIColor *)ghostWhiteColor {
    
    return [UIColor colorWithHexString:@"#F8F8FF"];
}

+ (UIColor *)goldColor {
    
    return [UIColor colorWithHexString:@"#FFD700"];
}

+ (UIColor *)goldenRodColor {
    
    return [UIColor colorWithHexString:@"#DAA520"];
}

//+ (UIColor *)grayColor {
//
//    return [UIColor colorWithHexString:@"#808080"];
//}

+ (UIColor *)greenGOColor {
    
    return [UIColor colorWithHexString:@"#008000"];
}

+ (UIColor *)greenYellowColor {
    
    return [UIColor colorWithHexString:@"#ADFF2F"];
}

#pragma mark -
#pragma mark - H:

+ (UIColor *)honeyDewColor {
    
    return [UIColor colorWithHexString:@"#F0FFF0"];
}

+ (UIColor *)hotPinkColor {
    
    return [UIColor colorWithHexString:@"#FF69B4"];
}

#pragma mark -
#pragma mark - I:

+ (UIColor *)indianRedColor {
    
    return [UIColor colorWithHexString:@"#CD5C5C"];
}

+ (UIColor *)indigoColor {
    
    return [UIColor colorWithHexString:@"#4B0082"];
}

+ (UIColor *)ivoryColor {
    
    return [UIColor colorWithHexString:@"#FFFFF0"];
}

#pragma mark -
#pragma mark - J:

#pragma mark -
#pragma mark - K:

+ (UIColor *)khakiColor {
    
    return [UIColor colorWithHexString:@"#F0E68C"];
}

#pragma mark -
#pragma mark - L:

+ (UIColor *)lavenderColor {
    
    return [UIColor colorWithHexString:@"#E6E6FA"];
}

+ (UIColor *)lavenderBlushColor {
    
    return [UIColor colorWithHexString:@"#FFF0F5"];
}

+ (UIColor *)lawnGreenColor {
    
    return [UIColor colorWithHexString:@"#7CFC00"];
}

+ (UIColor *)lemonChiffonColor {
    
    return [UIColor colorWithHexString:@"#FFFACD"];
}

+ (UIColor *)lightBlueColor {
    
    return [UIColor colorWithHexString:@"#ADD8E6"];
}

+ (UIColor *)lightCoralColor {
    
    return [UIColor colorWithHexString:@"#F08080"];
}

+ (UIColor *)lightCyanColor {
    
    return [UIColor colorWithHexString:@"#E0FFFF"];
}

+ (UIColor *)lightGoldenRodYellowColor {
    
    return [UIColor colorWithHexString:@"#FAFAD2"];
}

//+ (UIColor *)lightGrayColor {
//
//    return [UIColor colorWithHexString:@"#D3D3D3"];
//}

+ (UIColor *)lightGreenColor {
    
    return [UIColor colorWithHexString:@"#90EE90"];
}

+ (UIColor *)lightPinkColor {
    
    return [UIColor colorWithHexString:@"#FFB6C1"];
}

+ (UIColor *)lightSalmonColor {
    
    return [UIColor colorWithHexString:@"#FFA07A"];
}

+ (UIColor *)lightSeaGreenColor {
    
    return [UIColor colorWithHexString:@"#20B2AA"];
}

+ (UIColor *)lightSkyBlueColor {
    
    return [UIColor colorWithHexString:@"#87CEFA"];
}

+ (UIColor *)lightSlateGrayColor {
    
    return [UIColor colorWithHexString:@"#778899"];
}

+ (UIColor *)lightSteelBlueColor {
    
    return [UIColor colorWithHexString:@"#B0C4DE"];
}

+ (UIColor *)lightYellowColor {
    
    return [UIColor colorWithHexString:@"#FFFFE0"];
}

+ (UIColor *)limeColor {
    
    return [UIColor colorWithHexString:@"#00FF00"];
}

+ (UIColor *)limeGreenColor {
    
    return [UIColor colorWithHexString:@"#32CD32"];
}

+ (UIColor *)linenColor {
    
    return [UIColor colorWithHexString:@"#FAF0E6"];
}

#pragma mark -
#pragma mark - M:

//+ (UIColor *)magentaColor {
//
//    return [UIColor colorWithHexString:@"#FF00FF"];
//}

+ (UIColor *)maroonColor {
    
    return [UIColor colorWithHexString:@"800000"];
}

+ (UIColor *)mediumAquaMarineColor {
    
    return [UIColor colorWithHexString:@"#66CDAA"];
}

+ (UIColor *)mediumBlueColor {
    
    return [UIColor colorWithHexString:@"#0000CD"];
}

+ (UIColor *)mediumOrchidColor {
    
    return [UIColor colorWithHexString:@"#BA55D3"];
}

+ (UIColor *)mediumPurpleColor {
    
    return [UIColor colorWithHexString:@"#9370DB"];
}

+ (UIColor *)mediumSeaGreenColor {
    
    return [UIColor colorWithHexString:@"#3CB371"];
}

+ (UIColor *)mediumSlateBlueColor {
    
    return [UIColor colorWithHexString:@"#7B68EE"];
}

+ (UIColor *)mediumSpringGreenColor {
    
    return [UIColor colorWithHexString:@"#00FA9A"];
}

+ (UIColor *)mediumTurquoiseColor {
    
    return [UIColor colorWithHexString:@"#48D1CC"];
}

+ (UIColor *)mediumVioletRedColor {
    
    return [UIColor colorWithHexString:@"#C71585"];
}

+ (UIColor *)midnightBlueColor {
    
    return [UIColor colorWithHexString:@"#191970"];
}

+ (UIColor *)mintCreamColor {
    
    return [UIColor colorWithHexString:@"#F5FFFA"];
}

+ (UIColor *)mistyRoseColor {
    
    return [UIColor colorWithHexString:@"#FFE4E1"];
}

+ (UIColor *)moccasinColor {
    
    return [UIColor colorWithHexString:@"#FFE4B5"];
}

#pragma mark -
#pragma mark - N:

+ (UIColor *)navajoWhiteColor {
    
    return [UIColor colorWithHexString:@"#FFDEAD"];
}

+ (UIColor *)navyColor {
    
    return [UIColor colorWithHexString:@"#000080"];
}

#pragma mark -
#pragma mark - O:

+ (UIColor *)oldLaceColor {
    
    return [UIColor colorWithHexString:@"#FDF5E6"];
}

+ (UIColor *)oliveColor {
    
    return [UIColor colorWithHexString:@"#808000"];
}

+ (UIColor *)oliveDrabColor {
    
    return [UIColor colorWithHexString:@"#6B8E23"];
}

//+ (UIColor *)orangeColor {
//
//    return [UIColor colorWithHexString:@"#FFA500"];
//}

+ (UIColor *)orangeRedColor {
    
    return [UIColor colorWithHexString:@"#FF4500"];
}

+ (UIColor *)orchidColor {
    
    return [UIColor colorWithHexString:@"#DA70D6"];
}

#pragma mark -
#pragma mark - P:

+ (UIColor *)paleGoldenRodColor {
    return [UIColor colorWithHexString:@"#EEE8AA"];
}

+ (UIColor *)paleGreenColor {
    
    return [UIColor colorWithHexString:@"#98FB98"];
}

+ (UIColor *)paleTurquoiseColor {
    
    return [UIColor colorWithHexString:@"#AFEEEE"];
}

+ (UIColor *)paleVioletRedColor {
    
    return [UIColor colorWithHexString:@"#DB7093"];
}

+ (UIColor *)papayaWhipColor {
    
    return [UIColor colorWithHexString:@"#FFEFD5"];
}

+ (UIColor *)peachPuffColor {
    
    return [UIColor colorWithHexString:@"#FFDAB9"];
}

+ (UIColor *)peruColor {
    
    return [UIColor colorWithHexString:@"#CD853F"];
}

+ (UIColor *)pinkColor {
    
    return [UIColor colorWithHexString:@"#FFC0CB"];
}

+ (UIColor *)plumColor {
    
    return [UIColor colorWithHexString:@"#DDA0DD"];
}

+ (UIColor *)powderBlueColor {
    
    return [UIColor colorWithHexString:@"#B0E0E6"];
}

//+ (UIColor *)purpleColor {
//
//    return [UIColor colorWithHexString:@"#800080"];
//}

#pragma mark -
#pragma mark - Q:

#pragma mark -
#pragma mark - R:

//+ (UIColor *)redColor {
//
//    return [UIColor colorWithHexString:@"#FF0000"];
//}

+ (UIColor *)rosyBrownColor {
    
    return [UIColor colorWithHexString:@"#BC8F8F"];
}

+ (UIColor *)royalBlueColor {
    
    return [UIColor colorWithHexString:@"#4169E1"];
}

#pragma mark -
#pragma mark - S:

+ (UIColor *)saddleBrownColor {
    
    return [UIColor colorWithHexString:@"#8B4513"];
}

+ (UIColor *)salmonColor {
    
    return [UIColor colorWithHexString:@"#FA8072"];
}

+ (UIColor *)sandyBrownColor {
    
    return [UIColor colorWithHexString:@"#F4A460"];
}

+ (UIColor *)seaGreenColor {
    
    return [UIColor colorWithHexString:@"#2E8B57"];
}

+ (UIColor *)seaShellColor {
    
    return [UIColor colorWithHexString:@"#FFF5EE"];
}

+ (UIColor *)siennaColor {
    
    return [UIColor colorWithHexString:@"#A0522D"];
}

+ (UIColor *)silverColor {
    
    return [UIColor colorWithHexString:@"#C0C0C0"];
}

+ (UIColor *)skyBlueColor {
    
    return [UIColor colorWithHexString:@"#87CEEB"];
}

+ (UIColor *)slateBluColor {
    
    return [UIColor colorWithHexString:@"#6A5ACD"];
}

+ (UIColor *)slateGrayColor {
    
    return [UIColor colorWithHexString:@"#708090"];
}

+ (UIColor *)snowColor {
    
    return [UIColor colorWithHexString:@"#FFFAFA"];
}

+ (UIColor *)springGreenColor {
    
    return [UIColor colorWithHexString:@"#00FF7F"];
}

+ (UIColor *)steelBlueColor {
    
    return [UIColor colorWithHexString:@"#4682B4"];
}

#pragma mark -
#pragma mark - T:

+ (UIColor *)tanColor {
    
    return [UIColor colorWithHexString:@"#D2B48C"];
}

+ (UIColor *)tealColor {
    
    return [UIColor colorWithHexString:@"#008080"];
}

+ (UIColor *)thistleColor {
    
    return [UIColor colorWithHexString:@"#D8BFD8"];
}

+ (UIColor *)tomatoColor {
    
    return [UIColor colorWithHexString:@"#FF6347"];
}

+ (UIColor *)turquoiseColor {
    
    return [UIColor colorWithHexString:@"#40E0D0"];
}

#pragma mark -
#pragma mark - U:

#pragma mark -
#pragma mark - V:

+ (UIColor *)violetColor {
    
    return [UIColor colorWithHexString:@"#EE82EE"];
}

#pragma mark -
#pragma mark - W:

+ (UIColor *)wheatColor {
    
    return [UIColor colorWithHexString:@"#F5DEB3"];
}

//+ (UIColor *)whiteColor {
//
//    return [UIColor colorWithHexString:@"#FFFFFF"];
//}

+ (UIColor *)whiteSmokeColor {
    
    return [UIColor colorWithHexString:@"#F5F5F5"];
}

#pragma mark -
#pragma mark - X:

#pragma mark -
#pragma mark - Y:

//+ (UIColor *)yellowColor {
//
//    return [UIColor colorWithHexString:@"#FFFF00"];
//}

+ (UIColor *)yellowGreenColor {
    
    return [UIColor colorWithHexString:@"#9ACD32"];
}

#pragma mark -
#pragma mark - Z:


@end


