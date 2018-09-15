package com.liwen.wprogram.user.model;

public class UserInfo {
    private Long id;

    private String name;

    private String phone;

    private String address;

    private String company;

    private String department;

    private String weixinhao;

    private Integer mykernel;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company == null ? null : company.trim();
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department == null ? null : department.trim();
    }

    public String getWeixinhao() {
        return weixinhao;
    }

    public void setWeixinhao(String weixinhao) {
        this.weixinhao = weixinhao == null ? null : weixinhao.trim();
    }

    public Integer getMykernel() {
        return mykernel;
    }

    public void setMykernel(Integer mykernel) {
        this.mykernel = mykernel;
    }
}