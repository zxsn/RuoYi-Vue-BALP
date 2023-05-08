<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="序号" prop="id">
        <el-input
          v-model="queryParams.id"
          placeholder="请输入序号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
<!--      <el-form-item label="项目编号" prop="projectId">
        <el-input
          v-model="queryParams.projectId"
          placeholder="请输入项目编号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>-->
      <el-form-item label="零组件名称" prop="partsName" label-width="30">
        <el-input
          v-model="queryParams.partsName"
          placeholder="请输入零组件名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="零组件号" prop="partsNo">
        <el-input
          v-model="queryParams.partsNo"
          placeholder="请输入零组件号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="模型号" prop="modelNo">
        <el-input
          v-model="queryParams.modelNo"
          placeholder="请输入模型号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
<!--     <el-form-item label="数量" prop="number">
        <el-input
          v-model="queryParams.number"
          placeholder="请输入数量"
          clearable
          @keyup.enter.native="handleQuery"

      </el-form-item>-->
<!--      <el-form-item label="版次" prop="version">
        <el-input
          v-model="queryParams.version"
          placeholder="请输入版次"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>-->
      <el-form-item label="分类" prop="sort">
        <el-input
          v-model="queryParams.sort"
          placeholder="请输入分类"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['balp:parts:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['balp:parts:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['balp:parts:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['balp:parts:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>
    <el-card class="box-card">
      <div slot="header" class="clearfix">
        <span><h2>项目信息：</h2></span>
      </div>
      <div >
        <div>当前项目信息</div>

      </div>
    </el-card>


    <el-table v-loading="loading" :data="partsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="20" align="center" />
      <el-table-column label="序号" align="center" prop="id" />
<!--      <el-table-column label="项目编号" align="center" prop="projectId" />-->
      <el-table-column label="零组件名称" align="center" prop="partsName" />
      <el-table-column label="零组件号" align="center" prop="partsNo" />
      <el-table-column label="模型号" align="center" prop="modelNo" />
      <el-table-column label="数量" align="center" prop="number" />
      <el-table-column label="版次" align="center" prop="version" />
      <el-table-column label="分类" align="center" prop="sort" />
      <el-table-column label="分配车间" align="center" prop="dealShop" />
<!--      <el-table-column label="备注" align="center" prop="remark" />-->
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['balp:parts:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['balp:parts:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改零组件对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="auto">
        <el-form-item label="序号" prop="id">
          <el-input v-model="form.id" placeholder="请输入序号" />
        </el-form-item>
<!--        <el-form-item label="项目编号" prop="projectId">
          <el-input v-model="form.projectId" placeholder="请输入项目编号" />
        </el-form-item>-->
        <el-form-item label="零组件名称" prop="partsName">
          <el-input v-model="form.partsName" placeholder="请输入零组件名称" />
        </el-form-item>
        <el-form-item label="零组件号" prop="partsNo">
          <el-input v-model="form.partsNo" placeholder="请输入零组件号" />
        </el-form-item>
        <el-form-item label="模型号" prop="modelNo">
          <el-input v-model="form.modelNo" placeholder="请输入模型号" />
        </el-form-item>
        <el-form-item label="数量" prop="number">
          <el-input v-model="form.number" placeholder="请输入数量" />
        </el-form-item>
        <el-form-item label="版次" prop="version">
          <el-input v-model="form.version" placeholder="请输入版次" />
        </el-form-item>
        <el-form-item label="分类" prop="sort">
          <el-input v-model="form.sort" placeholder="请输入分类" />
        </el-form-item>
        <el-form-item label="备注" prop="remark">
          <el-input v-model="form.remark" type="textarea" placeholder="请输入内容" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listParts, getParts, delParts, addParts, updateParts } from "@/api/balp/parts";


export default {
  name: "Parts",
  computed: {
    Project() {
      return Project
    }
  },
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 零组件表格数据
      partsList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        id: null,
        projectId: null,
        partsName: null,
        partsNo: null,
        modelNo: null,
        number: null,
        version: null,
        sort: null,
        dealShop: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        id: [
          { required: true, message: "序号不能为空", trigger: "blur" }
        ],
        partsName: [
          { required: true, message: "零组件名称不能为空", trigger: "blur" }
        ],
        partsNo: [
          { required: true, message: "零组件号不能为空", trigger: "blur" }
        ],
        modelNo: [
          { required: true, message: "模型号不能为空", trigger: "blur" }
        ],
        dealShop: [
          { required: true, message: "分配车间不能为空", trigger: "change" }
        ],
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询零组件列表 */
    getList() {
      this.loading = true;
      listParts(this.queryParams).then(response => {
        this.partsList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        projectId: null,
        partsName: null,
        partsNo: null,
        modelNo: null,
        number: null,
        version: null,
        sort: null,
        dealShop: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        remark: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加零组件";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getParts(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改零组件";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateParts(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addParts(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除零组件编号为"' + ids + '"的数据项？').then(function() {
        return delParts(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('balp/parts/export', {
        ...this.queryParams
      }, `parts_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
