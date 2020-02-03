# Basic
* What is the difference between apply(), applymap() and map()? apply() works for row/col in DataFrame, applymap() works for each element of DataFrame, map() only works for Series.
* To combine string and number together, put {} as placeholder in string and use format() method for that string. Some normal use cases include:
  * {:.2f}: only show 2 digits after dot
  * {:.0f}: don't show digits after dot
  * {:,}: show comma in number
  * {:0>2d}: fill with 0 on the left to fulfill the length (2 in this case)
  * {:.2%}: show as percentage and show two digits after dot
  * {:.2e}: show as scientific notation    

# Numpy
* The basic data structure in Numpy is ndarray (N-dimension array).
* np.arange() method creates array by telling the start, end and **step**. np.linspace() creates array by telling the start, end and **number of points**.
* Normal methods to create random numbers:
  * np.random.rand(): sample from uniform [0, 1]
  * np.random.randn(): sample from standard normal distribution
  * np.random.randint(): sample integers uniformly from low (inclusive) to high (exclusive)
  * np.random.choice(): sample uniformly from items
* Unless using copy() method, or a slice of an array is still part of the original array, which means change the slice will also change the original array.

# Pandas
* Difference between Pandas Series and Numpy array is that you can specify index in Pandas Series, and Pandas Series support more data types (e.g. list of functions).
  
