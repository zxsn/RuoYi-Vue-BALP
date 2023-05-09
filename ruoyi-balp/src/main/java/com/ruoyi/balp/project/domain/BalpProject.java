package com.ruoyi.balp.project.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 项目管理对象 balp_project
 * 
 * @author hdc
 * @date 2023-05-07
 */
public class BalpProject extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 项目编号 */
    @Excel(name = "项目编号")
    private String projectId;

    /** 项目名称 */
    @Excel(name = "项目名称")
    private String projectName;

    /** 客户 */
    @Excel(name = "客户")
    private String customer;

    /** 报价节点 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "报价节点", width = 30, dateFormat = "yyyy-MM-dd")
    private Date offerNode;

    /** 报价状态 */
    @Excel(name = "报价状态")
    private String offerStatus;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
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
    public void setProjectName(String projectName) 
    {
        this.projectName = projectName;
    }

    public String getProjectName() 
    {
        return projectName;
    }
    public void setCustomer(String customer) 
    {
        this.customer = customer;
    }

    public String getCustomer() 
    {
        return customer;
    }
    public void setOfferNode(Date offerNode) 
    {
        this.offerNode = offerNode;
    }

    public Date getOfferNode() 
    {
        return offerNode;
    }
    public void setOfferStatus(String offerStatus) 
    {
        this.offerStatus = offerStatus;
    }

    public String getOfferStatus() 
    {
        return offerStatus;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("projectId", getProjectId())
            .append("projectName", getProjectName())
            .append("customer", getCustomer())
            .append("offerNode", getOfferNode())
            .append("offerStatus", getOfferStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
