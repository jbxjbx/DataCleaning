The study involved 30 participants, identified by the numbers 1-30 in the "Participant" column. Measurements were taken as the participants undertook the following activities, lited as "activities" in the final dataset

WALKING (value 1): subject was walking during the test
WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
SITTING (value 4): subject was sitting during the test
STANDING (value 5): subject was standing during the test
LAYING (value 6): subject was laying down during the test
The original dataset contained the features listed below:

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
The set of variables that were estimated from these signals are:

*mean(): Mean value *std(): Standard deviation *mad(): Median absolute deviation *max(): Largest value in array *min(): Smallest value in array *sma(): Signal magnitude area *energy(): Energy measure. Sum of the squares divided by the number of values. *iqr(): Interquartile range *entropy(): Signal entropy *arCoeff(): Autorregresion coefficients with Burg order equal to 4 *correlation(): correlation coefficient between two signals *maxInds(): index of the frequency component with largest magnitude *meanFreq(): Weighted average of the frequency components to obtain a mean frequency *skewness(): skewness of the frequency domain signal *kurtosis(): kurtosis of the frequency domain signal *bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window. *angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

*gravityMean *tBodyAccMean *tBodyAccJerkMean *tBodyGyroMean *tBodyGyroJerkMean
