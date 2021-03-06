package com.great.kindergarten.director.resultbean;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import java.util.List;

/**
 * layui数据表实体类
 */
@Component(value = "DateTable")
@Scope("prototype")
public class DateTable
{
    private Integer code;
    private String msg = " ";
    private Integer count;
    private List<?> data;


    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public List<?> getData() {
        return data;
    }

    public void setData(List<?> data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "DateWrite{" +
                "code=" + code +
                ", msg='" + msg + '\'' +
                ", count=" + count +
                ", data=" + data +
                '}';
    }
}
