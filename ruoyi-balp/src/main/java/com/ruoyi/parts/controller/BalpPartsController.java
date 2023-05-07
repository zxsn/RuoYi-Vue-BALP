package com.ruoyi.parts.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.parts.domain.BalpParts;
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
import com.ruoyi.parts.service.IBalpPartsService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 零组件Controller
 * 
 * @author hdc
 * @date 2023-05-07
 */
@RestController
@RequestMapping("/balp/parts")
public class BalpPartsController extends BaseController
{
    @Autowired
    private IBalpPartsService balpPartsService;

    /**
     * 查询零组件列表
     */
    @PreAuthorize("@ss.hasPermi('balp:parts:list')")
    @GetMapping("/list")
    public TableDataInfo list(BalpParts balpParts)
    {
        startPage();
        List<BalpParts> list = balpPartsService.selectBalpPartsList(balpParts);
        return getDataTable(list);
    }

    /**
     * 导出零组件列表
     */
    @PreAuthorize("@ss.hasPermi('balp:parts:export')")
    @Log(title = "零组件", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, BalpParts balpParts)
    {
        List<BalpParts> list = balpPartsService.selectBalpPartsList(balpParts);
        ExcelUtil<BalpParts> util = new ExcelUtil<BalpParts>(BalpParts.class);
        util.exportExcel(response, list, "零组件数据");
    }

    /**
     * 获取零组件详细信息
     */
    @PreAuthorize("@ss.hasPermi('balp:parts:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return success(balpPartsService.selectBalpPartsById(id));
    }

    /**
     * 新增零组件
     */
    @PreAuthorize("@ss.hasPermi('balp:parts:add')")
    @Log(title = "零组件", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BalpParts balpParts)
    {
        return toAjax(balpPartsService.insertBalpParts(balpParts));
    }

    /**
     * 修改零组件
     */
    @PreAuthorize("@ss.hasPermi('balp:parts:edit')")
    @Log(title = "零组件", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BalpParts balpParts)
    {
        return toAjax(balpPartsService.updateBalpParts(balpParts));
    }

    /**
     * 删除零组件
     */
    @PreAuthorize("@ss.hasPermi('balp:parts:remove')")
    @Log(title = "零组件", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(balpPartsService.deleteBalpPartsByIds(ids));
    }
}
