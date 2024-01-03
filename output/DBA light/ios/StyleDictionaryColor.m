
//
// StyleDictionaryColor.m
//

// Do not edit directly
// Generated on Wed, 03 Jan 2024 19:18:47 GMT


#import ".h"

@implementation 

+ (UIColor *)color:()colorEnum{
  return [[self values] objectAtIndex:colorEnum];
}

+ (NSArray *)values {
  static NSArray* colorArray;
  static dispatch_once_t onceToken;

  dispatch_once(&onceToken, ^{
    colorArray = @[
[UIColor colorWithRed:0.953f green:0.965f blue:0.988f alpha:1.000f],
[UIColor colorWithRed:0.824f green:0.882f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.698f green:0.788f blue:0.925f alpha:1.000f],
[UIColor colorWithRed:0.573f green:0.694f blue:0.890f alpha:1.000f],
[UIColor colorWithRed:0.447f green:0.600f blue:0.855f alpha:1.000f],
[UIColor colorWithRed:0.322f green:0.506f blue:0.820f alpha:1.000f],
[UIColor colorWithRed:0.196f green:0.412f blue:0.784f alpha:1.000f],
[UIColor colorWithRed:0.141f green:0.294f blue:0.561f alpha:1.000f],
[UIColor colorWithRed:0.086f green:0.176f blue:0.337f alpha:1.000f],
[UIColor colorWithRed:0.027f green:0.059f blue:0.114f alpha:1.000f],
[UIColor colorWithRed:0.941f green:0.945f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.784f green:0.800f blue:0.933f alpha:1.000f],
[UIColor colorWithRed:0.627f green:0.647f blue:0.855f alpha:1.000f],
[UIColor colorWithRed:0.471f green:0.494f blue:0.776f alpha:1.000f],
[UIColor colorWithRed:0.314f green:0.341f blue:0.698f alpha:1.000f],
[UIColor colorWithRed:0.157f green:0.188f blue:0.620f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.035f blue:0.541f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.027f blue:0.408f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.020f blue:0.275f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.012f blue:0.141f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.988f blue:0.976f alpha:1.000f],
[UIColor colorWithRed:0.808f green:0.910f blue:0.863f alpha:1.000f],
[UIColor colorWithRed:0.667f green:0.839f blue:0.769f alpha:1.000f],
[UIColor colorWithRed:0.525f green:0.769f blue:0.675f alpha:1.000f],
[UIColor colorWithRed:0.384f green:0.698f blue:0.580f alpha:1.000f],
[UIColor colorWithRed:0.243f green:0.627f blue:0.486f alpha:1.000f],
[UIColor colorWithRed:0.102f green:0.561f blue:0.392f alpha:1.000f],
[UIColor colorWithRed:0.075f green:0.400f blue:0.278f alpha:1.000f],
[UIColor colorWithRed:0.047f green:0.243f blue:0.165f alpha:1.000f],
[UIColor colorWithRed:0.027f green:0.153f blue:0.098f alpha:1.000f],
[UIColor colorWithRed:0.996f green:0.969f blue:0.945f alpha:1.000f],
[UIColor colorWithRed:0.992f green:0.910f blue:0.835f alpha:1.000f],
[UIColor colorWithRed:0.984f green:0.839f blue:0.706f alpha:1.000f],
[UIColor colorWithRed:0.976f green:0.769f blue:0.576f alpha:1.000f],
[UIColor colorWithRed:0.969f green:0.698f blue:0.447f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.627f blue:0.318f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.557f blue:0.188f alpha:1.000f],
[UIColor colorWithRed:0.678f green:0.392f blue:0.129f alpha:1.000f],
[UIColor colorWithRed:0.404f green:0.227f blue:0.071f alpha:1.000f],
[UIColor colorWithRed:0.133f green:0.067f blue:0.008f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.941f blue:0.945f alpha:1.000f],
[UIColor colorWithRed:0.969f green:0.792f blue:0.800f alpha:1.000f],
[UIColor colorWithRed:0.937f green:0.639f blue:0.651f alpha:1.000f],
[UIColor colorWithRed:0.906f green:0.486f blue:0.502f alpha:1.000f],
[UIColor colorWithRed:0.875f green:0.333f blue:0.353f alpha:1.000f],
[UIColor colorWithRed:0.843f green:0.180f blue:0.204f alpha:1.000f],
[UIColor colorWithRed:0.812f green:0.027f blue:0.055f alpha:1.000f],
[UIColor colorWithRed:0.588f green:0.020f blue:0.039f alpha:1.000f],
[UIColor colorWithRed:0.365f green:0.012f blue:0.024f alpha:1.000f],
[UIColor colorWithRed:0.137f green:0.004f blue:0.012f alpha:1.000f],
[UIColor colorWithRed:0.980f green:0.980f blue:0.980f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.961f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.902f green:0.902f blue:0.902f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.647f green:0.647f blue:0.647f alpha:1.000f],
[UIColor colorWithRed:0.463f green:0.463f blue:0.463f alpha:1.000f],
[UIColor colorWithRed:0.341f green:0.341f blue:0.341f alpha:1.000f],
[UIColor colorWithRed:0.263f green:0.263f blue:0.263f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.161f blue:0.161f alpha:1.000f],
[UIColor colorWithRed:0.102f green:0.102f blue:0.102f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:0.000f],
[UIColor colorWithRed:0.961f green:0.961f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.961f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.824f green:0.882f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.808f green:0.910f blue:0.863f alpha:1.000f],
[UIColor colorWithRed:0.992f green:0.910f blue:0.835f alpha:1.000f],
[UIColor colorWithRed:0.937f green:0.639f blue:0.651f alpha:1.000f],
[UIColor colorWithRed:0.698f green:0.788f blue:0.925f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:0.812f green:0.027f blue:0.055f alpha:1.000f],
[UIColor colorWithRed:0.196f green:0.412f blue:0.784f alpha:1.000f],
[UIColor colorWithRed:0.141f green:0.294f blue:0.561f alpha:1.000f],
[UIColor colorWithRed:0.086f green:0.176f blue:0.337f alpha:1.000f],
[UIColor colorWithRed:0.573f green:0.694f blue:0.890f alpha:1.000f],
[UIColor colorWithRed:0.263f green:0.263f blue:0.263f alpha:1.000f],
[UIColor colorWithRed:0.808f green:0.910f blue:0.863f alpha:1.000f],
[UIColor colorWithRed:0.384f green:0.698f blue:0.580f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.961f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.902f green:0.902f blue:0.902f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.965f blue:0.988f alpha:1.000f],
[UIColor colorWithRed:0.824f green:0.882f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.196f green:0.412f blue:0.784f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.961f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.902f green:0.902f blue:0.902f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.965f blue:0.988f alpha:1.000f],
[UIColor colorWithRed:0.824f green:0.882f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.647f green:0.647f blue:0.647f alpha:1.000f],
[UIColor colorWithRed:0.463f green:0.463f blue:0.463f alpha:1.000f],
[UIColor colorWithRed:0.196f green:0.412f blue:0.784f alpha:1.000f],
[UIColor colorWithRed:0.263f green:0.263f blue:0.263f alpha:1.000f],
[UIColor colorWithRed:0.263f green:0.263f blue:0.263f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.035f blue:0.541f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.035f blue:0.541f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.647f green:0.647f blue:0.647f alpha:1.000f],
[UIColor colorWithRed:0.902f green:0.902f blue:0.902f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.647f green:0.647f blue:0.647f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.647f green:0.647f blue:0.647f alpha:1.000f],
[UIColor colorWithRed:0.902f green:0.902f blue:0.902f alpha:1.000f],
[UIColor colorWithRed:0.263f green:0.263f blue:0.263f alpha:1.000f],
[UIColor colorWithRed:0.463f green:0.463f blue:0.463f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.980f green:0.980f blue:0.980f alpha:1.000f],
[UIColor colorWithRed:0.196f green:0.412f blue:0.784f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.812f green:0.027f blue:0.055f alpha:1.000f],
[UIColor colorWithRed:0.102f green:0.561f blue:0.392f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.961f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.902f green:0.902f blue:0.902f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.902f green:0.902f blue:0.902f alpha:1.000f],
[UIColor colorWithRed:0.980f green:0.980f blue:0.980f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.961f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.902f green:0.902f blue:0.902f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.965f blue:0.988f alpha:1.000f],
[UIColor colorWithRed:0.824f green:0.882f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.102f green:0.102f blue:0.102f alpha:1.000f],
[UIColor colorWithRed:0.196f green:0.412f blue:0.784f alpha:1.000f],
[UIColor colorWithRed:0.141f green:0.294f blue:0.561f alpha:1.000f],
[UIColor colorWithRed:0.086f green:0.176f blue:0.337f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.965f blue:0.988f alpha:1.000f],
[UIColor colorWithRed:0.824f green:0.882f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.698f green:0.788f blue:0.925f alpha:1.000f],
[UIColor colorWithRed:0.102f green:0.561f blue:0.392f alpha:1.000f],
[UIColor colorWithRed:0.075f green:0.400f blue:0.278f alpha:1.000f],
[UIColor colorWithRed:0.047f green:0.243f blue:0.165f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.988f blue:0.976f alpha:1.000f],
[UIColor colorWithRed:0.808f green:0.910f blue:0.863f alpha:1.000f],
[UIColor colorWithRed:0.667f green:0.839f blue:0.769f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.988f blue:0.976f alpha:1.000f],
[UIColor colorWithRed:0.808f green:0.910f blue:0.863f alpha:1.000f],
[UIColor colorWithRed:0.812f green:0.027f blue:0.055f alpha:1.000f],
[UIColor colorWithRed:0.588f green:0.020f blue:0.039f alpha:1.000f],
[UIColor colorWithRed:0.365f green:0.012f blue:0.024f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.941f blue:0.945f alpha:1.000f],
[UIColor colorWithRed:0.969f green:0.792f blue:0.800f alpha:1.000f],
[UIColor colorWithRed:0.937f green:0.639f blue:0.651f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.557f blue:0.188f alpha:1.000f],
[UIColor colorWithRed:0.678f green:0.392f blue:0.129f alpha:1.000f],
[UIColor colorWithRed:0.404f green:0.227f blue:0.071f alpha:1.000f],
[UIColor colorWithRed:0.996f green:0.969f blue:0.945f alpha:1.000f],
[UIColor colorWithRed:0.992f green:0.910f blue:0.835f alpha:1.000f],
[UIColor colorWithRed:0.984f green:0.839f blue:0.706f alpha:1.000f],
[UIColor colorWithRed:0.196f green:0.412f blue:0.784f alpha:1.000f],
[UIColor colorWithRed:0.141f green:0.294f blue:0.561f alpha:1.000f],
[UIColor colorWithRed:0.086f green:0.176f blue:0.337f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.965f blue:0.988f alpha:1.000f],
[UIColor colorWithRed:0.824f green:0.882f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.698f green:0.788f blue:0.925f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:0.000f],
[UIColor colorWithRed:0.812f green:0.027f blue:0.055f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.035f blue:0.541f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.027f blue:0.408f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.020f blue:0.275f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.647f green:0.647f blue:0.647f alpha:1.000f],
[UIColor colorWithRed:0.463f green:0.463f blue:0.463f alpha:1.000f],
[UIColor colorWithRed:0.263f green:0.263f blue:0.263f alpha:1.000f],
[UIColor colorWithRed:0.196f green:0.412f blue:0.784f alpha:1.000f],
[UIColor colorWithRed:0.141f green:0.294f blue:0.561f alpha:1.000f],
[UIColor colorWithRed:0.196f green:0.412f blue:0.784f alpha:1.000f],
[UIColor colorWithRed:0.141f green:0.294f blue:0.561f alpha:1.000f],
[UIColor colorWithRed:0.086f green:0.176f blue:0.337f alpha:1.000f],
[UIColor colorWithRed:0.573f green:0.694f blue:0.890f alpha:1.000f],
[UIColor colorWithRed:0.447f green:0.600f blue:0.855f alpha:1.000f],
[UIColor colorWithRed:0.322f green:0.506f blue:0.820f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.035f blue:0.541f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.027f blue:0.408f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.020f blue:0.275f alpha:1.000f],
[UIColor colorWithRed:0.102f green:0.561f blue:0.392f alpha:1.000f],
[UIColor colorWithRed:0.075f green:0.400f blue:0.278f alpha:1.000f],
[UIColor colorWithRed:0.047f green:0.243f blue:0.165f alpha:1.000f],
[UIColor colorWithRed:0.525f green:0.769f blue:0.675f alpha:1.000f],
[UIColor colorWithRed:0.384f green:0.698f blue:0.580f alpha:1.000f],
[UIColor colorWithRed:0.243f green:0.627f blue:0.486f alpha:1.000f],
[UIColor colorWithRed:0.812f green:0.027f blue:0.055f alpha:1.000f],
[UIColor colorWithRed:0.588f green:0.020f blue:0.039f alpha:1.000f],
[UIColor colorWithRed:0.365f green:0.012f blue:0.024f alpha:1.000f],
[UIColor colorWithRed:0.906f green:0.486f blue:0.502f alpha:1.000f],
[UIColor colorWithRed:0.875f green:0.333f blue:0.353f alpha:1.000f],
[UIColor colorWithRed:0.843f green:0.180f blue:0.204f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.557f blue:0.188f alpha:1.000f],
[UIColor colorWithRed:0.678f green:0.392f blue:0.129f alpha:1.000f],
[UIColor colorWithRed:0.404f green:0.227f blue:0.071f alpha:1.000f],
[UIColor colorWithRed:0.976f green:0.769f blue:0.576f alpha:1.000f],
[UIColor colorWithRed:0.969f green:0.698f blue:0.447f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.627f blue:0.318f alpha:1.000f],
[UIColor colorWithRed:0.196f green:0.412f blue:0.784f alpha:1.000f],
[UIColor colorWithRed:0.141f green:0.294f blue:0.561f alpha:1.000f],
[UIColor colorWithRed:0.086f green:0.176f blue:0.337f alpha:1.000f],
[UIColor colorWithRed:0.573f green:0.694f blue:0.890f alpha:1.000f],
[UIColor colorWithRed:0.447f green:0.600f blue:0.855f alpha:1.000f],
[UIColor colorWithRed:0.322f green:0.506f blue:0.820f alpha:1.000f],
[UIColor colorWithRed:0.573f green:0.694f blue:0.890f alpha:1.000f],
[UIColor colorWithRed:0.263f green:0.263f blue:0.263f alpha:1.000f],
[UIColor colorWithRed:0.196f green:0.412f blue:0.784f alpha:1.000f],
[UIColor colorWithRed:0.141f green:0.294f blue:0.561f alpha:1.000f],
[UIColor colorWithRed:0.196f green:0.412f blue:0.784f alpha:1.000f],
[UIColor colorWithRed:0.141f green:0.294f blue:0.561f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.647f green:0.647f blue:0.647f alpha:1.000f],
[UIColor colorWithRed:0.463f green:0.463f blue:0.463f alpha:1.000f],
[UIColor colorWithRed:0.341f green:0.341f blue:0.341f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.961f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.902f green:0.902f blue:0.902f alpha:1.000f],
[UIColor colorWithRed:0.196f green:0.412f blue:0.784f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.035f blue:0.541f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.027f blue:0.408f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.020f blue:0.275f alpha:1.000f],
[UIColor colorWithRed:0.102f green:0.561f blue:0.392f alpha:1.000f],
[UIColor colorWithRed:0.812f green:0.027f blue:0.055f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.557f blue:0.188f alpha:1.000f],
[UIColor colorWithRed:0.196f green:0.412f blue:0.784f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f]
    ];
  });

  return colorArray;
}

@end
