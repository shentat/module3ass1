############### train data #########
x_train_file<-"./UCI HAR Dataset/train/X_train.txt"
x_train_df<-read.table(x_train_file)
feature_file<-"./UCI HAR Dataset/features.txt"
feature_df<-read.table(feature_file)
#rename col names using feature file
colnames(x_train_df)<-feature_df[, 2]

y_train_file<-"./UCI HAR Dataset/train/y_train.txt"
y_train_df<-read.table(y_train_file)
#table(y_train_df) -- 1 to 6 activites
activity_labels_file<-"./UCI HAR Dataset/activity_labels.txt"
activity_labels_df<-read.table(activity_labels_file)

subject_train_file<-"./UCI HAR Dataset/train/subject_train.txt"
subject_train_df<-read.table(subject_train_file)
#table(subject_train_df) -- 1 to 30 volunteers

y_train_activity_labels<-merge(y_train_df, activity_labels_df, by.x="V1", by.y="V1")
#table(y_train_activity_labels)
#table(y_train_df)

combined_train<-cbind(subject_train_df,y_train_activity_labels[, 2],x_train_df)
colnames(combined_train)[1]<-"subject"
colnames(combined_train)[2]<-"activity"
#################end train data ##########

################ test data ########
x_test_file<-"./UCI HAR Dataset/test/X_test.txt"
x_test_df<-read.table(x_test_file)
#rename col names using feature file
colnames(x_test_df)<-feature_df[, 2]

y_test_file<-"./UCI HAR Dataset/test/y_test.txt"
y_test_df<-read.table(y_test_file)

subject_test_file<-"./UCI HAR Dataset/test/subject_test.txt"
subject_test_df<-read.table(subject_test_file)

y_test_activity_labels<-merge(y_test_df, activity_labels_df, by.x="V1", by.y="V1")
combined_test<-cbind(subject_test_df,y_test_activity_labels[, 2],x_test_df)
colnames(combined_test)[1]<-"subject"
colnames(combined_test)[2]<-"activity"
############# end test data ########

######### full data #######
full_data<-rbind(combined_train, combined_test)
######### end full data ######

######### full data with only mean and std deviation #######
wanted_index<-grepl("subject|activity|mean|std",names(full_data))
full_data_mean_std<-full_data[,wanted_index]
#############################

######### find average for each activity and each subject #####
tidy_df<-aggregate(.~subject+activity,full_data_mean_std, mean)
tidy_df<-arrange(tidy_df,subject,activity)
#############################

######### write table ######
write.table(tidy_df, file=".\\tidy.txt")
#############################
