//执行这个脚本请先 brew install kotlin
// 终端跑 kotlinc -script  build_web.kts
import java.io.*
import java.io.FileOutputStream
import java.io.FileInputStream
import java.io.IOException
import java.io.BufferedReader
import java.io.File
import java.io.Closeable
import java.io.InputStreamReader
import java.nio.file.StandardCopyOption
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

class BuildConfig(
    val env: String,
    val domain: String,
)

val fat = "http://gsp-dc-mall-fat.newnary.cn/"
val pro = "https://www.elephantpal.com/"
val channelAndFormat = mutableListOf<BuildConfig>()
channelAndFormat.addAll(
    // 环境 渠道 包类型 
    listOf(
        BuildConfig("fat", fat),
    )
)
//println(execCmd(arrayOf("flutter clean")))
//println(execCmd(arrayOf("flutter packages get ")))
//val addToCommand = "--dart-define=isRelease=true --dart-define=isOnline=true --dart-define=appVersion=${buildName}"
val addToCommand = ""
channelAndFormat.forEach { itemConfig ->
    val buildWeb = mutableListOf<String>("flutter build web")

    // // buildApp.add("android")
    // buildWeb.add("--web-renderer html --pwa-strategy none")
    buildWeb.add("--dart-define=env=${itemConfig.env}")

    // 打包web相关
    var commandRun = buildWeb.joinToString(" ")
    println(commandRun)
    println(execCmd(arrayOf(commandRun)))

    // 优化相关
    // val optimizeWeb = mutableListOf<String>("cp -r ./build/app/intermediates/flutter/release/flutter_assets/fonts ./build/web/assets")
    // optimizeWeb.add("flutter pub run flutter_web_optimizer optimize  --asset-base ./")
    // optimizeWeb.add("rm -rf ./build/web/canvaskit")
    // optimizeWeb.add("rm -rf ./build/web/assets/NOTICES")
    // var optimizeRun = optimizeWeb.joinToString(" && ")
    // println(optimizeRun)
    // println(execCmd(arrayOf(optimizeRun)))

    println(
        replace(
            itemConfig.env,
        )
    )
}
println("打包完成")
// println(execCmd(arrayOf("open build/")))

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

fun replace(env: String) {
     val removePath = "build/dist"
     val removeZipPath = "build/dist.zip"
    
    val file = File(removePath)
    val zipFile = File(removeZipPath)
    
    if (file.exists()) {
        // if (file.delete()) {
        //     println("${file.name} 删除成功.")
        // } else {
        //     println(" ${file.name} 删除失败.")
        // }
        execCmd(arrayOf(mutableListOf<String>("rm -rf ./build/dist").joinToString("")))
    }
    if (zipFile.exists()) {
        execCmd(arrayOf(mutableListOf<String>("rm -rf ./build/dist.zip").joinToString("")))
        // if (zipFile.delete()) {
        //     println("${zipFile.name} 删除成功.")
        // } else {
        //     println("${zipFile.name} 删除失败.")
        // }
    }


    val oldDir = File("build/web")
    val newDir = File(removePath)

    if (oldDir.exists() && oldDir.isDirectory) {
        val success = oldDir.renameTo(newDir)
        if (success) {
            println("修改文件名成功.")
        } else {
            println("修改文件名失败.")
        }
    } else {
        println("没有该文件.")
    }

    // execCmd(arrayOf(mutableListOf<String>("zip -jr dist.zip ${removePath}").joinToString("")))
    println(execCmd(arrayOf("open buildWeb/")))

    // val sourceDir = File("./build/dist")
    // val zipFile = File("./build/dist.zip")

    zipDir(file, zipFile)
    File("build/dist.zip").copyTo(
        File("buildWeb/$env/dist.zip"),
        true
    )
    println("移动完成")
}


// fun main() {
//     val sourceDir = File("dist")
//     val zipFile = File("dist.zip")

//     zipDir(sourceDir, zipFile)
// }

fun zipDir(sourceDir: File, zipFile: File) {
    val zipOut = ZipOutputStream(FileOutputStream(zipFile))
    zipDirectory(sourceDir, sourceDir.name, zipOut)
    zipOut.close()
}

fun zipDirectory(directory: File, parentDir: String, zipOut: ZipOutputStream) {
    val files = directory.listFiles() ?: return

    for (file in files) {
        if (file.isDirectory) {
            zipDirectory(file, "$parentDir/${file.name}", zipOut)
            continue
        }

        val origin = FileInputStream(file)
        val entry = ZipEntry("$parentDir/${file.name}")
        zipOut.putNextEntry(entry)
        origin.copyTo(zipOut, 1024)
        origin.close()
    }
}