# CJColorExample
* CJColor - a easy way to use UIColor by color name, RGB, HEXString

_____________________________________________

### Author:CoderChenJun
### Email:Coder.ChenJun@qq.com

____________________________________________
## Catalog
* Describtion<br>
  * initialisations
  * get color components and values
  * color name
* Usage<br>
  * HEXString
  * color name
  * RGB

____________________________________________
## Describtion
### initialisations<br>
```objc 
/** R: G: B: A: */
+ (UIColor *)RGBColorWithRed:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue alpha:(CGFloat)alpha;

/** R: G: B: A=1 */
+ (UIColor *)RGBColorWithRed:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue;

/** Hexadecimal:(#000000) A: */
+ (UIColor *)colorWithHexString:(NSString *)hexColorString alpha:(CGFloat)alpha;

/** Hexadecimal:(#000000) A=1 */
+ (UIColor *)colorWithHexString:(NSString *)hexColorString;
```

### get color components and values<br>
```objc 
- (CGFloat)redValue;
- (NSUInteger)RGBRedValue;

- (CGFloat)greenValue;
- (NSUInteger)RGBGreenValue;

- (CGFloat)blueValue;
- (NSUInteger)RGBBlueValue;

- (CGFloat)alphaValue;
```

### color name<br>
* name starting with A
```objc
/** 爱丽丝蓝色 */
+ (UIColor *)aliceBlueColor;
/** 古白色 */
+ (UIColor *)antiqueWhiteColor;
/** 水绿色 */
+ (UIColor *)aquaColor;
/** 碧绿色 */
+ (UIColor *)aquamarineColor;
/** 蔚蓝色 */
+ (UIColor *)azureColor;
```

* name starting with B
```objc
/** 米色 */
+ (UIColor *)beigeColor;
/** 乳脂色 */
+ (UIColor *)bisqueColor;
//+ (UIColor *)blackColor;
/** 漂白后的杏仁色 */
+ (UIColor *)blanchedAlmondColor;
//+ (UIColor *)blueColor;
/** 蓝紫罗兰色 */
+ (UIColor *)blueVioletColor;
//+ (UIColor *)brownColor;
/** 树干色 */
+ (UIColor *)burlyWoodColor;
```

* name starting with C
```objc
/** 军校蓝色 */
+ (UIColor *)cadetBlueColor;
/** 查特酒绿色 */
+ (UIColor *)chartreuseColor;
/** 巧克力色 */
+ (UIColor *)chocolateColor;
/** 珊瑚色 */
+ (UIColor *)coralColor;
/** 矢车菊蓝色 */
+ (UIColor *)cornflowerBlueColor;
/** 玉米色 */
+ (UIColor *)cornsilkColor;
/** 猩红色 */
+ (UIColor *)crimsonColor;
//+ (UIColor *)cyanColor;
```

* name starting with D
```objc
/** 深蓝色 */
+ (UIColor *)darkBlueColor;
/** 深青色 */
+ (UIColor *)darkCyanColor;
/** 暗金杖色 */
+ (UIColor *)darkGoldenRodColor;
//+ (UIColor *)darkGrayColor;
/** 深绿色 */
+ (UIColor *)darkGreenColor;
/** 暗卡其色 */
+ (UIColor *)darkKhakiColor;
/** 深洋紫色 */
+ (UIColor *)darkMagentaColor;
/** 深橄榄绿色 */
+ (UIColor *)darkOliveGreenColor;
/** 深橙色 */
+ (UIColor *)darkOrangeColor;
/** 暗兰色 */
+ (UIColor *)darkOrchidColor;
/** 深红色 */
+ (UIColor *)darkRedColor;
/** 深鲜肉色 */
+ (UIColor *)darkSalmonColor;
/** 深海洋绿色 */
+ (UIColor *)darkSeaGreenColor;
/** 深板岩蓝色 */
+ (UIColor *)darkSlateBlueColor;
/** 深石板灰色 */
+ (UIColor *)darkSlateGrayColor;
/** 深宝石绿色 */
+ (UIColor *)darkTurquoiseColor;
/** 深紫罗兰色 */
+ (UIColor *)darkVioletColor;
/** 深粉红色 */
+ (UIColor *)deepPinkColor;
/** 深天蓝色 */
+ (UIColor *)deepSkyBlueColor;
/** 暗灰色 */
+ (UIColor *)dimGrayColor;
/** 宝蓝色 */
+ (UIColor *)dodgerBlueColor;
```

