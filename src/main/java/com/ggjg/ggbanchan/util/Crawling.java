package com.ggjg.ggbanchan.util;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import java.io.IOException;

public class Crawling {
//    final String url = "https://pcmap.place.naver.com/place/17736608/review/visitor?entry=plt&from=map&fromPanelNum=1&ts=1691571244793";
    final String url = "https://map.naver.com/v5/entry/place/17736608?lng=127.7757330&lat=36.1756811&placePath=%2Fhome%3Fentry=plt&c=15,0,0,0,dh";
    Connection conn = Jsoup.connect(url);
    Document document;
    // https://zzang9ha.tistory.com/337
    {
        try {
            document = conn.get();
            Elements inageUrlElements = document.getElementsByClass(""); //classs 가져오기
            /*
            *    Elements priceElements = document.getElementsByClass("price");

            for (int j = 0; j < priceElements.size(); j++) {
                final String price = priceElements.get(j).text();
                final String realPrice = getRealPrice(price);
                final String salePrice = getSalePrice(price);

                final int realIntPrice = toInt(removeNotNumeric(realPrice));
                final int saleIntPrice = toInt(removeNotNumeric(salePrice));

                System.out.println("가격: " + realIntPrice);
                System.out.println("할인 가격: " + saleIntPrice);
            }
            *
            * */
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }


}
