package com.ruoyi.balp.external.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
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
import com.ruoyi.balp.external.domain.BalpExternalParts;
import com.ruoyi.balp.external.service.IBalpExternalPartsService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 外购件Controller
 *
 * @author ruoyi
 * @date 2023-05-21
 */
@RestController
@RequestMapping("/balp/external")
public class BalpExternalPartsController extends BaseController
{
    @Autowired
    private IBalpExternalPartsService balpExternalPartsService;

    /**
     * 查询外购件列表
     */
    @PreAuthorize("@ss.hasPermi('balp:external:list')")
    @GetMapping("/list")
    public TableDataInfo list(BalpExternalParts balpExternalParts)
    {
        startPage();
        List<BalpExternalParts> list = balpExternalPartsService.selectBalpExternalPartsList(balpExternalParts);
        return getDataTable(list);
    }

    /**
     * 导出外购件列表
     */
    @PreAuthorize("@ss.hasPermi('balp:external:export')")
    @Log(title = "外购件", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, BalpExternalParts balpExternalParts)
    {
        List<BalpExternalParts> list = balpExternalPartsService.selectBalpExternalPartsList(balpExternalParts);
        ExcelUtil<BalpExternalParts> util = new ExcelUtil<BalpExternalParts>(BalpExternalParts.class);
        util.exportExcel(response, list, "外购件数据");
    }

    /**
     * 获取外购件详细信息
     */
    @PreAuthorize("@ss.hasPermi('balp:external:query')")
    @GetMapping(value = "/{seqno}")
    public AjaxResult getInfo(@PathVariable("seqno") String seqno)
    {
        return success(balpExternalPartsService.selectBalpExternalPartsBySeqno(seqno));
    }

    /**
     * 新增外购件
     */
    @PreAuthorize("@ss.hasPermi('balp:external:add')")
    @Log(title = "外购件", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BalpExternalParts balpExternalParts)
    {
        return toAjax(balpExternalPartsService.insertBalpExternalParts(balpExternalParts));
    }

    /**
     * 修改外购件
     */
    @PreAuthorize("@ss.hasPermi('balp:external:edit')")
    @Log(title = "外购件", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BalpExternalParts balpExternalParts)
    {
        return toAjax(balpExternalPartsService.updateBalpExternalParts(balpExternalParts));
    }

    /**
     * 删除外购件
     */
    @PreAuthorize("@ss.hasPermi('balp:external:remove')")
    @Log(title = "外购件", businessType = BusinessType.DELETE)
    @DeleteMapping("/{seqnos}")
    public AjaxResult remove(@PathVariable String[] seqnos)
    {
        return toAjax(balpExternalPartsService.deleteBalpExternalPartsBySeqnos(seqnos));
    }
}
