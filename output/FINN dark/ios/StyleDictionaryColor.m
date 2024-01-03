
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
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:0.502f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:0.980f green:0.980f blue:0.980f alpha:1.000f],
[UIColor colorWithRed:0.957f green:0.957f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.894f green:0.894f blue:0.906f alpha:1.000f],
[UIColor colorWithRed:0.831f green:0.831f blue:0.847f alpha:1.000f],
[UIColor colorWithRed:0.631f green:0.631f blue:0.667f alpha:1.000f],
[UIColor colorWithRed:0.443f green:0.443f blue:0.478f alpha:1.000f],
[UIColor colorWithRed:0.322f green:0.322f blue:0.357f alpha:1.000f],
[UIColor colorWithRed:0.247f green:0.247f blue:0.275f alpha:1.000f],
[UIColor colorWithRed:0.153f green:0.153f blue:0.165f alpha:1.000f],
[UIColor colorWithRed:0.094f green:0.094f blue:0.106f alpha:1.000f],
[UIColor colorWithRed:0.937f green:0.961f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.882f green:0.929f blue:0.996f alpha:1.000f],
[UIColor colorWithRed:0.761f green:0.855f blue:0.996f alpha:1.000f],
[UIColor colorWithRed:0.604f green:0.757f blue:0.996f alpha:1.000f],
[UIColor colorWithRed:0.361f green:0.612f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.169f green:0.494f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.388f blue:0.984f alpha:1.000f],
[UIColor colorWithRed:0.141f green:0.306f blue:0.702f alpha:1.000f],
[UIColor colorWithRed:0.133f green:0.204f blue:0.455f alpha:1.000f],
[UIColor colorWithRed:0.098f green:0.114f blue:0.204f alpha:1.000f],
[UIColor colorWithRed:0.945f green:0.976f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.878f green:0.965f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.714f green:0.941f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.400f green:0.878f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.024f green:0.745f blue:0.984f alpha:1.000f],
[UIColor colorWithRed:0.012f green:0.639f blue:0.867f alpha:1.000f],
[UIColor colorWithRed:0.012f green:0.525f blue:0.749f alpha:1.000f],
[UIColor colorWithRed:0.118f green:0.392f blue:0.541f alpha:1.000f],
[UIColor colorWithRed:0.114f green:0.263f blue:0.353f alpha:1.000f],
[UIColor colorWithRed:0.082f green:0.141f blue:0.184f alpha:1.000f],
[UIColor colorWithRed:0.922f green:1.000f blue:0.965f alpha:1.000f],
[UIColor colorWithRed:0.804f green:0.996f blue:0.898f alpha:1.000f],
[UIColor colorWithRed:0.620f green:0.988f blue:0.820f alpha:1.000f],
[UIColor colorWithRed:0.404f green:0.933f blue:0.722f alpha:1.000f],
[UIColor colorWithRed:0.180f green:0.902f blue:0.624f alpha:1.000f],
[UIColor colorWithRed:0.094f green:0.784f blue:0.518f alpha:1.000f],
[UIColor colorWithRed:0.020f green:0.620f blue:0.435f alpha:1.000f],
[UIColor colorWithRed:0.114f green:0.455f blue:0.329f alpha:1.000f],
[UIColor colorWithRed:0.106f green:0.302f blue:0.224f alpha:1.000f],
[UIColor colorWithRed:0.078f green:0.161f blue:0.122f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.973f blue:0.902f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.961f blue:0.784f alpha:1.000f],
[UIColor colorWithRed:0.996f green:0.937f blue:0.565f alpha:1.000f],
[UIColor colorWithRed:0.980f green:0.906f blue:0.420f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.882f blue:0.122f alpha:1.000f],
[UIColor colorWithRed:0.933f green:0.714f blue:0.106f alpha:1.000f],
[UIColor colorWithRed:0.835f green:0.518f blue:0.043f alpha:1.000f],
[UIColor colorWithRed:0.608f green:0.384f blue:0.118f alpha:1.000f],
[UIColor colorWithRed:0.396f green:0.255f blue:0.094f alpha:1.000f],
[UIColor colorWithRed:0.208f green:0.137f blue:0.063f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.961f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.937f blue:0.937f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.820f blue:0.820f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.600f blue:0.600f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.345f blue:0.267f alpha:1.000f],
[UIColor colorWithRed:0.980f green:0.153f blue:0.059f alpha:1.000f],
[UIColor colorWithRed:0.851f green:0.122f blue:0.039f alpha:1.000f],
[UIColor colorWithRed:0.620f green:0.133f blue:0.086f alpha:1.000f],
[UIColor colorWithRed:0.408f green:0.114f blue:0.067f alpha:1.000f],
[UIColor colorWithRed:0.220f green:0.078f blue:0.043f alpha:1.000f],
[UIColor colorWithRed:0.973f green:0.980f blue:0.988f alpha:1.000f],
[UIColor colorWithRed:0.945f green:0.957f blue:0.976f alpha:1.000f],
[UIColor colorWithRed:0.882f green:0.902f blue:0.933f alpha:1.000f],
[UIColor colorWithRed:0.765f green:0.800f blue:0.851f alpha:1.000f],
[UIColor colorWithRed:0.608f green:0.659f blue:0.729f alpha:1.000f],
[UIColor colorWithRed:0.435f green:0.490f blue:0.565f alpha:1.000f],
[UIColor colorWithRed:0.302f green:0.345f blue:0.435f alpha:1.000f],
[UIColor colorWithRed:0.231f green:0.263f blue:0.325f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.176f blue:0.220f alpha:1.000f],
[UIColor colorWithRed:0.094f green:0.102f blue:0.122f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:0.000f],
[UIColor colorWithRed:0.161f green:0.176f blue:0.220f alpha:1.000f],
[UIColor colorWithRed:0.302f green:0.345f blue:0.435f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.176f blue:0.220f alpha:1.000f],
[UIColor colorWithRed:0.118f green:0.392f blue:0.541f alpha:1.000f],
[UIColor colorWithRed:0.114f green:0.455f blue:0.329f alpha:1.000f],
[UIColor colorWithRed:0.608f green:0.384f blue:0.118f alpha:1.000f],
[UIColor colorWithRed:0.620f green:0.133f blue:0.086f alpha:1.000f],
[UIColor colorWithRed:0.012f green:0.525f blue:0.749f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:0.980f green:0.153f blue:0.059f alpha:1.000f],
[UIColor colorWithRed:0.169f green:0.494f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.388f blue:0.984f alpha:1.000f],
[UIColor colorWithRed:0.141f green:0.306f blue:0.702f alpha:1.000f],
[UIColor colorWithRed:0.604f green:0.757f blue:0.996f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.106f green:0.302f blue:0.224f alpha:1.000f],
[UIColor colorWithRed:0.020f green:0.620f blue:0.435f alpha:1.000f],
[UIColor colorWithRed:0.094f green:0.102f blue:0.122f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.176f blue:0.220f alpha:1.000f],
[UIColor colorWithRed:0.094f green:0.102f blue:0.122f alpha:1.000f],
[UIColor colorWithRed:0.098f green:0.114f blue:0.204f alpha:1.000f],
[UIColor colorWithRed:0.133f green:0.204f blue:0.455f alpha:1.000f],
[UIColor colorWithRed:0.169f green:0.494f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.176f blue:0.220f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.176f blue:0.220f alpha:1.000f],
[UIColor colorWithRed:0.094f green:0.102f blue:0.122f alpha:1.000f],
[UIColor colorWithRed:0.098f green:0.114f blue:0.204f alpha:1.000f],
[UIColor colorWithRed:0.133f green:0.204f blue:0.455f alpha:1.000f],
[UIColor colorWithRed:0.302f green:0.345f blue:0.435f alpha:1.000f],
[UIColor colorWithRed:0.231f green:0.263f blue:0.325f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.176f blue:0.220f alpha:1.000f],
[UIColor colorWithRed:0.169f green:0.494f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.094f green:0.102f blue:0.122f alpha:1.000f],
[UIColor colorWithRed:0.169f green:0.494f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.169f green:0.494f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.765f green:0.800f blue:0.851f alpha:1.000f],
[UIColor colorWithRed:0.608f green:0.659f blue:0.729f alpha:1.000f],
[UIColor colorWithRed:0.322f green:0.322f blue:0.357f alpha:1.000f],
[UIColor colorWithRed:0.247f green:0.247f blue:0.275f alpha:1.000f],
[UIColor colorWithRed:0.153f green:0.153f blue:0.165f alpha:1.000f],
[UIColor colorWithRed:0.302f green:0.345f blue:0.435f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.176f blue:0.220f alpha:1.000f],
[UIColor colorWithRed:0.231f green:0.263f blue:0.325f alpha:1.000f],
[UIColor colorWithRed:0.231f green:0.263f blue:0.325f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.957f green:0.957f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.435f green:0.490f blue:0.565f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.153f green:0.153f blue:0.165f alpha:1.000f],
[UIColor colorWithRed:0.169f green:0.494f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.435f green:0.490f blue:0.565f alpha:1.000f],
[UIColor colorWithRed:0.980f green:0.153f blue:0.059f alpha:1.000f],
[UIColor colorWithRed:0.094f green:0.784f blue:0.518f alpha:1.000f],
[UIColor colorWithRed:0.094f green:0.102f blue:0.122f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.176f blue:0.220f alpha:1.000f],
[UIColor colorWithRed:0.094f green:0.102f blue:0.122f alpha:1.000f],
[UIColor colorWithRed:0.231f green:0.263f blue:0.325f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.176f blue:0.220f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.176f blue:0.220f alpha:1.000f],
[UIColor colorWithRed:0.231f green:0.263f blue:0.325f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.176f blue:0.220f alpha:1.000f],
[UIColor colorWithRed:0.098f green:0.114f blue:0.204f alpha:1.000f],
[UIColor colorWithRed:0.133f green:0.204f blue:0.455f alpha:1.000f],
[UIColor colorWithRed:0.980f green:0.980f blue:0.980f alpha:1.000f],
[UIColor colorWithRed:0.169f green:0.494f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.388f blue:0.984f alpha:1.000f],
[UIColor colorWithRed:0.141f green:0.306f blue:0.702f alpha:1.000f],
[UIColor colorWithRed:0.133f green:0.204f blue:0.455f alpha:1.000f],
[UIColor colorWithRed:0.098f green:0.114f blue:0.204f alpha:1.000f],
[UIColor colorWithRed:0.098f green:0.114f blue:0.204f alpha:1.000f],
[UIColor colorWithRed:0.094f green:0.784f blue:0.518f alpha:1.000f],
[UIColor colorWithRed:0.020f green:0.620f blue:0.435f alpha:1.000f],
[UIColor colorWithRed:0.114f green:0.455f blue:0.329f alpha:1.000f],
[UIColor colorWithRed:0.078f green:0.161f blue:0.122f alpha:1.000f],
[UIColor colorWithRed:0.106f green:0.302f blue:0.224f alpha:1.000f],
[UIColor colorWithRed:0.078f green:0.161f blue:0.122f alpha:1.000f],
[UIColor colorWithRed:0.078f green:0.161f blue:0.122f alpha:1.000f],
[UIColor colorWithRed:0.106f green:0.302f blue:0.224f alpha:1.000f],
[UIColor colorWithRed:0.980f green:0.153f blue:0.059f alpha:1.000f],
[UIColor colorWithRed:0.851f green:0.122f blue:0.039f alpha:1.000f],
[UIColor colorWithRed:0.620f green:0.133f blue:0.086f alpha:1.000f],
[UIColor colorWithRed:0.220f green:0.078f blue:0.043f alpha:1.000f],
[UIColor colorWithRed:0.408f green:0.114f blue:0.067f alpha:1.000f],
[UIColor colorWithRed:0.220f green:0.078f blue:0.043f alpha:1.000f],
[UIColor colorWithRed:0.933f green:0.714f blue:0.106f alpha:1.000f],
[UIColor colorWithRed:0.835f green:0.518f blue:0.043f alpha:1.000f],
[UIColor colorWithRed:0.608f green:0.384f blue:0.118f alpha:1.000f],
[UIColor colorWithRed:0.208f green:0.137f blue:0.063f alpha:1.000f],
[UIColor colorWithRed:0.396f green:0.255f blue:0.094f alpha:1.000f],
[UIColor colorWithRed:0.208f green:0.137f blue:0.063f alpha:1.000f],
[UIColor colorWithRed:0.012f green:0.639f blue:0.867f alpha:1.000f],
[UIColor colorWithRed:0.012f green:0.525f blue:0.749f alpha:1.000f],
[UIColor colorWithRed:0.118f green:0.392f blue:0.541f alpha:1.000f],
[UIColor colorWithRed:0.082f green:0.141f blue:0.184f alpha:1.000f],
[UIColor colorWithRed:0.114f green:0.263f blue:0.353f alpha:1.000f],
[UIColor colorWithRed:0.082f green:0.141f blue:0.184f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:0.000f],
[UIColor colorWithRed:0.980f green:0.153f blue:0.059f alpha:1.000f],
[UIColor colorWithRed:0.231f green:0.263f blue:0.325f alpha:1.000f],
[UIColor colorWithRed:0.024f green:0.745f blue:0.984f alpha:1.000f],
[UIColor colorWithRed:0.012f green:0.639f blue:0.867f alpha:1.000f],
[UIColor colorWithRed:0.012f green:0.525f blue:0.749f alpha:1.000f],
[UIColor colorWithRed:0.302f green:0.345f blue:0.435f alpha:1.000f],
[UIColor colorWithRed:0.231f green:0.263f blue:0.325f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.176f blue:0.220f alpha:1.000f],
[UIColor colorWithRed:0.231f green:0.263f blue:0.325f alpha:1.000f],
[UIColor colorWithRed:0.169f green:0.494f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.388f blue:0.984f alpha:1.000f],
[UIColor colorWithRed:0.169f green:0.494f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.388f blue:0.984f alpha:1.000f],
[UIColor colorWithRed:0.141f green:0.306f blue:0.702f alpha:1.000f],
[UIColor colorWithRed:0.141f green:0.306f blue:0.702f alpha:1.000f],
[UIColor colorWithRed:0.133f green:0.204f blue:0.455f alpha:1.000f],
[UIColor colorWithRed:0.098f green:0.114f blue:0.204f alpha:1.000f],
[UIColor colorWithRed:0.024f green:0.745f blue:0.984f alpha:1.000f],
[UIColor colorWithRed:0.012f green:0.639f blue:0.867f alpha:1.000f],
[UIColor colorWithRed:0.012f green:0.525f blue:0.749f alpha:1.000f],
[UIColor colorWithRed:0.094f green:0.784f blue:0.518f alpha:1.000f],
[UIColor colorWithRed:0.020f green:0.620f blue:0.435f alpha:1.000f],
[UIColor colorWithRed:0.114f green:0.455f blue:0.329f alpha:1.000f],
[UIColor colorWithRed:0.114f green:0.455f blue:0.329f alpha:1.000f],
[UIColor colorWithRed:0.106f green:0.302f blue:0.224f alpha:1.000f],
[UIColor colorWithRed:0.078f green:0.161f blue:0.122f alpha:1.000f],
[UIColor colorWithRed:0.980f green:0.153f blue:0.059f alpha:1.000f],
[UIColor colorWithRed:0.851f green:0.122f blue:0.039f alpha:1.000f],
[UIColor colorWithRed:0.620f green:0.133f blue:0.086f alpha:1.000f],
[UIColor colorWithRed:0.620f green:0.133f blue:0.086f alpha:1.000f],
[UIColor colorWithRed:0.408f green:0.114f blue:0.067f alpha:1.000f],
[UIColor colorWithRed:0.220f green:0.078f blue:0.043f alpha:1.000f],
[UIColor colorWithRed:0.933f green:0.714f blue:0.106f alpha:1.000f],
[UIColor colorWithRed:0.835f green:0.518f blue:0.043f alpha:1.000f],
[UIColor colorWithRed:0.608f green:0.384f blue:0.118f alpha:1.000f],
[UIColor colorWithRed:0.608f green:0.384f blue:0.118f alpha:1.000f],
[UIColor colorWithRed:0.396f green:0.255f blue:0.094f alpha:1.000f],
[UIColor colorWithRed:0.208f green:0.137f blue:0.063f alpha:1.000f],
[UIColor colorWithRed:0.012f green:0.639f blue:0.867f alpha:1.000f],
[UIColor colorWithRed:0.012f green:0.525f blue:0.749f alpha:1.000f],
[UIColor colorWithRed:0.118f green:0.392f blue:0.541f alpha:1.000f],
[UIColor colorWithRed:0.118f green:0.392f blue:0.541f alpha:1.000f],
[UIColor colorWithRed:0.114f green:0.263f blue:0.353f alpha:1.000f],
[UIColor colorWithRed:0.082f green:0.141f blue:0.184f alpha:1.000f],
[UIColor colorWithRed:0.400f green:0.878f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.957f green:0.957f blue:0.961f alpha:1.000f],
[UIColor colorWithRed:0.894f green:0.894f blue:0.906f alpha:1.000f],
[UIColor colorWithRed:0.169f green:0.494f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.388f blue:0.984f alpha:1.000f],
[UIColor colorWithRed:0.302f green:0.345f blue:0.435f alpha:1.000f],
[UIColor colorWithRed:0.302f green:0.345f blue:0.435f alpha:1.000f],
[UIColor colorWithRed:0.882f green:0.902f blue:0.933f alpha:1.000f],
[UIColor colorWithRed:0.765f green:0.800f blue:0.851f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.161f green:0.176f blue:0.220f alpha:1.000f],
[UIColor colorWithRed:0.094f green:0.102f blue:0.122f alpha:1.000f],
[UIColor colorWithRed:0.169f green:0.494f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.024f green:0.745f blue:0.984f alpha:1.000f],
[UIColor colorWithRed:0.012f green:0.639f blue:0.867f alpha:1.000f],
[UIColor colorWithRed:0.012f green:0.525f blue:0.749f alpha:1.000f],
[UIColor colorWithRed:0.094f green:0.784f blue:0.518f alpha:1.000f],
[UIColor colorWithRed:0.980f green:0.153f blue:0.059f alpha:1.000f],
[UIColor colorWithRed:0.933f green:0.714f blue:0.106f alpha:1.000f],
[UIColor colorWithRed:0.012f green:0.639f blue:0.867f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f]
    ];
  });

  return colorArray;
}

@end
