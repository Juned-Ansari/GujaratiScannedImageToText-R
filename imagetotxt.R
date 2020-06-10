#install.packages("tesseract")


# For Gujarati
guj = tesseract("Gujarati")
text = tesseract::ocr("D:/R/guj.png", engine = guj)
cat(text)

# for english
eng <- tesseract("eng")
text <- tesseract::ocr("D:/R/2019_04_16_16_04_55_swami_vivekananda_quotes_Google_Search.png", engine = eng)
cat(text)


install.packages("magick")
install.packages("magrittr")
library(magick)
library(magrittr)
text <- image_read("https://courses.cs.vt.edu/csonline/AI/Lessons/VisualProcessing/OCRscans_files/bowers.jpg") %>%
  image_resize("2000") %>%
  image_convert(colorspace = 'gray') %>%
  image_trim() %>%
  image_ocr()

cat(text)




#install.packages("magick")
#install.packages("magrittr")
library(magick)
library(magrittr)
text <- image_read("D:/R/47a33c86-2e30-4cea-a274-856a853b022b.jpg") %>%
  image_resize("2000") %>%
  image_convert(colorspace = 'gray') %>%
  image_trim() %>%
  image_ocr()


input <- image_read("D:/R/47a33c86-2e30-4cea-a274-856a853b022b.jpg")
text <- input %>%
  image_resize("2000x") %>%
  image_convert(type = 'Grayscale') %>%
  image_trim(fuzz = 40) %>%
  image_write(format = 'jpg', density = '300x300') %>%
  tesseract::ocr() 

cat(text)



install.packages("tidyverse")


# For Gujarati
library(tidyverse)
library(tesseract)
guj = tesseract("Gujarati")

library(magick)
library(magrittr)
logo <- image_read("D:/R/datta.png")
image_modulate(logo, brightness = 200)

# Reduce image to 10 different colors using various spaces
image_quantize(logo, max = 10, colorspace = 'gray')
# Change background color
translogo <- image_transparent(logo, 'white')
image_background(translogo, "pink", flatten = TRUE)
# Compare to flood-fill method:
image_fill(logo, "pink", fuzz = 20)
# Other color tweaks
image_enhance(logo)

# Alternate way to convert into black-white
image_convert(logo, type = 'grayscale')


image_write(logo,"D:/R/datta1.png")




text <- image_read("D:/R/47a33c86-2e30-4cea-a274-856a853b022b.jpg") %>%
  image_resize("2000") %>%
  image_convert(colorspace = 'gray') %>%
  image_trim()


print("test")

image_write(text, path = "D:/R/datta3.png", format = "png")








input <- image_read("https://jeroen.github.io/images/bowers.jpg")

newimage <- input %>%
  image_resize("2000x") %>%
  image_convert(type = 'Grayscale') %>%
  image_trim(fuzz = 40) %>%
  image_write(format = 'png', density = '300x300')
  
image_write(newimage,"D:/R/datta21.png")





library(magick)
library(tesseract)
input <- image_read("D:/R/test.jpg")
newimage <- input %>%
  image_resize("5000x") %>%
  image_convert(type = 'Grayscale') %>%
  image_trim(fuzz = 40) %>%
  image_write(format = 'png', density = '300x300')
guj = tesseract("Gujarati")
text = tesseract::ocr(newimage, engine = guj)
cat(text)


fileConn<-file("D:/R/output.txt")
writeLines(cat(text), fileConn)
close(fileConn)




