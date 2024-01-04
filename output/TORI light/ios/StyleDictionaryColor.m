
//
// StyleDictionaryColor.m
//

// Do not edit directly
// Generated on Thu, 04 Jan 2024 13:54:11 GMT


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
[UIColor colorWithRed:0.969f green:0.976f blue:0.992f alpha:1.000f],
[UIColor colorWithRed:0.843f green:0.878f blue:0.957f alpha:1.000f],
[UIColor colorWithRed:0.706f green:0.788f blue:0.925f alpha:1.000f],
[UIColor colorWithRed:0.569f green:0.698f blue:0.894f alpha:1.000f],
[UIColor colorWithRed:0.431f green:0.608f blue:0.863f alpha:1.000f],
[UIColor colorWithRed:0.302f green:0.533f blue:0.859f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.427f blue:0.800f alpha:1.000f],
[UIColor colorWithRed:0.114f green:0.306f blue:0.573f alpha:1.000f],
[UIColor colorWithRed:0.071f green:0.184f blue:0.345f alpha:1.000f],
[UIColor colorWithRed:0.024f green:0.063f blue:0.118f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.953f blue:0.949f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.902f blue:0.894f alpha:1.000f],
[UIColor colorWithRed:0.996f green:0.796f blue:0.780f alpha:1.000f],
[UIColor colorWithRed:0.996f green:0.690f blue:0.675f alpha:1.000f],
[UIColor colorWithRed:0.992f green:0.580f blue:0.561f alpha:1.000f],
[UIColor colorWithRed:0.976f green:0.318f blue:0.341f alpha:1.000f],
[UIColor colorWithRed:0.831f green:0.239f blue:0.310f alpha:1.000f],
[UIColor colorWithRed:0.596f green:0.173f blue:0.220f alpha:1.000f],
[UIColor colorWithRed:0.357f green:0.098f blue:0.125f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.031f blue:0.047f alpha:1.000f],
[UIColor colorWithRed:0.925f green:0.969f blue:0.996f alpha:1.000f],
[UIColor colorWithRed:0.780f green:0.906f blue:0.984f alpha:1.000f],
[UIColor colorWithRed:0.635f green:0.835f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.490f green:0.765f blue:0.937f alpha:1.000f],
[UIColor colorWithRed:0.345f green:0.694f blue:0.914f alpha:1.000f],
[UIColor colorWithRed:0.200f green:0.624f blue:0.890f alpha:1.000f],
[UIColor colorWithRed:0.055f green:0.553f blue:0.867f alpha:1.000f],
[UIColor colorWithRed:0.039f green:0.396f blue:0.624f alpha:1.000f],
[UIColor colorWithRed:0.024f green:0.239f blue:0.380f alpha:1.000f],
[UIColor colorWithRed:0.008f green:0.086f blue:0.133f alpha:1.000f],
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
[UIColor colorWithRed:0.996f green:0.965f blue:0.969f alpha:1.000f],
[UIColor colorWithRed:0.929f green:0.808f blue:0.820f alpha:1.000f],
[UIColor colorWithRed:0.859f green:0.655f blue:0.678f alpha:1.000f],
[UIColor colorWithRed:0.788f green:0.502f blue:0.537f alpha:1.000f],
[UIColor colorWithRed:0.718f green:0.349f blue:0.396f alpha:1.000f],
[UIColor colorWithRed:0.647f green:0.196f blue:0.255f alpha:1.000f],
[UIColor colorWithRed:0.576f green:0.043f blue:0.114f alpha:1.000f],
[UIColor colorWithRed:0.490f green:0.063f blue:0.141f alpha:1.000f],
[UIColor colorWithRed:0.322f green:0.043f blue:0.094f alpha:1.000f],
[UIColor colorWithRed:0.153f green:0.027f blue:0.051f alpha:1.000f],
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
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:0.000f],
[UIColor colorWithRed:0.961f green:0.961f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.961f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.780f green:0.906f blue:0.984f alpha:1.000f],
[UIColor colorWithRed:0.808f green:0.910f blue:0.863f alpha:1.000f],
[UIColor colorWithRed:0.992f green:0.910f blue:0.835f alpha:1.000f],
[UIColor colorWithRed:0.859f green:0.655f blue:0.678f alpha:1.000f],
[UIColor colorWithRed:0.635f green:0.835f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:0.576f green:0.043f blue:0.114f alpha:1.000f],
[UIColor colorWithRed:0.831f green:0.239f blue:0.310f alpha:1.000f],
[UIColor colorWithRed:0.596f green:0.173f blue:0.220f alpha:1.000f],
[UIColor colorWithRed:0.357f green:0.098f blue:0.125f alpha:1.000f],
[UIColor colorWithRed:0.569f green:0.698f blue:0.894f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.161f blue:0.161f alpha:1.000f],
[UIColor colorWithRed:0.780f green:0.906f blue:0.984f alpha:1.000f],
[UIColor colorWithRed:0.345f green:0.694f blue:0.914f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.961f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.902f green:0.902f blue:0.902f alpha:1.000f],
[UIColor colorWithRed:0.969f green:0.976f blue:0.992f alpha:1.000f],
[UIColor colorWithRed:0.843f green:0.878f blue:0.957f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.427f blue:0.800f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.961f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.902f green:0.902f blue:0.902f alpha:1.000f],
[UIColor colorWithRed:0.969f green:0.976f blue:0.992f alpha:1.000f],
[UIColor colorWithRed:0.843f green:0.878f blue:0.957f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.647f green:0.647f blue:0.647f alpha:1.000f],
[UIColor colorWithRed:0.463f green:0.463f blue:0.463f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.427f blue:0.800f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.161f blue:0.161f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.161f blue:0.161f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.976f green:0.318f blue:0.341f alpha:1.000f],
[UIColor colorWithRed:0.976f green:0.318f blue:0.341f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.647f green:0.647f blue:0.647f alpha:1.000f],
[UIColor colorWithRed:0.902f green:0.902f blue:0.902f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.647f green:0.647f blue:0.647f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.647f green:0.647f blue:0.647f alpha:1.000f],
[UIColor colorWithRed:0.902f green:0.902f blue:0.902f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.161f blue:0.161f alpha:1.000f],
[UIColor colorWithRed:0.463f green:0.463f blue:0.463f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.980f green:0.980f blue:0.980f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.427f blue:0.800f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.576f green:0.043f blue:0.114f alpha:1.000f],
[UIColor colorWithRed:0.102f green:0.561f blue:0.392f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.961f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.902f green:0.902f blue:0.902f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.902f green:0.902f blue:0.902f alpha:1.000f],
[UIColor colorWithRed:0.980f green:0.980f blue:0.980f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.961f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.902f green:0.902f blue:0.902f alpha:1.000f],
[UIColor colorWithRed:0.969f green:0.976f blue:0.992f alpha:1.000f],
[UIColor colorWithRed:0.843f green:0.878f blue:0.957f alpha:1.000f],
[UIColor colorWithRed:0.102f green:0.102f blue:0.102f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.427f blue:0.800f alpha:1.000f],
[UIColor colorWithRed:0.114f green:0.306f blue:0.573f alpha:1.000f],
[UIColor colorWithRed:0.071f green:0.184f blue:0.345f alpha:1.000f],
[UIColor colorWithRed:0.969f green:0.976f blue:0.992f alpha:1.000f],
[UIColor colorWithRed:0.843f green:0.878f blue:0.957f alpha:1.000f],
[UIColor colorWithRed:0.706f green:0.788f blue:0.925f alpha:1.000f],
[UIColor colorWithRed:0.102f green:0.561f blue:0.392f alpha:1.000f],
[UIColor colorWithRed:0.075f green:0.400f blue:0.278f alpha:1.000f],
[UIColor colorWithRed:0.047f green:0.243f blue:0.165f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.988f blue:0.976f alpha:1.000f],
[UIColor colorWithRed:0.808f green:0.910f blue:0.863f alpha:1.000f],
[UIColor colorWithRed:0.667f green:0.839f blue:0.769f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.988f blue:0.976f alpha:1.000f],
[UIColor colorWithRed:0.808f green:0.910f blue:0.863f alpha:1.000f],
[UIColor colorWithRed:0.576f green:0.043f blue:0.114f alpha:1.000f],
[UIColor colorWithRed:0.490f green:0.063f blue:0.141f alpha:1.000f],
[UIColor colorWithRed:0.322f green:0.043f blue:0.094f alpha:1.000f],
[UIColor colorWithRed:0.996f green:0.965f blue:0.969f alpha:1.000f],
[UIColor colorWithRed:0.929f green:0.808f blue:0.820f alpha:1.000f],
[UIColor colorWithRed:0.859f green:0.655f blue:0.678f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.557f blue:0.188f alpha:1.000f],
[UIColor colorWithRed:0.678f green:0.392f blue:0.129f alpha:1.000f],
[UIColor colorWithRed:0.404f green:0.227f blue:0.071f alpha:1.000f],
[UIColor colorWithRed:0.996f green:0.969f blue:0.945f alpha:1.000f],
[UIColor colorWithRed:0.992f green:0.910f blue:0.835f alpha:1.000f],
[UIColor colorWithRed:0.984f green:0.839f blue:0.706f alpha:1.000f],
[UIColor colorWithRed:0.055f green:0.553f blue:0.867f alpha:1.000f],
[UIColor colorWithRed:0.039f green:0.396f blue:0.624f alpha:1.000f],
[UIColor colorWithRed:0.024f green:0.239f blue:0.380f alpha:1.000f],
[UIColor colorWithRed:0.925f green:0.969f blue:0.996f alpha:1.000f],
[UIColor colorWithRed:0.780f green:0.906f blue:0.984f alpha:1.000f],
[UIColor colorWithRed:0.635f green:0.835f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:0.000f],
[UIColor colorWithRed:0.831f green:0.239f blue:0.310f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.976f green:0.318f blue:0.341f alpha:1.000f],
[UIColor colorWithRed:0.831f green:0.239f blue:0.310f alpha:1.000f],
[UIColor colorWithRed:0.596f green:0.173f blue:0.220f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.647f green:0.647f blue:0.647f alpha:1.000f],
[UIColor colorWithRed:0.463f green:0.463f blue:0.463f alpha:1.000f],
[UIColor colorWithRed:0.263f green:0.263f blue:0.263f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.427f blue:0.800f alpha:1.000f],
[UIColor colorWithRed:0.114f green:0.306f blue:0.573f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.427f blue:0.800f alpha:1.000f],
[UIColor colorWithRed:0.114f green:0.306f blue:0.573f alpha:1.000f],
[UIColor colorWithRed:0.071f green:0.184f blue:0.345f alpha:1.000f],
[UIColor colorWithRed:0.569f green:0.698f blue:0.894f alpha:1.000f],
[UIColor colorWithRed:0.431f green:0.608f blue:0.863f alpha:1.000f],
[UIColor colorWithRed:0.302f green:0.533f blue:0.859f alpha:1.000f],
[UIColor colorWithRed:0.976f green:0.318f blue:0.341f alpha:1.000f],
[UIColor colorWithRed:0.831f green:0.239f blue:0.310f alpha:1.000f],
[UIColor colorWithRed:0.596f green:0.173f blue:0.220f alpha:1.000f],
[UIColor colorWithRed:0.102f green:0.561f blue:0.392f alpha:1.000f],
[UIColor colorWithRed:0.075f green:0.400f blue:0.278f alpha:1.000f],
[UIColor colorWithRed:0.047f green:0.243f blue:0.165f alpha:1.000f],
[UIColor colorWithRed:0.525f green:0.769f blue:0.675f alpha:1.000f],
[UIColor colorWithRed:0.384f green:0.698f blue:0.580f alpha:1.000f],
[UIColor colorWithRed:0.243f green:0.627f blue:0.486f alpha:1.000f],
[UIColor colorWithRed:0.576f green:0.043f blue:0.114f alpha:1.000f],
[UIColor colorWithRed:0.490f green:0.063f blue:0.141f alpha:1.000f],
[UIColor colorWithRed:0.322f green:0.043f blue:0.094f alpha:1.000f],
[UIColor colorWithRed:0.788f green:0.502f blue:0.537f alpha:1.000f],
[UIColor colorWithRed:0.718f green:0.349f blue:0.396f alpha:1.000f],
[UIColor colorWithRed:0.647f green:0.196f blue:0.255f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.557f blue:0.188f alpha:1.000f],
[UIColor colorWithRed:0.678f green:0.392f blue:0.129f alpha:1.000f],
[UIColor colorWithRed:0.404f green:0.227f blue:0.071f alpha:1.000f],
[UIColor colorWithRed:0.976f green:0.769f blue:0.576f alpha:1.000f],
[UIColor colorWithRed:0.969f green:0.698f blue:0.447f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.627f blue:0.318f alpha:1.000f],
[UIColor colorWithRed:0.055f green:0.553f blue:0.867f alpha:1.000f],
[UIColor colorWithRed:0.039f green:0.396f blue:0.624f alpha:1.000f],
[UIColor colorWithRed:0.024f green:0.239f blue:0.380f alpha:1.000f],
[UIColor colorWithRed:0.490f green:0.765f blue:0.937f alpha:1.000f],
[UIColor colorWithRed:0.345f green:0.694f blue:0.914f alpha:1.000f],
[UIColor colorWithRed:0.200f green:0.624f blue:0.890f alpha:1.000f],
[UIColor colorWithRed:0.490f green:0.765f blue:0.937f alpha:1.000f],
[UIColor colorWithRed:0.263f green:0.263f blue:0.263f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.427f blue:0.800f alpha:1.000f],
[UIColor colorWithRed:0.114f green:0.306f blue:0.573f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.427f blue:0.800f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.427f blue:0.800f alpha:1.000f],
[UIColor colorWithRed:0.839f green:0.839f blue:0.839f alpha:1.000f],
[UIColor colorWithRed:0.647f green:0.647f blue:0.647f alpha:1.000f],
[UIColor colorWithRed:0.463f green:0.463f blue:0.463f alpha:1.000f],
[UIColor colorWithRed:0.341f green:0.341f blue:0.341f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.961f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.902f green:0.902f blue:0.902f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.427f blue:0.800f alpha:1.000f],
[UIColor colorWithRed:0.976f green:0.318f blue:0.341f alpha:1.000f],
[UIColor colorWithRed:0.831f green:0.239f blue:0.310f alpha:1.000f],
[UIColor colorWithRed:0.596f green:0.173f blue:0.220f alpha:1.000f],
[UIColor colorWithRed:0.102f green:0.561f blue:0.392f alpha:1.000f],
[UIColor colorWithRed:0.576f green:0.043f blue:0.114f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.557f blue:0.188f alpha:1.000f],
[UIColor colorWithRed:0.055f green:0.553f blue:0.867f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f]
    ];
  });

  return colorArray;
}

@end
