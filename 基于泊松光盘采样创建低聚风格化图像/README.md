# low_poly_poisson

## basic information

**describe:** Create low poly stylized images based on poisson disc sampling

**author:** slandarer

**code type:** MATLAB file

## usage

**example:** lowPoly('asdf\asdf\asdf\test.jpg')

## result

<img
src="https://github.com/slandarer/low_poly_poisson/blob/main/gallery/1.png" width="500"/>

<img
src="https://github.com/slandarer/low_poly_poisson/blob/main/gallery/2.png" width="500"/>

<img
src="https://github.com/slandarer/low_poly_poisson/blob/main/gallery/3.png" width="500"/>

<img
src="https://github.com/slandarer/low_poly_poisson/blob/main/gallery/4.png" width="500"/>

<img
src="https://github.com/slandarer/low_poly_poisson/blob/main/gallery/5.png" width="500"/>

<img
src="https://github.com/slandarer/low_poly_poisson/blob/main/gallery/6.png" width="500"/>

<img
src="https://github.com/slandarer/low_poly_poisson/blob/main/gallery/7.png" width="500"/>

## algoritm principle

### original picture

<img
src="https://github.com/slandarer/low_poly_poisson/blob/main/gallery/test.jpg" width="500"/>

### use sobel algorithm to detect image edges

<img
src="https://github.com/slandarer/low_poly_poisson/blob/main/gallery/sobel.png" width="500"/>

### Use the poisson disc sampling method to divide the points at the edges

The points where the brightness is greater than 40% of the maximum value are marked as edge points

<img
src="https://github.com/slandarer/low_poly_poisson/blob/main/gallery/edgePnts.png" width="500"/>

### Use the poisson disc sampling method to divide the points in the background

You can change here to adjust the size of the triangles in different positions

```
  redge=min(size(sobelPic))/80;
  rmax=min(size(sobelPic))/20;
  rmin=min(size(sobelPic))/40;
```

redge: Shortest distance between points on the edge  
rmax : Shortest distance between points at farthest from the edge  
rmin : Shortest distance between points at closest to the edge


<img
src="https://github.com/slandarer/low_poly_poisson/blob/main/gallery/pnts.png" width="500"/>

### construct the Delaunay triangle

<img
src="https://github.com/slandarer/low_poly_poisson/blob/main/gallery/mesh.png" width="500"/>

### calculate the pixel value at the center of gravity of the triangle and create mesh

<img
src="https://github.com/slandarer/low_poly_poisson/blob/main/gallery/1.png" width="500"/>


