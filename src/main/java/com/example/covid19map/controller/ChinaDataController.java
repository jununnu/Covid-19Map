package com.example.covid19map.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.covid19map.entity.NocvData;
import com.example.covid19map.service.IndexService;
import com.example.covid19map.vo.DataView;
import com.example.covid19map.vo.NocvDataVo;
import org.apache.ibatis.annotations.Delete;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Jun
 * @date 2022/10/17 15:14
 * @description ChinaDataController
 */
@RestController
public class ChinaDataController {
    @Autowired
    private IndexService indexService;

    /*
    模糊查询，带有分页
     */
    @GetMapping("/listDataByPage")
    public DataView listDataByPage(NocvDataVo nocvDataVo){
        //创建分页的对象，当前页及限制大小
        IPage<NocvData> page = new Page<>(nocvDataVo.getPage(), nocvDataVo.getLimit());
        //创建模糊查询条件
        QueryWrapper<NocvData> queryWrapper = new QueryWrapper<>();
        queryWrapper.like(!(nocvDataVo.getName() == null), "name", nocvDataVo.getName());
        //value倒序排列
        queryWrapper.orderByDesc("value");
        //查询数据库
        indexService.page(page, queryWrapper);
        //返回数据封装
        DataView dataView = new DataView(page.getTotal(), page.getRecords());
        System.out.println(nocvDataVo.getPage()+"\t"+nocvDataVo.getLimit());
        System.out.println(page.getTotal()+"\t"+page.getRecords());
        return dataView;
    }

    @DeleteMapping("/china/deleteById/{id}")
    public DataView deleteById(@PathVariable("id") Integer id){
        indexService.removeById(id);
        DataView dataView = new DataView();
        dataView.setCode(200);
        dataView.setMsg("Delete success!");
        return dataView;
    }

    @PostMapping("/china/addOrUpdateChina")
    public DataView addOrUpdateChina(NocvData nocvData){
        boolean save = indexService.saveOrUpdate(nocvData);
        DataView dataView = new DataView();
        if (save) {
            dataView.setCode(200);
            dataView.setMsg("新增中国地图数据成功");
            return dataView;
        }
        dataView.setCode(100);
        dataView.setMsg("新增中国地图数据失败");
        return dataView;
    }

    /*Excel的拖拽或点击上传
    * 1.前台页面发送请求，上传MutilpartFile
    * 2.Controller，上传MutilpartFile参数
    * 3，POI解析文件，每行数据完成解析
    * 4.每条数据插入数据库
    */
    @RequestMapping("/excelImportChina")
    public DataView excelImportChina(@RequestParam("file")MultipartFile file) throws Exception {
        DataView dataView = new DataView();
        // 文件不能为空
        if (file.isEmpty()) {
            dataView.setMsg("文件为空，不能上传！");
        }

        //  利用POI回去EXCEL解析数据
        XSSFWorkbook wb = new XSSFWorkbook(file.getInputStream());
        XSSFSheet sheetAt = wb.getSheetAt(0);

        //  定义一个程序集合，接收文件中的数据
        List<NocvData> list = new ArrayList<>();
        XSSFRow row = null;

        //  解析数据，装到集合里
        for (int i = 0; i < sheetAt.getPhysicalNumberOfRows(); i++) {
            // 定义实体
            NocvData nocvData = new NocvData();
            // 每行的数据都放进实体里
            row = sheetAt.getRow(i);
            // 解析数据
            nocvData.setName(row.getCell(0).getStringCellValue());
            nocvData.setValue((int)row.getCell(1).getNumericCellValue());
            // 添加list集合
            list.add(nocvData);
//            indexService.save(nocvData);
        }
        //  插入数据库
        indexService.saveBatch(list);
        dataView.setCode(200);
        dataView.setMsg("Excel数据插入成功！");
        return dataView;
    }

    /*
    * 导出Excel数据
    * 1.查询数据库
    * 2.建立excel对象，封装数据
    * 3.建立输出流，输出文件
    */
    @RequestMapping("/excelOutPortChina")
    public void excelOutPortChina(HttpServletResponse response) throws Exception {
        // 1.查询数据库（查询所有/符合条所有件）
        List<NocvData> list = indexService.list();
        //  2.建立excel对象，封装数据
        response.setCharacterEncoding("UTF-8");
        XSSFWorkbook wb = new XSSFWorkbook();
        //  2.2创建工作簿
        XSSFSheet sheet = wb.createSheet("当前疫情数据");
        //  2.3创建表头
        XSSFRow xssfRow = sheet.createRow(0);
        xssfRow.createCell(0).setCellValue("城市名称");
        xssfRow.createCell(1).setCellValue("确诊数量");
        //  3.遍历数据，封装excel对象
        for (NocvData data : list) {
            XSSFRow dataRow = sheet.createRow(sheet.getLastRowNum()+1);
            dataRow.createCell(0).setCellValue(data.getName());
            dataRow.createCell(1).setCellValue(data.getValue());
        }
        //  4.建立输出流，输出浏览器文件
        OutputStream os = null;
        //  设置excel名字
        response.setContentType("application/octet-stream;charset=utf-8");
        response.setHeader("Content-Disposition", "attachment;filename="+new String("当前疫情数据表".getBytes(), "iso-8859-1")+".xlsx");
        //  输出文件
        os = response.getOutputStream();
        wb.write(os);
        os.flush();
        //  5.关闭文件流
        os.close();
    }

}
