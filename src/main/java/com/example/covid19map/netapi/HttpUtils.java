package com.example.covid19map.netapi;

import org.apache.http.HttpEntity;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Component;

import java.io.IOException;

/**
 * @author Jun
 * @date 2022/10/27 10:34
 * @description HttpUtils
 */
@Component
public class HttpUtils {
     /*
     * 发送网络请求工具
     */
    public String getData() throws IOException {
        // 1.请求参数
        RequestConfig requestConfig = RequestConfig.custom()
                .setSocketTimeout(10000)
                .setConnectionRequestTimeout(10000)
                .setConnectTimeout(10000)
                .build();
        CloseableHttpClient httpClient = null;
        HttpGet request = null;
        CloseableHttpResponse response = null;
        try {
            //  创建Httpclient
            httpClient = HttpClients.createDefault();
            // 发送网络请求
            request = new HttpGet("https://c.m.163.com/ug/api/wuhan/app/data/list-total");
            //  配置信息
            request.setConfig(requestConfig);
            //  发送请求
            response = httpClient.execute(request);
//            System.out.println(response);
            //  查看状态码是否成功
            int statusCode = response.getStatusLine().getStatusCode();
            if (statusCode==200) {
                //  解析数据
                HttpEntity entity = response.getEntity();
                String data = EntityUtils.toString(entity, "utf-8");
                return data;
            }
        }catch (ClientProtocolException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        } finally {
            if (response!=null){
                response.close();
            }
            if (request!=null){
                request.releaseConnection();
            }
            if (httpClient!=null){
                httpClient.close();
            }
        }
        return null;
    }
}