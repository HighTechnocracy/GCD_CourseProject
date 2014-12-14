#GCD_CourseProject
=================

*The files to complete the Course Project for Courera's Getting and Cleaning Data Course Project.*

The file tidyData contains the means and standard variations of several measurements taken from 30 subjects as they performed six different activities (walking, walking upstairs, walking downstairs, sititng standing and laying). The original data was taken using the accelerometer and gyroscope in a Samsung II smartphone attached to the subjects' waist. Orginal data was transformed and cleaned using math I never could hope to understand, but I'm pretty sure very long equations with fancy names were involved. This data was broken across several .txt files (probably to be used as tables in some database somewhere) and placed online at: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data was broken into "test" (30% of subjects) and "train" (70% of subjects) sets.

The R file "runanalysis.R" performs the following steps.
1. Reads in the subject labels from the test and train datasets and combines them (using the rbind() function). It labels the vectors and removes the original variables.
2. Reads in the activity labels from the test and train datasets and combines them. It labels the new variable and removes the originals.
3. Reads in the test and train datasets as well as the table with the original variable names. It combines the two datasets with the subject and activity labels to form one large dataset and names the variables. It then removes the original objects.
4. Coerce the first two variables ("subject" and "activity") into factor variables, subsets out variables with either "-mean" or "-std" in the name and combines these into a new (smaller) dataset.
5. Using two for-loops, calculate the mean for each of the "mean" and "std" variables and store the results in as a new data.frame called "tidyData"
6. Rename the variables with descriptive titles, rename the activities using descriptive titles, coerce "activity" and "subject" back into factors and remove all extraneous variables.

*The tidyData data.frame has 180 observations (30 subjects performing each of 6 activities). Each observation contains 81 variables. Two are the subject and activity lables, which are the various calculated mean scores on means and standard deviations for each reading. Acceleration variables are in standard gravity units and gyroscope measures are in radians/second. The variable names follow:*

##CODEBOOK

1. tBodyAcc-mean()-X
2. tBodyAcc-mean()-Y
3. tBodyAcc-mean()-Z
4. tBodyAcc-std()-X
5. tBodyAcc-std()-Y
6. tBodyAcc-std()-Z
7. tGravityAcc-mean()-X
8. tGravityAcc-mean()-Y
9. tGravityAcc-mean()-Z
10. tGravityAcc-std()-X
11. tGravityAcc-std()-Y
12. tGravityAcc-std()-Z
13. tBodyAccJerk-mean()-X
14. tBodyAccJerk-mean()-Y
15. tBodyAccJerk-mean()-Z
16. tBodyAccJerk-std()-X
17. tBodyAccJerk-std()-Y
18. tBodyAccJerk-std()-Z
19. tBodyGyro-mean()-X
20. tBodyGyro-mean()-Y
21. tBodyGyro-mean()-Z
22. tBodyGyro-std()-X
23. tBodyGyro-std()-Y
24. tBodyGyro-std()-Z
25. tBodyGyroJerk-mean()-X
26. tBodyGyroJerk-mean()-Y
27. tBodyGyroJerk-mean()-Z
28. tBodyGyroJerk-std()-X
29. tBodyGyroJerk-std()-Y
30. tBodyGyroJerk-std()-Z
31. tBodyAccMag-mean()
32. tBodyAccMag-std()
33. tGravityAccMag-mean()
34. tGravityAccMag-std()
35. tBodyAccJerkMag-mean()
36. tBodyAccJerkMag-std()
37. tBodyGyroMag-mean()
39. tBodyGyroMag-std()
41. tBodyGyroJerkMag-mean()
42. tBodyGyroJerkMag-std()
43. fBodyAcc-mean()-X
44. fBodyAcc-mean()-Y
45. fBodyAcc-mean()-Z
46. fBodyAccJerk-mean()-X
47. fBodyAccJerk-mean()-Y
48. fBodyAccJerk-mean()-Z
49. fBodyAccJerk-std()-X
50. fBodyAccJerk-std()-Y
51. fBodyAccJerk-std()-Z
52. fBodyAccJerk-meanFreq()-X
53. fBodyAccJerk-meanFreq()-Y
54. fBodyAccJerk-meanFreq()-Z
55. fBodyGyro-mean()-X
56. fBodyGyro-mean()-Y
57. fBodyGyro-mean()-Z
58. fBodyGyro-std()-X
59. fBodyGyro-std()-Y
60. fBodyGyro-std()-Z
61. fBodyGyro-meanFreq()-X
62. fBodyGyro-meanFreq()-Y
63. fBodyGyro-meanFreq()-Z
64. fBodyAccMag-mean()
65. fBodyAccMag-std()
66. fBodyAccMag-meanFreq()
67. fBodyBodyAccJerkMag-mean()
68. fBodyBodyAccJerkMag-std()
69. fBodyBodyAccJerkMag-meanFreq()
70. fBodyBodyGyroMag-mean()
71. fBodyBodyGyroMag-std()
72. fBodyBodyGyroMag-meanFreq()
73. fBodyBodyGyroJerkMag-mean()
74. fBodyBodyGyroJerkMag-std()
75. fBodyBodyGyroJerkMag-meanFreq()
76. angle(tBodyAccJerkMean),gravityMean)
77. angle(tBodyGyroMean,gravityMean)
78. angle(tBodyGyroJerkMean,gravityMean)
79. angle(X,gravityMean)
80. angle(Y,gravityMean)
81. angle(Z,gravityMean)


License:
========
Original dataset used with permission by reference to the following citation:

>[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on >Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted >Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

>This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their >institutions for its use or misuse. Any commercial use is prohibited.

>Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.