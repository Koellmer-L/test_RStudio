data <- read.csv("https://raw.githubusercontent.com/joachim-gassen/oss_mame/master/raw_data/olearning_data/mame_olearning_raw_data_t1_a1.csv?token=AfnCvT5xgb8LC-KWkZyZbU88KSwJxLiwks5aIFnEwA%3D%3D", TRUE, ";")
data

data1 <- read.csv("https://raw.githubusercontent.com/joachim-gassen/oss_mame/master/raw_data/exam_data/mame_exam_1_raw_data.csv?token=AfnCve1TUZJ4q0XJhsOIpGEGxoo7hDz6ks5aIFy2wA%3D%3D" , TRUE, ";")
data2 <- read.csv("https://raw.githubusercontent.com/joachim-gassen/oss_mame/master/raw_data/exam_data/mame_exam_2_raw_data.csv?token=AfnCvVn82FSUp6QX3ENAyMfxr7KIz3TZks5aIF27wA%3D%3D" , TRUE, ";")
data2
getwd()
saveRDS(data1, "data1.RDS")