* name starting with F
```objc
/** 火砖色 */
+ (UIColor *)fireBrickColor;
/** 白花色 */
+ (UIColor *)floralWhiteColor;
/** 森林绿色 */
+ (UIColor *)forestGreenColor;
/** 紫红色 */
+ (UIColor *)fuchsiaColor;
```

* name starting with G
```objc
/** Gainsboro色 */
+ (UIColor *)gainsboroColor;
/** 幽灵白色 */
+ (UIColor *)ghostWhiteColor;
/** 金色 */
+ (UIColor *)goldColor;
/** 秋色 */
+ (UIColor *)goldenRodColor;
//+ (UIColor *)grayColor;
+ (UIColor *)greenGOColor;
/** 绿黄色 */
+ (UIColor *)greenYellowColor;
```

* name starting with H
```objc
/** 浅粉红色 */
+ (UIColor *)honeyDewColor;
/** 热情的粉红色 */
+ (UIColor *)hotPinkColor;
```

* name starting with I
```objc
/** 印度红色 */
+ (UIColor *)indianRedColor;
/** 靛青色 */
+ (UIColor *)indigoColor;
/** 象牙色 */
+ (UIColor *)ivoryColor;
```

* name starting with K
```objc
/** 卡其色 */
+ (UIColor *)khakiColor;
```

* name starting with L
```objc
/** 薰衣草花的淡紫色 */
+ (UIColor *)lavenderColor;
/** 苍白的紫罗兰红色 */
+ (UIColor *)lavenderBlushColor;
/** 草坪绿色 */
+ (UIColor *)lawnGreenColor;
/** 柠檬沙色 */
+ (UIColor *)lemonChiffonColor;
/** 淡蓝色 */
+ (UIColor *)lightBlueColor;
/** 浅珊瑚色 */
+ (UIColor *)lightCoralColor;
/** 淡青色 */
+ (UIColor *)lightCyanColor;
/** 浅秋麒麟黄 */
+ (UIColor *)lightGoldenRodYellowColor;
//+ (UIColor *)lightGrayColor;
/** 淡绿色 */
+ (UIColor *)lightGreenColor;
/** 浅粉色 */
+ (UIColor *)lightPinkColor;
/** 浅鲜肉色 */
+ (UIColor *)lightSalmonColor;
/** 浅海洋绿色 */
+ (UIColor *)lightSeaGreenColor;
/** 淡天蓝色 */
+ (UIColor *)lightSkyBlueColor;
/** 浅石板灰色 */
+ (UIColor *)lightSlateGrayColor;
/** 淡钢蓝色 */
+ (UIColor *)lightSteelBlueColor;
/** 淡黄色 */
+ (UIColor *)lightYellowColor;
/** 柠檬色 */
+ (UIColor *)limeColor;
/** 柠檬绿色 */
+ (UIColor *)limeGreenColor;
/** 亚麻色 */
+ (UIColor *)linenColor;
```

* name starting with M
```objc
//+ (UIColor *)magentaColor;
/** 栗色 */
+ (UIColor *)maroonColor;
/** 适中的碧绿色 */
+ (UIColor *)mediumAquaMarineColor;
/** 适中的蓝色 */
+ (UIColor *)mediumBlueColor;
/** 适中的兰花紫色 */
+ (UIColor *)mediumOrchidColor;
/** 中的紫色 */
+ (UIColor *)mediumPurpleColor;
/** 适中的海洋绿色 */
+ (UIColor *)mediumSeaGreenColor;
/** 适中的板岩蓝色 */
+ (UIColor *)mediumSlateBlueColor;
/** 适中的春天的绿色 */
+ (UIColor *)mediumSpringGreenColor;
/** 适中的宝石绿色 */
+ (UIColor *)mediumTurquoiseColor;
/** 栗色 */
+ (UIColor *)mediumVioletRedColor;
/** 适中的紫罗兰红色 */
+ (UIColor *)midnightBlueColor;
/** 薄荷奶油色 */
+ (UIColor *)mintCreamColor;
/** 雾中玫瑰色 */
+ (UIColor *)mistyRoseColor;
/** 鹿皮色 */
+ (UIColor *)moccasinColor;
```

* name starting with N
```objc
/** 耐尔洁白色 */
+ (UIColor *)navajoWhiteColor;
/** 海军蓝色 */
+ (UIColor *)navyColor;
```

