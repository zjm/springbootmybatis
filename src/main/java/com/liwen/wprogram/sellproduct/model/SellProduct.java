package com.liwen.wprogram.sellproduct.model;

public class SellProduct {
    private Long id;

    private String productname;

    private Float price;

    private Integer kernel;

    private String thumbnail;

    private String detailimg;

    private Integer remainingnum;

    private Integer totalnum;

    private String createtime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname == null ? null : productname.trim();
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Integer getKernel() {
        return kernel;
    }

    public void setKernel(Integer kernel) {
        this.kernel = kernel;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail == null ? null : thumbnail.trim();
    }

    public String getDetailimg() {
        return detailimg;
    }

    public void setDetailimg(String detailimg) {
        this.detailimg = detailimg == null ? null : detailimg.trim();
    }

    public Integer getRemainingnum() {
        return remainingnum;
    }

    public void setRemainingnum(Integer remainingnum) {
        this.remainingnum = remainingnum;
    }

    public Integer getTotalnum() {
        return totalnum;
    }

    public void setTotalnum(Integer totalnum) {
        this.totalnum = totalnum;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime == null ? null : createtime.trim();
    }
}