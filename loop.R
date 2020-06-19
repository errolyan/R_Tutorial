feeling <- c('sad','afraid')
for (i in feeling)
  print(
    switch(i,happy = 'I am glad you  are happy',
           afraid = 'there is nothing to fear',
           sad = 'cheer up',
           angry = 'calm down now'
    )
  )


# while
i <- 10
while (i>0) {print('hello');i <- i-1}

# for 
for (i in 1:10) print('hello')