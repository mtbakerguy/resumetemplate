#!/usr/local/bin/Rscript

require('wordcloud')
words <- read.csv('words.txt')
pdf('wordcloud.pdf')
wordcloud(as.matrix(words),min.freq=5,colors=RColorBrewer::brewer.pal(5,'Spectral'))
dev.off()
