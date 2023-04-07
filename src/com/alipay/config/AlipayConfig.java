package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016102300744063";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCV9at1PcxtqqSX+iWODBN0kHmhEb92Mq5nhJ2yu3bz74Amam0F7xAhtKGz3m/oAQLFHuE7DwGXPPLafwYMjL63ZFbEq6Xv7ZZ4Vz6iV8xeo1myqowiW7TdM0QU5lqQvR0EPeFSMwy6NjJLU3GgruKig09LwoLcmMzmATuFKCxH3u0WqeykPZ5L+pZyPwAEqGNTy6LdzWQdYes3ylQnRLGFT1TCvoN0ITCkppEEv/7g3jMTB08u6Sh+og/jB7eQko3Qrp9BAo8rpvxqazewVu4ILu6WRV4eU+Y5g1YNRg7DctVwSh6ondAk7C6b5Y5rzzxSNDTFtj27YwuAZbU+Zm25AgMBAAECggEAPdcLl9OeQ/NE4O9lIUjVlRInNkbtX77SsRm9NoGcMkgn3q+wueu2CVBGBrjKCTCxhbyQQRyVGVsnAvey9OXtmA8mwP/P9DtT+9humd//BV/zk3xFQb3zvexwPPYpjtqN5rvl+VHYA8ppvypwB0VXbJEd2C4kbPgONyN2+hhw+knL71q6R3TCItNrEJcRqh3zg3ojEVQQU0HnCzEMoMzVqCwzwZkq1e9QxoUaw+WU6JfadO7T5y6eVQWSzC22WjWsOhRpvPkcjSPxWJU+2Ls2VbGx//ruBOFr0liGEsVS6/k0gh6OVQ/lXMLKMKBxaYEQK5ynFqR8qMGzggTfF96QCQKBgQD4U115m/d/sEGxYqtwK3RmssvJ5v0BdJ4NkZwt1hnJY/GW6YyDKUA5wr37EdwpGGlTBqyAbWHDRN92dcSP4HPXxgv/O64ztfu/jJLTLwtgcrbYyxTECX+6+SRBhep7BCpP6pq7P7vVv+k96MtMdmPYvDdVye6Kd2UjhV/Ul5/ECwKBgQCamBRWq5r+6u8w/b+HupeQU82QJUsrXbQ28bZE6gmisDrKDPs/LbPU0kfAeF8GZL5GqhOHmXmNKhzaisrVA5I7W54sv33BiApkeZppL0ORNnEsV0vTUK4yc+D67BLVE0OXZLrr30Qgben//lhR96teUBfI62p2AWqqUXH3MEyLywKBgEcKqnpI+XRpO1IBFWTAuctLqWt4jrck4ralCpY+YyAvXIU9CXrYiUw8/1bdlCuZlUAwb5dKM6bGhFuCc5pprxpyySnarAqVLJFvKO4LzmhoSREagDVZNlaKQioQorVQyr4UMvIQ2K7c+WBBwi98yzHNHtOHMpwgbinMVU8flZBjAoGAe5iSyigwpxXVXenBMxavDiix9EicrHMiHbtp6fbi9TrIBboTNROo7sGfs/WIo2fv6DcZnhPJ5l6A6wiD2YIda294KnZ+aDgHdwTxup6a+oH4QWcZrDyYyKV0fag39jqMk4FpICNEKFk39/61RfMpAyItoej1GJtRWBH9d48Z47kCgYApl0cgCpH+M1CFC+ViEOcQLn2zzRYkdSmLZYywcG/azh0/JkWj778rkGb+PPiqbBm3WF7FVblB4gbqoRZOXgjuy2cPE7Mx/vrIzsRUvtZhe77l7uZfUkrg76RXw2xwfhGJ+zS2eV4T8e4/RtKWBGcI+xO3esLkOBNUclCP1HLGDg==";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuiDS77m8hRg8WKvxggc91QuqKykDhaBvAcQlqMjiAgEm3OuRWjrruqZLJ3dt6piqoUwy9DYfb9bXhPY/ASbY/rc6T139Q8Z4wm++tlXwrYKaMNi+/bCzGLYE9pndgKpDJ7/b7pqKrHnOP0BZue2A6x3hCFAPuryWQm9A85IP9fiFb9MiH5gmO7AsNwNliqa7O5TRX/6MHgfPIynV7csj5HluctuejgMOJzvGBxx2jDyosqKwA0n5FDRiT3kOes1vY1ylVYHVHh50VMAhs3f4tadiXQq+rJ2TuQRgBN63/R2GzD0yzFhXpUp9z+lk0LW4txus61aHIbmgz7R+Mgw5KQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/PlantNet/notify_url.form";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/PlantNet/return_url.form";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

