# Criando gifs no R

library("magick")

png_1 <- image_read("arv_natal.jpg")
png_2 <- image_read("arv_natal_2.jpg")

gif <- c(png_1, png_2)

animacao <- image_animate(image_scale(gif, "550"),
                          fps = 2.5,
                          dispose = "previous")

image_write(animacao, "anim.gif")
