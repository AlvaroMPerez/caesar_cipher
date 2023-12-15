
def caesar_cipher(text, number)
    cifrado = ""
    text.each_char do |letra|
        if letra.match?(/[a-zA-Z]/)
            letra_ascii_numero = letra.ord
            nueva_letra_ascii = (letra_ascii_numero + number - 'a'.ord)%26 + 'a'.ord
            letra_cifrada = nueva_letra_ascii.chr
            cifrado += letra_cifrada
        else
            cifrado += letra
        end
    end
    return cifrado
  end

  puts caesar_cipher("Abc",3)
