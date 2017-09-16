
## 3.1

library(stringr)
raw.data = "555-1239Moe Szyslak(636) 555-0113Burns, C. Montgomery555-6542Rev. Timothy Lovejoy555 8904Ned Flanders636-555-3226Simpson, Homer5553642Dr. Julius Hibbert" 
correctname = unlist(str_extract_all(raw.data, "[[:alpha:] ]{2,}[ ][ [:alpha:]]{2,}"))
correctnamesdf = data.frame(name = correctname)
incorrectname = unlist(str_extract_all(unlist(str_extract_all(raw.data, "[[:alpha:].]{1,}[[:alpha:].]{2,}")),"Montgomery|Burns|Homer|Simpson"))
fixednames = c(paste(incorrectname[2],incorrectname[1],sep = " "),paste(incorrectname[4],incorrectname[3],sep = " "))
findaldf= rbind(correctnamesdf,data.frame(name = fixednames))

print(unlist(findaldf$name))

## 3.2


logicalvectorv1 = unlist(str_extract_all(raw.data, "[ .,[:alpha:] ]{2,}[ [:alpha:]]{2,}"))
logicvec = str_detect(logicalvectorv1,"Rev.|Dr.")

print(logicvec)
## 3.3 

namesvectorv1 = unlist(str_extract_all(raw.data, "[ .,[:alpha:] ]{2,}[ [:alpha:]]{2,}"))
logicnamevec = str_detect(namesvectorv1,"C.")

print(logicnamevec)
## 4.1 

## The regular expression [0-9]+\\$ is used to parse strings that contain digits 0-9 and are pulls the digits from the end of a string of unspecified length and terminates at the dollar sign

samplestringone = "Hector[1801]Sdsad213123$222"
unlist(str_extract_all(samplestringone,"[0-9]+\\$"))

## 4.2

## The regular expression \\b[a-z]{1,4}\\b is used to parse strings that contain letters a-z and pulls words with the longest possible sequence being 4 characters long

samplestringtwo = "Hector is cool"
unlist(str_extract_all(samplestringtwo,'\\b[a-z]{1,4}\\b'))

## 4.3

## The regular expression .*?\\.txt$ is used to parse strings pulling text starting after the last $ sign and ending in .txt

samplestringthree = "$ Hector is super cool.txt $why.txt"
unlist(str_extract_all(samplestringthree,'.*?\\.txt$'))

## 4.4

## The regular expression \\d{2}/\\d{2}/\\d{4} is used to parse strings pulling two digits, two digits, and four digits that are followed by a /.

samplestringfour = "11232131344/22/1234123123123"
unlist(str_extract_all(samplestringfour,'\\d{2}/\\d{2}/\\d{4}'))

## 4.5 

## The regular expression <(.+?)>.+?</\\1> is used to parse strings pulling the items that start at and are contained between <> <> for an unspecified length starting back to the first instant of<text>.

samplestringfive = "Food <B>is great</B> text."
unlist(str_extract_all(samplestringfive,'<(.+?)>.+?</\\1>'))
