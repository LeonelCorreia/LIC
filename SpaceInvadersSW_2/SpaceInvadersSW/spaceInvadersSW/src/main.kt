
fun main(){
    val a = HAL

    val mask = 0x3C
    val value = 0x58
    //val res = a.readBits(mask)
    //println(res)
    a.writeBits(mask, value)
}