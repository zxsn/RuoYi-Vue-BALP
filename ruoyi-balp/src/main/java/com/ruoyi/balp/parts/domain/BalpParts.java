package com.ruoyi.balp.parts.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 零组件对象 balp_parts
 * 
 * @author hdc
 * @date 2023-05-07
 */
public class BalpParts extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    @Excel(name = "主键")
    private Integer id;

    @Excel(name = "序号")
    private String seqno;

    /** 项目编号 */
    @Excel(name = "项目编号")
    private String projectId;

    /** 零组件名称 */
    @Excel(name = "零组件名称")
    private String partsName;

    /** 零组件号 */
    @Excel(name = "零组件号")
    private String partsNo;

    /** 模型号 */
    @Excel(name = "模型号")
    private String modelNo;

    /** 数量 */
    @Excel(name = "数量")
    private Long number;

    /** 版次 */
    @Excel(name = "版次")
    private String version;

    /** 分类 */
    @Excel(name = "分类")
    private String sort;

    /** 分配车间 */
    @Excel(name = "分配车间")
    private String dealShop;

    private String updateBy;

    @Override
    public String getUpdateBy() {
        return updateBy;
    }

    @Override
    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public void setId(Integer id)
    {
        this.id = id;
    }


    public String getSeqno() {
        return seqno;
    }

    public void setSeqno(String seqno) {
        this.seqno = seqno;
    }

    public Integer getId()
    {
        return id;
    }
    public void setProjectId(String projectId) 
    {
        this.projectId = projectId;
    }

    public String getProjectId() 
    {
        return projectId;
    }
    public void setPartsName(String partsName) 
    {
        this.partsName = partsName;
    }

    public String getPartsName() 
    {
        return partsName;
    }
    public void setPartsNo(String partsNo) 
    {
        this.partsNo = partsNo;
    }

    public String getPartsNo() 
    {
        return partsNo;
    }
    public void setModelNo(String modelNo) 
    {
        this.modelNo = modelNo;
    }

    public String getModelNo() 
    {
        return modelNo;
    }
    public void setNumber(Long number) 
    {
        this.number = number;
    }

    public Long getNumber() 
    {
        return number;
    }
    public void setVersion(String version) 
    {
        this.version = version;
    }

    public String getVersion() 
    {
        return version;
    }
    public void setSort(String sort) 
    {
        this.sort = sort;
    }

    public String getSort() 
    {
        return sort;
    }
    public void setDealShop(String dealShop) 
    {
        this.dealShop = dealShop;
    }

    public String getDealShop() 
    {
        return dealShop;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("seqno",getSeqno())
            .append("projectId", getProjectId())
            .append("partsName", getPartsName())
            .append("partsNo", getPartsNo())
            .append("modelNo", getModelNo())
            .append("number", getNumber())
            .append("version", getVersion())
            .append("sort", getSort())
            .append("dealShop", getDealShop())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
