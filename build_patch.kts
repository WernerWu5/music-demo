//执行这个脚本请先 brew install kotlin
// 终端跑 kotlinc -script  build_apk.kts
import java.io.*
import java.io.FileOutputStream
import java.io.FileInputStream
import java.io.IOException
import java.io.BufferedReader
import java.io.File
import java.io.Closeable
import java.io.InputStreamReader

class BuildConfig(
    val env: String,
)

val channelAndFormat = mutableListOf<BuildConfig>()
channelAndFormat.addAll(
    listOf(
        BuildConfig("pro"),
    )
)
//println(execCmd(arrayOf("flutter clean")))
//println(execCmd(arrayOf("flutter packages get ")))
//val addToCommand = "--dart-define=isRelease=true --dart-define=isOnline=true --dart-define=appVersion=${buildName}"
val addToCommand = ""
channelAndFormat.forEach { itemConfig ->
    val buildApp = mutableListOf<String>("shorebird patch")
    
    buildApp.add("android")

    buildApp.add("-- --dart-define=env=${itemConfig.env}")

    if (itemConfig.env == "fat") {
        buildApp.add("--flavor fat")
    } else {
        buildApp.add("--flavor pro")
    }

    //正式包属性
    buildApp.add(addToCommand)

    var commandRun = buildApp.joinToString(" ")
    println(commandRun)
    println(execCmd(arrayOf(commandRun)))
}
println("补丁完成")


/**
 * 执行系统命令, 返回执行结果
 *
 * @param cmd 需要执行的命令
 * @param dir 执行命令的子进程的工作目录, null 表示和当前主进程工作目录相同
 */
fun execCmd(cmd: Array<String>): String? {
    val result = StringBuilder()
    var process: Process? = null
    var bufrIn: BufferedReader? = null
    var bufrError: BufferedReader? = null
    try {
        // 执行命令, 返回一个子进程对象（命令在子进程中执行）
        process = if(cmd.size == 1) Runtime.getRuntime().exec(cmd.first()) else Runtime.getRuntime().exec(cmd)

        // 方法阻塞, 等待命令执行完成（成功会返回0）
        process.waitFor()

        // 获取命令执行结果, 有两个结果: 正常的输出 和 错误的输出（PS: 子进程的输出就是主进程的输入）
        bufrIn = BufferedReader(InputStreamReader(process.inputStream, "UTF-8"))
        bufrError = BufferedReader(InputStreamReader(process.errorStream, "UTF-8"))
        result.append(bufrIn.readLines().joinToString("\n"))
        result.append(bufrError.readLines().joinToString("\n"))
    } finally {
        closeStream(bufrIn)
        closeStream(bufrError)

        // 销毁子进程
        process?.destroy()
    }

    // 返回执行结果
    return result.toString()
}

fun closeStream(stream: Closeable?) {
    if (stream != null) {
        try {
            stream.close()
        } catch (e: Exception) {
            // nothing
        }
    }
}
