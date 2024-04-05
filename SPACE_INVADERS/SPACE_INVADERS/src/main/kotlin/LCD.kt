import isel.leic.utils.Time.*
import kotlin.math.abs

object LCD { // Escreve no LCD usando a interface a 4 bits.
    private const val LINES = 2
    private const val COLS = 16 // Dimensão do display.
    // Adress corrente da memoria DDRAM
    private var DDRAM_ADRESS = 0x00
    private const val RS_MASK = 0x40 //diferente
    private const val CLK_MASK = 0x10
    private  const val EN_MASK = 0x20
    private const val  LOW_MASK = 0x0F
    private const val WRITE_MASK = 0x7F
    private const val CMD_FLAG = false
    private const val DATA_FLAG = true
    private var initialized = false
    private var hal = HAL

    //List of CMD for initialization
    private const val INIT_CMD_WAITS = 0x30
    private const val FIRST_INIT_CMD = 0x34
    private const val SECOND_INIT_CMD = 0x10
    private const val THIRD_INIT_CMD = 0x01
    private const val FORTH_INIT_CMD = 0x07

    private const val CLEAR_DISPLAY_CMD = 0x01
    private const val RETURN_HOME_CMD = 0x02

    private const val SET_DDRAM_ADDR_MASK = 0x80
    private const val SHIFT_DISPLAY_LEFT_CMD = 0X18
    private const val SHIFT_DISPLAY_RIGHT_CMD = 0X1C

    // Escreve um byte de comando/dados no LCD em paralelo
    private fun writeByteParallel(rs: Boolean, data: Int){
        if(rs) {
            hal.setBits(RS_MASK) //
        }
        else {
            hal.clrBits(RS_MASK) //
        }
        hal.writeBits(LOW_MASK, data.shr(4)) //
        hal.setBits(CLK_MASK) //
        hal.clrBits(CLK_MASK) //
        hal.writeBits(LOW_MASK, data) //
        hal.setBits(CLK_MASK) //
        hal.clrBits(CLK_MASK) //
        hal.setBits(EN_MASK) //
        hal.clrBits(EN_MASK)//
    }

    // Escreve um byte de comando/dados no LCD em série
    private fun writeByteSerial(rs: Boolean, data: Int){
        //TODO
    }
    // Escreve um byte de comando/dados no LCD
    private fun writeByte(rs: Boolean, data: Int){
        writeByteParallel(rs, data)
    }
    // Escreve um comando no LCD
    private fun writeCMD(data: Int){
        writeByte(CMD_FLAG,data)
    }
    // Escreve um dado no LCD
    private fun writeDATA(data: Int){
        writeByte(DATA_FLAG,data)
    }
    // Envia a sequência de iniciação para comunicação a 4 bits.
    fun init(){
        if(initialized) return
        initialized = true
        // Espera-se 15 ms após Power On
        sleep(15)
        // Primeiro comando de escrita
        writeCMD(0x30)
        // Espera-se mais 4.1 ms, como sl
        sleep(5)
        // Proximo comando de escrita
        writeCMD(0x30)
        //Esperamos 1 ms
        sleep(1)
        writeCMD(0x30)
        writeCMD(0x38) //Function set (display lines and character font)
        writeCMD(0x08) //Display off
        writeCMD(0x01) //Clear display
        writeCMD(0x06) //Entry mode set
        writeCMD(0x0f) //Display on

    }
    // Escreve um caráter na posição corrente.
    fun write(c: Char){
        when(DDRAM_ADRESS){
            0x28 -> DDRAM_ADRESS = 0x40
            0x68 -> DDRAM_ADRESS = 0x00
        }
        writeCMD(SET_DDRAM_ADDR_MASK.or(DDRAM_ADRESS))
        DDRAM_ADRESS ++
        writeDATA(c.code)
    }
    // Escreve uma string na posição corrente.
    fun write(text: String){
        for(c in text){
            write(c)
        }
    }
    // Envia comando para posicionar cursor (‘line’:0..LINES-1 , ‘column’:0..COLS-1)
    fun cursor(line: Int, column: Int) {
        val cmd = (0x40 * line + 0x80)  + column
            /*when (line) {
            0 -> 0x80 + column // 0x80 para a primeira linha
            else -> 0xC0 + column // 0xC0 para a segunda linha
        }
        */
        writeCMD(cmd)
    }


    // Envia comando para limpar o ecrã e posicionar o cursor em (0,0)
    fun clear(){
        writeCMD(CLEAR_DISPLAY_CMD)//
    }
}

fun main(){
    LCD.init()
    LCD.write("abcd1238*->jjjj")
    LCD.cursor(1,4)
}
