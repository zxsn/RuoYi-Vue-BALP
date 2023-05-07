package com.ruoyi.parts.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.parts.domain.BalpParts;
import com.ruoyi.parts.mapper.BalpPartsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.parts.service.IBalpPartsService;

/**
 * 零组件Service业务层处理
 * 
 * @author hdc
 * @date 2023-05-07
 */
@Service
public class BalpPartsServiceImpl implements IBalpPartsService 
{
    @Autowired
    private BalpPartsMapper balpPartsMapper;

    /**
     * 查询零组件
     * 
     * @param id 零组件主键
     * @return 零组件
     */
    @Override
    public BalpParts selectBalpPartsById(String id)
    {
        return balpPartsMapper.selectBalpPartsById(id);
    }

    /**
     * 查询零组件列表
     * 
     * @param balpParts 零组件
     * @return 零组件
     */
    @Override
    public List<BalpParts> selectBalpPartsList(BalpParts balpParts)
    {
        return balpPartsMapper.selectBalpPartsList(balpParts);
    }

    /**
     * 新增零组件
     * 
     * @param balpParts 零组件
     * @return 结果
     */
    @Override
    public int insertBalpParts(BalpParts balpParts)
    {
        balpParts.setCreateTime(DateUtils.getNowDate());
        return balpPartsMapper.insertBalpParts(balpParts);
    }

    /**
     * 修改零组件
     * 
     * @param balpParts 零组件
     * @return 结果
     */
    @Override
    public int updateBalpParts(BalpParts balpParts)
    {
        balpParts.setUpdateTime(DateUtils.getNowDate());
        return balpPartsMapper.updateBalpParts(balpParts);
    }

    /**
     * 批量删除零组件
     * 
     * @param ids 需要删除的零组件主键
     * @return 结果
     */
    @Override
    public int deleteBalpPartsByIds(String[] ids)
    {
        return balpPartsMapper.deleteBalpPartsByIds(ids);
    }

    /**
     * 删除零组件信息
     * 
     * @param id 零组件主键
     * @return 结果
     */
    @Override
    public int deleteBalpPartsById(String id)
    {
        return balpPartsMapper.deleteBalpPartsById(id);
    }
}
