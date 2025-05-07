//执行这个脚本请先 brew install kotlin
// 终端跑 kotlinc -script  build_apk.kts
// 正式环境命令：非发版，不要用！！！！ shorebird release android --artifact apk -- --dart-define=env=pro --flavor pro
import java.io.*
import java.io.FileOutputStream
import java.io.FileInputStream
import java.io.IOException
import java.io.BufferedReader
import java.io.File
import java.io.Closeable
import java.io.InputStreamReader
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import java.util.*


//是否是apk
var buildType = "apk"
// fat 是否用 shoreboird打包
var isFatBird = false

val scan = Scanner(System.`in`)
println("是否打包fat,输入1是fat,0是pro,然后按回车")
var env  = if(scan.nextInt() == 1) "fat" else "pro"
// if (env == "fat") {
// val inputFat = Scanner(System.`in`)
// println("是否用shorebird打包fat,输入1是,0否。（默认否） 然后按回车")
// isFatBird = if(inputFat.nextInt() == 1) true else false
// }

///只有pro才有aab和apk
if(env == "pro"){
    println("是否打apk,输入1是apk,0是aab")
    buildType = if(scan.nextInt() == 1) "apk" else "aab"
}else if(env == "fat"){
    buildType = "apk"
}
scan.close()

println("打-${env}-${buildType}")

class BuildConfig(
    val env: String,
    val type: String
)

val channelAndFormat = mutableListOf<BuildConfig>()
channelAndFormat.addAll(
    // 环境 渠道 包类型 
    listOf(
        BuildConfig(env, buildType)
    )
)
//println(execCmd(arrayOf("flutter clean")))
//println(execCmd(arrayOf("flutter packages get ")))
//val addToCommand = "--dart-define=isRelease=true --dart-define=isOnline=true --dart-define=appVersion=${buildName}"
val addToCommand = ""
channelAndFormat.forEach { itemConfig ->
    val buildApp = mutableListOf<String>()
    if(itemConfig.env == "fat"){
        if (isFatBird) {
            buildApp.add("shorebird release")
            buildApp.add("android")
            if (itemConfig.type == "apk") {
                buildApp.add("--artifact apk")
            }
            buildApp.add("-- --dart-define=env=${itemConfig.env}")
        } else {
            buildApp.add("flutter build apk")
            buildApp.add("--dart-define=env=${itemConfig.env}")
        }
        buildApp.add("--flavor fat")
    }else{
        buildApp.add("shorebird release")
        buildApp.add("android")
        if (itemConfig.type == "apk") {
            buildApp.add("--artifact apk")
        }
        buildApp.add("-- --dart-define=env=${itemConfig.env}")
        if (itemConfig.env == "fat") {
            buildApp.add("--flavor fat")
        } else {
            buildApp.add("--flavor pro")
        }
    }
    //正式包属性
    buildApp.add(addToCommand)

    var commandRun = buildApp.joinToString(" ")
    println(commandRun)
    println(execCmd(arrayOf(commandRun)))
    //如果是1那就是64位
    println(
        moveApk(
            itemConfig.env,
            itemConfig.type,
        )
    )
}
println("打包完成")
println(execCmd(arrayOf("open apk/")))

fun moveApk(env: String, type: String): String {
    val currentDateTime = LocalDateTime.now()
    val formatter = DateTimeFormatter.ofPattern("MM_dd-HH_mm")
    val formattedDateTime = currentDateTime.format(formatter)
    if (type == "apk") {
        File("build/app/outputs/flutter-apk/app-${env}-release.apk").copyTo(
            File("apk/$env/${formattedDateTime}.apk"),
            true
        )
    } 
    if (type == "aab" || env != "fat") {
        File("build/app/outputs/bundle/${env}Release/app-${env}-release.aab").copyTo(
            File("apk/$env/${formattedDateTime}.aab"),
            true
        )
    }
    return "移动完成"
}


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
