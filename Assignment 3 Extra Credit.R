#' ---
#' title: "Assignment 3 - Extra Credit"
#' author: "Hector Santana"
#' date: "9/17/2017"
#' ---


library(stringr)
codestring = 'clcopCow1zmstc0d87wnkig7OvdicpNuggvhryn92Gjuwczi8hqrfpRxs5Aj5dwpn0Tanwo
Uwisdij7Lj8kpf03AT5Idr3coc0bt7yczjatOaootj55t3Nj3ne6c4Sfek.r1w1YwwojigO
d6vrfUrbz2.2bkAnbhzgv4R9i05zEcrop.wAgnb.SqoU65fPa1otfb7wEm24k6t3sR9zqe5
fy89n6Nd5t9kc4fE905gmc4Rgxo5nhDk!gr'

## Trial Patterns
capitalizationpattern = str_extract_all(codestring,'[[:upper:]][[:alpha:]]{2}')
print(capitalizationpattern)

lowercasepattern = str_extract_all(codestring,'cop|crop')
print(lowercasepattern)

uppercaseletterstrial = str_extract_all(capitalizationpattern,'[[:upper:]]')
print(uppercaseletterstrial)

## Hidden Message

hiddenmessageuppercaseletters = unlist(str_extract_all(codestring,'[[:upper:]]'))


hiddenmessage =  paste(paste(hiddenmessageuppercaseletters[1:15],collapse = ""),paste(hiddenmessageuppercaseletters[16:18],collapse = ""),paste(hiddenmessageuppercaseletters[19:21],collapse=""),hiddenmessageuppercaseletters[22],paste(hiddenmessageuppercaseletters[23:31],collapse=""),sep = " ")
print(hiddenmessage)
