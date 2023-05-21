package com.ruoyi.balp.external.service;

import java.util.List;
import com.ruoyi.balp.external.domain.BalpExternalParts;

/**
 * 外购件Service接口
 *
 * @author ruoyi
 * @date 2023-05-21
 */
public interface IBalpExternalPartsService
{
    /**
     * 查询外购件
     *
     * @param seqno 外购件主键
     * @return 外购件
     */
    public BalpExternalParts selectBalpExternalPartsBySeqno(String seqno);

    /**
     * 查询外购件列表
     *
     * @param balpExternalParts 外购件
     * @return 外购件集合
     */
    public List<BalpExternalParts> selectBalpExternalPartsList(BalpExternalParts balpExternalParts);

    /**
     * 新增外购件
     *
     * @param balpExternalParts 外购件
     * @return 结果
     */
    public int insertBalpExternalParts(BalpExternalParts balpExternalParts);

    /**
     * 修改外购件
     *
     * @param balpExternalParts 外购件
     * @return 结果
     */
    public int updateBalpExternalParts(BalpExternalParts balpExternalParts);

    /**
     * 批量删除外购件
     *
     * @param seqnos 需要删除的外购件主键集合
     * @return 结果
     */
    public int deleteBalpExternalPartsBySeqnos(String[] seqnos);

    /**
     * 删除外购件信息
     *
     * @param seqno 外购件主键
     * @return 结果
     */
    public int deleteBalpExternalPartsBySeqno(String seqno);
}
