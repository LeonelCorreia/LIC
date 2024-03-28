import isel.leic.UsbPort;
import isel.leic.usbio.UsbPort
object HAL {  // Virtualiza o acesso ao sistema UsbPort

    private var outputPortValue

    // Inicia a classe
    fun init(){
        outputPortValue = 0x00;
        isel.leic.UsbPort.write(outportValue);
        return;
    }
    // Retorna true se o bit tiver o valor lógico ‘1’
    fun isBit(mask: Int): Boolean{
        return if(outputPortValue.and(mask) >= 1);
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
        //1000_1111 and com o inverso (logo so é 1 quando os 2 forem 1)
        //(0000_0011) inverso = (1111_1100)
        //resultado = 1000_1100
        //ou com o xor onde é 1 quando sao os dois bits diferentes
        UsbPort.write(value xor mask)
    }
}