package com.ruoyi.balp.external.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 外购件对象 balp_external_parts
 *
 * @author ruoyi
 * @date 2023-05-21
 */
public class BalpExternalParts extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    @Excel(name = "序号")
    private String seqno;

    /** 是否外购件 */
    @Excel(name = "是否外购件")
    private String externalParts;

    /** 负责询价部门 */
    @Excel(name = "负责询价部门")
    private String inquiryDept;

    /** 单价 */
    @Excel(name = "单价")
    private BigDecimal unitPrice;

    public void setSeqno(String seqno)
    {
        this.seqno = seqno;
    }

    public String getSeqno()
    {
        return seqno;
    }
    public void setExternalParts(String externalParts)
    {
        this.externalParts = externalParts;
    }

    public String getExternalParts()
    {
        return externalParts;
    }
    public void setInquiryDept(String inquiryDept)
    {
        this.inquiryDept = inquiryDept;
    }

    public String getInquiryDept()
    {
        return inquiryDept;
    }
    public void setUnitPrice(BigDecimal unitPrice)
    {
        this.unitPrice = unitPrice;
    }

    public BigDecimal getUnitPrice()
    {
        return unitPrice;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("seqno", getSeqno())
                .append("externalParts", getExternalParts())
                .append("inquiryDept", getInquiryDept())
                .append("unitPrice", getUnitPrice())
                .toString();
    }
}
