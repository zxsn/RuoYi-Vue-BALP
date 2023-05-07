package com.ruoyi.balp.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.balp.mapper.BalpProjectMapper;
import com.ruoyi.balp.domain.BalpProject;
import com.ruoyi.balp.service.IBalpProjectService;

/**
 * 项目管理Service业务层处理
 * 
 * @author hdc
 * @date 2023-05-07
 */
@Service
public class BalpProjectServiceImpl implements IBalpProjectService 
{
    @Autowired
    private BalpProjectMapper balpProjectMapper;

    /**
     * 查询项目管理
     * 
     * @param id 项目管理主键
     * @return 项目管理
     */
    @Override
    public BalpProject selectBalpProjectById(Long id)
    {
        return balpProjectMapper.selectBalpProjectById(id);
    }

    /**
     * 查询项目管理列表
     * 
     * @param balpProject 项目管理
     * @return 项目管理
     */
    @Override
    public List<BalpProject> selectBalpProjectList(BalpProject balpProject)
    {
        return balpProjectMapper.selectBalpProjectList(balpProject);
    }

    /**
     * 新增项目管理
     * 
     * @param balpProject 项目管理
     * @return 结果
     */
    @Override
    public int insertBalpProject(BalpProject balpProject)
    {
        balpProject.setCreateTime(DateUtils.getNowDate());
        return balpProjectMapper.insertBalpProject(balpProject);
    }

    /**
     * 修改项目管理
     * 
     * @param balpProject 项目管理
     * @return 结果
     */
    @Override
    public int updateBalpProject(BalpProject balpProject)
    {
        balpProject.setUpdateTime(DateUtils.getNowDate());
        return balpProjectMapper.updateBalpProject(balpProject);
    }

    /**
     * 批量删除项目管理
     * 
     * @param ids 需要删除的项目管理主键
     * @return 结果
     */
    @Override
    public int deleteBalpProjectByIds(Long[] ids)
    {
        return balpProjectMapper.deleteBalpProjectByIds(ids);
    }

    /**
     * 删除项目管理信息
     * 
     * @param id 项目管理主键
     * @return 结果
     */
    @Override
    public int deleteBalpProjectById(Long id)
    {
        return balpProjectMapper.deleteBalpProjectById(id);
    }
}
