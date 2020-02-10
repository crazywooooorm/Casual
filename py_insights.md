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
* Many methods in Pandas DataFrame has 'inplace' attribute, if you want the changes happen on the original DataFrame, you need to change inplace from False (default) to True.
* 'and' is logical, '&' is bitwise. So 'and' is used to deal with two booleans, '&' is used if you want to take the intersection of two set.
* describe() is a useful method for DataFrame to get summary statistics, it would be also useful to use groupby() and describe() together to get group summary.
* pd.concat() concats DataFrames by row or column; pd.merge() joins tables on columns, default is inner join; join() method joins tables on index, default is left join.

# Matplotlib
* Never forget to put '%matplotlib inline' on the top if you want to show the plot immediately in notebook, if not, you need plt.show().
* Treat matplotlib figure as an object (creating by plt.figure()), then each plot within that figure is an axes (fig.add_axes(), args in this method specifies the plot position).
* To manage couple plots in one figure, use 'fig, axes = plt.subplots(nrows, ncols)'. In this case axes is an array of axe, so you need to fill the plot content to axes iteratively or one by one.

# Seaborn
* Seaborn is library for making statistical graphics on top of matplotlib, the basic graphic it covers are:
  * histogram: sns.distplot()
  * correlation plot: sns.jointplot()
  * summary plot (correlations of all numeric columns in df): sns.pairplot()
  * kernel density estimation plot: sns.kdeplot()
  * bar plot: sns.barplot()
  * count plot for categorical: sns.countplot()
  * box plot: sns.boxplot()
  
