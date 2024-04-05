import isel.leic.utils.Time.*

object KBD { // Ler teclas. Métodos retornam ‘0’..’9’,’#’,’*’ ou NONE.

    const val NONE = 0.toChar()

    // Variavel que indica se o modulo esta inicializado
    private var initialized = false

    // Indice do array equivale ao codigo da tecla no keypad
    private val KEYS =
        arrayOf('1','4','7', '*', '2', '5', '8', '0', '3', '6', '9', '#', NONE, NONE, NONE, NONE)

    // Inicia a classe
    fun init(){
        if (initialized) return
        HAL.init()
        HAL.writeBits(0x10,0x00)
        initialized = true
        return
    }

    // Retorna de imediato a tecla premida ou NONE se não há tecla premida.
    fun getKey(): Char{
        // Verifica se alguma tecla foi primida
        if (HAL.isBit(0x10)) {
            val input = HAL.readBits(0x0F)
            // Indica no porto de saida que existe um bit para ser consumido
            HAL.writeBits(0x10,0x10)
            return KEYS[input]
        }else
            return NONE
    }

    // Retorna a tecla premida, caso ocorra antes do ‘timeout’ (representado em milissegundos), ou
    //NONE caso contrário.
    fun waitKey(timeout: Long): Char{
        val time = getTimeInMillis()
        var key: Char
        do {
            key = getKey()
            if (key != NONE) break
            val timeElapsed = getTimeInMillis() - time
        }while (timeout > timeElapsed)
        return key
    }
}

fun main(){
    KBD.init()
    // Verifica se alguma tecla foi primida durante um timeout de 5 segundoss
    println(KBD.waitKey(5000))
}