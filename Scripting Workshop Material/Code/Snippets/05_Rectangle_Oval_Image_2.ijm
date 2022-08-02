width = 640;
height = 480;
depth = 1;
title = "New Image";
bits = "16-bit";
rectangleIndent = 0.1;
ovalIndent = 0.2;

xR = width * rectangleIndent;
yR = height * rectangleIndent;
wR = width - 2 * xR;
hR = height - 2 * yR;
xO = width * ovalIndent;
yO = height * ovalIndent;
wO = width - 2 * xO;
hO = height - 2 * yO;

newImage(title, bits, width, height, depth);
drawRect(xR, yR, wR, hR);
fillOval(xO, yO, wO, hO);
