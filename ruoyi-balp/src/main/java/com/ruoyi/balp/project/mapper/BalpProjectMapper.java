package com.ruoyi.balp.project.mapper;

import java.util.List;
import com.ruoyi.balp.project.domain.BalpProject;

/**
 * 项目管理Mapper接口
 * 
 * @author hdc
 * @date 2023-05-07
 */
public interface BalpProjectMapper 
{
    /**
     * 查询项目管理
     * 
     * @param id 项目管理主键
     * @return 项目管理
     */
    public BalpProject selectBalpProjectById(Long id);

    /**
     * 查询项目管理列表
     * 
     * @param balpProject 项目管理
     * @return 项目管理集合
     */
    public List<BalpProject> selectBalpProjectList(BalpProject balpProject);

    /**
     * 新增项目管理
     * 
     * @param balpProject 项目管理
     * @return 结果
     */
    public int insertBalpProject(BalpProject balpProject);

    /**
     * 修改项目管理
     * 
     * @param balpProject 项目管理
     * @return 结果
     */
    public int updateBalpProject(BalpProject balpProject);

    /**
     * 删除项目管理
     * 
     * @param id 项目管理主键
     * @return 结果
     */
    public int deleteBalpProjectById(Long id);

    /**
     * 批量删除项目管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteBalpProjectByIds(Long[] ids);
}
