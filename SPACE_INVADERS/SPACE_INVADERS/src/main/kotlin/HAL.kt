import isel.leic.UsbPort
object HAL {  // Virtualiza o acesso ao sistema UsbPort

    private var outputPortValue = 0x00

    // Inicia a classe
    fun init(){
        outputPortValue = 0x00;
        UsbPort.write(outputPortValue);
        return;
    }
    // Retorna true se o bit tiver o valor lógico ‘1’
    fun isBit(mask: Int): Boolean{
        return if(outputPortValue.and(mask) >= 1) return true else false;
    }
    // Retorna os valores dos bits representados por mask presentes no UsbPort
    fun readBits(mask: Int): Int{
        val input = UsbPort.read()
        return input.and(mask)
    }

    // Escreve nos bits representados por mask os valores dos bits correspondentes em value
    fun writeBits(mask: Int, value: Int){ //Paulo
        val output = value.and(mask)
        outputPortValue = outputPortValue.and(mask.inv()).or(output)
        UsbPort.write(outputPortValue)
    }
    // Coloca os bits representados por mask no valor lógico ‘1’
    fun setBits(mask: Int){
        outputPortValue = outputPortValue.or(mask)
        UsbPort.write(outputPortValue)
    }
    // Coloca os bits representados por mask no valor lógico ‘0’
    fun clrBits(mask: Int) {
        outputPortValue = outputPortValue.and(mask.inv())
        UsbPort.write(outputPortValue)
    }
}

fun main(){
    HAL.init()
}