# image-blur

Solution and Tests to the Vanderbilt University Image #2 Problem. 

## Image Blur Problem

Given a black and white image, represented as an array, image-blur runs a transformation on the image. Running the blur transformation causes any 1 in the image to cause the pixel to the left, right, above and below to become a 1. The image-blur method can handle single pixel transformations, multiple pixel transformations, and edge transformations. 

### Customize the Blur

image-blur accepts a nested array of 0's and 1's only. Other values can be passed in, but will not be blurred. The array must be rectangular (i.e. all nested arrays must have identical length). Any index with a value of 1 will be blurred. 

### Tests

image-blur uses `rspec` tests to make sure the algorithm functions correctly. You can customize these tests in the `spec/image_spec.rb` file if you choose.

## Examples

One Pixel Transform

![One Pixel Transform](/assets/blur1.png)

Multiple Pixel Transform

![Multiple Pixel Transform](/assets/blur2.png)

Edge Tranformation

![Edge Tranformation](/assets/bluredge.png)