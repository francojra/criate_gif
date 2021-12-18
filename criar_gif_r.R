# Criando gifs no R

# Baixar pacote ----------------------------------------------------------------------------------------------------------------------------

library("magick")

# Salvar imagens para o gif ----------------------------------------------------------------------------------------------------------------

png_1 <- image_read("arv_natal.png") 
png_2 <- image_read("arv_natal_2.png")
png_3 <- image_read("arv_natal_3.png")
png_4 <- image_read("arv_natal_4.png")

# image_read é a função para ler as imagens salvas no diretório.

# Salvar imagens ordenadas -----------------------------------------------------------------------------------------------------------------

gif <- c(png_1, png_2, png_3, png_4)

# Criar o gif (animação) -------------------------------------------------------------------------------------------------------------------

animacao <- image_animate(image_scale(gif, "550"),
                          fps = 2.5,
                          dispose = "previous")

# image_animate é a função que criará o gif.
# image_scale é a função para declarar o tamanho da imagem e os segundos da animação (fps)
# juntamente ao dispose com o argumento "previous" que substituirá a primeira imagem pela segunda
# gerando a animação.

# Salvar o gif no diretório ----------------------------------------------------------------------------------------------------------------

image_write(animacao, "anim.gif") 

# image_write é a função para salvar a animação criada anteriormente com o nome
# e o formato da imagem em gif (anim.gif).
