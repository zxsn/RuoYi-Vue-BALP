package com.ruoyi.balp.parts.service;

import java.util.List;

import com.ruoyi.balp.parts.domain.BalpParts;

/**
 * 零组件Service接口
 * 
 * @author hdc
 * @date 2023-05-07
 */
public interface IBalpPartsService 
{
    /**
     * 查询零组件
     * 
     * @param id 零组件主键
     * @return 零组件
     */
    public BalpParts selectBalpPartsById(String id);

    /**
     * 查询零组件列表
     * 
     * @param balpParts 零组件
     * @return 零组件集合
     */
    public List<BalpParts> selectBalpPartsList(BalpParts balpParts);

    /**
     * 新增零组件
     * 
     * @param balpParts 零组件
     * @return 结果
     */
    public int insertBalpParts(BalpParts balpParts);

    /**
     * 修改零组件
     * 
     * @param balpParts 零组件
     * @return 结果
     */
    public int updateBalpParts(BalpParts balpParts);

    /**
     * 批量删除零组件
     * 
     * @param ids 需要删除的零组件主键集合
     * @return 结果
     */
    public int deleteBalpPartsByIds(String[] ids);

    /**
     * 删除零组件信息
     * 
     * @param id 零组件主键
     * @return 结果
     */
    public int deleteBalpPartsById(String id);
}
