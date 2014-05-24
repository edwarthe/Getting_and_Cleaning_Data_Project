Codebook
========

## Files:  
- **tidyData.csv**: Contain the tidy data  
- **run_analysis.R**: Contain the code for analisys of the data
- **README.md, README.html**: Readme file
- **terms.txt**: List of terms and your substitute more descriptive
- **CodeBook.md, CodeBook.html**: This file
  
### **Variables**:  
- **tidyData.csv**: 180 rows x 68 columns  
**Columns**
subject : Integer  
activity : character
TimeBodyAccelMeanX : numeric  
TimeBodyAccelMeanY : numeric  
TimeBodyAccelMeanZ : numeric  
TimeGravityAccelMeanX : numeric  
TimeGravityAccelMeanY : numeric  
TimeGravityAccelMeanZ : numeric  
TimeBodyAccelJerkMeanX : numeric  
TimeBodyAccelJerkMeanY : numeric  
TimeBodyAccelJerkMeanZ : numeric  
TimeBodyGyroscpMeanX : numeric  
TimeBodyGyroscpMeanY : numeric  
TimeBodyGyroscpMeanZ : numeric  
TimeBodyGyroscpJerkMeanX : numeric  
TimeBodyGyroscpJerkMeanY : numeric  
TimeBodyGyroscpJerkMeanZ : numeric  
TimeBodyAccelMagnitudMean : numeric  
TimeGravityAccelMagnitudMean : numeric  
TimeBodyAccelJerkMagnitudMean : numeric  
TimeBodyGyroscpMagnitudMean : numeric  
TimeBodyGyroscpJerkMagnitudMean : numeric  
FreqBodyAccelMeanX : numeric  
FreqBodyAccelMeanY : numeric  
FreqBodyAccelMeanZ : numeric  
FreqBodyAccelJerkMeanX : numeric  
FreqBodyAccelJerkMeanY : numeric  
FreqBodyAccelJerkMeanZ : numeric  
FreqBodyGyroscpMeanX : numeric  
FreqBodyGyroscpMeanY : numeric  
FreqBodyGyroscpMeanZ : numeric  
FreqBodyAccelMagnitudMean : numeric  
FreqBodyBodyAccelJerkMagnitudMean : numeric  
FreqBodyBodyGyroscpMagnitudMean : numeric  
FreqBodyBodyGyroscpJerkMagnitudMean : numeric  
TimeBodyAccelStdDevX : numeric  
TimeBodyAccelStdDevY : numeric  
TimeBodyAccelStdDevZ : numeric  
TimeGravityAccelStdDevX : numeric  
TimeGravityAccelStdDevY : numeric  
TimeGravityAccelStdDevZ : numeric  
TimeBodyAccelJerkStdDevX : numeric  
TimeBodyAccelJerkStdDevY : numeric  
TimeBodyAccelJerkStdDevZ : numeric  
TimeBodyGyroscpStdDevX : numeric  
TimeBodyGyroscpStdDevY : numeric               
TimeBodyGyroscpStdDevZ : numeric  
TimeBodyGyroscpJerkStdDevX : numeric  
TimeBodyGyroscpJerkStdDevY : numeric  
TimeBodyGyroscpJerkStdDevZ : numeric  
TimeBodyAccelMagnitudStdDev : numeric  
TimeGravityAccelMagnitudStdDev : numeric  
TimeBodyAccelJerkMagnitudStdDev : numeric  
TimeBodyGyroscpMagnitudStdDev : numeric  
TimeBodyGyroscpJerkMagnitudStdDev : numeric  
FreqBodyAccelStdDevX : numeric  
FreqBodyAccelStdDevY : numeric  
FreqBodyAccelStdDevZ : numeric  
FreqBodyAccelJerkStdDevX : numeric  
FreqBodyAccelJerkStdDevY : numeric  
FreqBodyAccelJerkStdDevZ : numeric  
FreqBodyGyroscpStdDevX : numeric  
FreqBodyGyroscpStdDevY : numeric  
FreqBodyGyroscpStdDevZ : numeric  
FreqBodyAccelMagnitudStdDev : numeric  
FreqBodyBodyAccelJerkMagnitudStdDev : numeric  
FreqBodyBodyGyroscpMagnitudStdDev : numeric  
FreqBodyBodyGyroscpJerkMagnitudStdDev : numeric  
- **terms.txt**: 36 rows x 2 columns  
**Columns**  
Term : character -Contain a abbreviated term  
Description : character -Contain a sustitute abbreviated term more descriptive for Term

- **run_analysis.R**: Contain the code for analisys of the data  
**Steps for processing de data:**  

1. Getting the data from url
2. Decompress the zip file
3. Reading the Train set from data files
4. Setting the columns names of the Train set
5. Merging the Train set
6. Reading the Test set from data files
7. Setting the columns names of the Test set
8. Merging the Test set
9. Merges the training and the test sets to create one data set.
10. Extracts only the measurements on the mean and standard deviation for each measurement
11. Uses descriptive activity names to name the activities in the data set
12. Reading the Activity labels from data files
13. Setting the Activity labels with descriptive activity names
14. Appropriately labels the data set with descriptive activity names
15. Replacing terms in all columns with terms more descriptive from terms.txt file that contain a list of terms and your substitute more descriptive, using subs function replaces a term in the column name by your substitute
16. Installing and loading package reshape2
17. Melting the data frame
18. Creating the independent tidy data set with the average of each variable for each activity and each subject
19. Creating the tidyData.csv file