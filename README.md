Discrete convolution is a mathematical operation that combines two sequences of data to produce a 
third sequence which is basically the sum of amount of overlap of one function over the other by shifting it in time domain. It is commonly used in signal processing and image processing to perform operations 
such as filtering, smoothing, and feature extraction.
* Mathematically, if we have two sequences x[n] and h[n], where n represents the discrete time index, the 
discrete convolution of x[n] and h[n], denoted as y[n], is calculated as y[n] = ∑(x[k] * h[n - k])Here, the 
sum is taken over all values of k for which the product x[k] * h[n - k] is defined.
* Discrete convolution has various applications, including digital filtering, image processing operations like 
blurring and edge detection, and solving linear constant-coefficient difference equations. It is a 
fundamental operation in the field of digital signal processing and is widely used in many areas of science 
and engineering.
* WORKING: 
* Initially, multiplexer is used to select one of the samples from the 8 samples of each 
sequence . 
* After selection of samples, they are multiplied by booth’s multiplier.
* Now, the multiplied result is given as input to demultiplexer for locating each result into 
a register.
* Finally, the registers are added using full adders.
