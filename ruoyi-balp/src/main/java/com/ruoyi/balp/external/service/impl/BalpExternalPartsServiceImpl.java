package com.ruoyi.balp.external.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.balp.external.mapper.BalpExternalPartsMapper;
import com.ruoyi.balp.external.domain.BalpExternalParts;
import com.ruoyi.balp.external.service.IBalpExternalPartsService;

/**
 * 外购件Service业务层处理
 *
 * @author ruoyi
 * @date 2023-05-21
 */
@Service
public class BalpExternalPartsServiceImpl implements IBalpExternalPartsService
{
    @Autowired
    private BalpExternalPartsMapper balpExternalPartsMapper;

    /**
     * 查询外购件
     *
     * @param seqno 外购件主键
     * @return 外购件
     */
    @Override
    public BalpExternalParts selectBalpExternalPartsBySeqno(String seqno)
    {
        return balpExternalPartsMapper.selectBalpExternalPartsBySeqno(seqno);
    }

    /**
     * 查询外购件列表
     *
     * @param balpExternalParts 外购件
     * @return 外购件
     */
    @Override
    public List<BalpExternalParts> selectBalpExternalPartsList(BalpExternalParts balpExternalParts)
    {
        return balpExternalPartsMapper.selectBalpExternalPartsList(balpExternalParts);
    }

    /**
     * 新增外购件
     *
     * @param balpExternalParts 外购件
     * @return 结果
     */
    @Override
    public int insertBalpExternalParts(BalpExternalParts balpExternalParts)
    {
        return balpExternalPartsMapper.insertBalpExternalParts(balpExternalParts);
    }

    /**
     * 修改外购件
     *
     * @param balpExternalParts 外购件
     * @return 结果
     */
    @Override
    public int updateBalpExternalParts(BalpExternalParts balpExternalParts)
    {
        return balpExternalPartsMapper.updateBalpExternalParts(balpExternalParts);
    }

    /**
     * 批量删除外购件
     *
     * @param seqnos 需要删除的外购件主键
     * @return 结果
     */
    @Override
    public int deleteBalpExternalPartsBySeqnos(String[] seqnos)
    {
        return balpExternalPartsMapper.deleteBalpExternalPartsBySeqnos(seqnos);
    }

    /**
     * 删除外购件信息
     *
     * @param seqno 外购件主键
     * @return 结果
     */
    @Override
    public int deleteBalpExternalPartsBySeqno(String seqno)
    {
        return balpExternalPartsMapper.deleteBalpExternalPartsBySeqno(seqno);
    }
}