* name starting with O
```objc
/** 老饰带色 */
+ (UIColor *)oldLaceColor;
/** 橄榄色 */
+ (UIColor *)oliveColor;
/** 橄榄褐色 */
+ (UIColor *)oliveDrabColor;
//+ (UIColor *)orangeColor;
/** 橙红色 */
+ (UIColor *)orangeRedColor;
/** 兰花紫色 */
+ (UIColor *)orchidColor;
```

* name starting with P
```objc
/** 灰秋色 */
+ (UIColor *)paleGoldenRodColor;
/** 浅绿色 */
+ (UIColor *)paleGreenColor;
/** 苍白的宝石绿色 */
+ (UIColor *)paleTurquoiseColor;
/** 脸红的淡紫红色 */
+ (UIColor *)paleVioletRedColor;
/** 番木瓜色 */
+ (UIColor *)papayaWhipColor;
/** 桃色 */
+ (UIColor *)peachPuffColor;
/** 秘鲁色 */
+ (UIColor *)peruColor;
/** 粉色 */
+ (UIColor *)pinkColor;
/** 青紫色 */
+ (UIColor *)plumColor;
/** 火药蓝色 */
+ (UIColor *)powderBlueColor;
//+ (UIColor *)purpleColor;
```

* name starting with R
```objc
//+ (UIColor *)redColor;
/** 玫瑰棕色 */
+ (UIColor *)rosyBrownColor;
/** 皇家蓝色 */
+ (UIColor *)royalBlueColor;
```

* name starting with S
```objc
/** 马鞍棕色 */
+ (UIColor *)saddleBrownColor;
/** 肉色 */
+ (UIColor *)salmonColor;
/** 沙棕色 */
+ (UIColor *)sandyBrownColor;
/** 海洋绿色 */
+ (UIColor *)seaGreenColor;
/** 海贝色 */
+ (UIColor *)seaShellColor;
/** 土黄赭色 */
+ (UIColor *)siennaColor;
/** 银白色 */
+ (UIColor *)silverColor;
/** 天蓝色 */
+ (UIColor *)skyBlueColor;
/** 板岩蓝色 */
+ (UIColor *)slateBluColor;
/** 板岩灰色 */
+ (UIColor *)slateGrayColor;
/** 雪色 */
+ (UIColor *)snowColor;
/** 春天绿色 */
+ (UIColor *)springGreenColor;
/** 钢蓝色 */
+ (UIColor *)steelBlueColor;
```

* name starting with T
```objc
/** 晒色 */
+ (UIColor *)tanColor;
/** 水鸭色 */
+ (UIColor *)tealColor;
/** 苍紫色 */
+ (UIColor *)thistleColor;
/** 茄色 */
+ (UIColor *)tomatoColor;
/** 绿宝石色 */
+ (UIColor *)turquoiseColor;
```

* name starting with V
```objc
/** 紫罗兰色 */
+ (UIColor *)violetColor;
```

* name starting with W
```objc
/** 小麦色 */
+ (UIColor *)wheatColor;
//+ (UIColor *)whiteColor;
/** 烟白色 */
+ (UIColor *)whiteSmokeColor;
```

* name starting with Y
```objc
//+ (UIColor *)yellowColor;
/** 黄绿色 */
+ (UIColor *)yellowGreenColor;
```

____________________________________________

## Usage
### HEXString<br>
```objc 
UILabel *view0 = [[UILabel alloc] initWithFrame:CGRectMake(30, 30, 250, 50)];
view0.backgroundColor = HEXColor(@"#FFF0F5");
view0.text = @"HEXColor(@\"#FFF0F5\");";
[self.view addSubview:view0];
```
### color name<br>
```objc 
UILabel *view1 = [[UILabel alloc] initWithFrame:CGRectMake(30, 90, 250, 50)];
view1.text = @"[UIColor goldColor];";
[self.view addSubview:view1];
```
```objc 
UILabel *view2 = [[UILabel alloc] initWithFrame:CGRectMake(30, 150, 250, 50)];
view2.backgroundColor = [UIColor dodgerBlueColor];
view2.text = @"[UIColor dodgerBlueColor];";
[self.view addSubview:view2];
```
### RGB<br>
```objc 
UILabel *view3 = [[UILabel alloc] initWithFrame:CGRectMake(30, 210, 250, 50)];
view3.backgroundColor = RGBColor(123, 234, 10);
view3.text = @"RGBColor(123, 234, 10);";
[self.view addSubview:view3];
```
![smile](https://github.com/CoderChenJun/CJColorExample/blob/master/readmeImg.png "readmeImg.png")<br>
___________________________________










