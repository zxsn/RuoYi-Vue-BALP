package com.ruoyi.balp.project.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.balp.project.domain.BalpProject;
import com.ruoyi.balp.project.service.IBalpProjectService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 项目管理Controller
 * 
 * @author hdc
 * @date 2023-05-07
 */
@RestController
@RequestMapping("/balp/project")
public class BalpProjectController extends BaseController
{
    @Autowired
    private IBalpProjectService balpProjectService;

    /**
     * 查询项目管理列表
     */
    @PreAuthorize("@ss.hasPermi('balp:project:list')")
    @GetMapping("/list")
    public TableDataInfo list(BalpProject balpProject)
    {
        startPage();
        List<BalpProject> list = balpProjectService.selectBalpProjectList(balpProject);
        return getDataTable(list);
    }

    /**
     * 导出项目管理列表
     */
    @PreAuthorize("@ss.hasPermi('balp:project:export')")
    @Log(title = "项目管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, BalpProject balpProject)
    {
        List<BalpProject> list = balpProjectService.selectBalpProjectList(balpProject);
        ExcelUtil<BalpProject> util = new ExcelUtil<BalpProject>(BalpProject.class);
        util.exportExcel(response, list, "项目管理数据");
    }

    /**
     * 获取项目管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('balp:project:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(balpProjectService.selectBalpProjectById(id));
    }

    /**
     * 新增项目管理
     */
    @PreAuthorize("@ss.hasPermi('balp:project:add')")
    @Log(title = "项目管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BalpProject balpProject)
    {
        return toAjax(balpProjectService.insertBalpProject(balpProject));
    }

    /**
     * 修改项目管理
     */
    @PreAuthorize("@ss.hasPermi('balp:project:edit')")
    @Log(title = "项目管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BalpProject balpProject)
    {
        return toAjax(balpProjectService.updateBalpProject(balpProject));
    }

    /**
     * 删除项目管理
     */
    @PreAuthorize("@ss.hasPermi('balp:project:remove')")
    @Log(title = "项目管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(balpProjectService.deleteBalpProjectByIds(ids));
    }
}
