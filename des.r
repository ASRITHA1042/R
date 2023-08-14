install.packages("descipher")
library(descipher)
plaintext <- "Hello, this is a secret message!"
ciphertext <- des_enc(plaintext, key)
cat("Ciphertext: ", ciphertext, "\n")
decrypted_text <- des_dec(ciphertext, key)
cat("Decrypted text: ", decrypted_text, "\n")
