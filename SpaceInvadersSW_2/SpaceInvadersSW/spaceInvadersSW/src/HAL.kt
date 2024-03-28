import isel.leic.UsbPort
object HAL {  // Virtualiza o acesso ao sistema UsbPort

    // Variável que guarda o valor do porto de saida
    private var outputPortValue = 0x00

    // Variavel que indica se o modulo esta inicializado
    private  var initialized = false

    // Inicia a classe
    fun init(){
        if (initialized) return
        UsbPort.write(outputPortValue)
        initialized = true
        return
    }
    // Retorna true se o bit tiver o valor lógico ‘1’
    fun isBit(mask: Int): Boolean{
        val input = UsbPort.read()
        return (input.and(mask) >= 1)
    }
    // Retorna os valores dos bits representados por mask presentes no UsbPort
    fun readBits(mask: Int): Int{
        val input = UsbPort.read()
        return input.and(mask)
    }

    // Escreve nos bits representados por mask os valores dos bits correspondentes em value
    fun writeBits(mask: Int, value: Int){
        val output = value.and(mask)
        outputPortValue = outputPortValue.and(mask.inv()).or(output)
        UsbPort.write(outputPortValue)
    }

    // Coloca os bits representados por mask no valor lógico ‘1’
    fun setBits(mask: Int){
        UsbPort.write(outputPortValue.or(mask))
    }

    // Coloca os bits representados por mask no valor lógico ‘0’
    fun clrBits(mask: Int) {
        UsbPort.write(outputPortValue.and(mask.inv()))
    }
}

fun main(){
    //Inicia o objeto HAL
    HAL.init()

    // Escreve no porto de saida 0x0F
    HAL.writeBits(0x0F, 0xFF)

    // Verifica se há bits ativos nos 4 bits de maior peso
    HAL.isBit(0xF0)



}