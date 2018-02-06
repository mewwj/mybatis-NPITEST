package Servlet;

import java.io.FileNotFoundException;  
import java.io.IOException;  
import java.io.OutputStream;  
import java.util.ArrayList;  
import java.util.HashMap;  
import java.util.List;  
import java.util.Map;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;  
import org.apache.poi.hssf.usermodel.HSSFCellStyle;  
import org.apache.poi.hssf.usermodel.HSSFFont;  
import org.apache.poi.hssf.usermodel.HSSFRichTextString;  
import org.apache.poi.hssf.usermodel.HSSFRow;  
import org.apache.poi.hssf.usermodel.HSSFSheet;  
import org.apache.poi.hssf.usermodel.HSSFWorkbook;  
import org.apache.poi.hssf.util.HSSFColor;

import pojo.AllItems;
import service.ItemsService;  
  
public class ExcelExportServlet extends HttpServlet {  
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//������ַ��http://localhost:8080/excelExport/servlet/ExcelExportServlet  
    public void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
        response.setContentType("octets/stream");  
		        ItemsService itemsservice=new ItemsService();
		        String[] idslist1=request.getParameterValues("check");
		        List<Integer> idslist =new ArrayList<Integer>();
			        if(idslist1.length>0) {
			        	  for (String a : idslist1) {
							   int b=Integer.valueOf(a);
							   idslist.add(b);
						  }
			        	  System.out.println(idslist.size());
			         }
			        for (String a : idslist1) {
						System.out.println(a);
					}
		        //��ȡ��Ҫ������List
		        List<AllItems> exportlist=itemsservice.selectexportmessages(idslist);
        String excelName = "������Ϣ";  
        //ת���ֹ����  
        response.addHeader("Content-Disposition", "attachment;filename="+new String( excelName.getBytes("gb2312"), "ISO8859-1" )+".xls");  
        String[] headers = new String[]{"���","�ͻ�����","ר������","������Ŀ","�׶�","����","�����","���������","������","ȱ�ݵȼ�","ԭ�����","���ƶԲ�","�����",
        		"������","�ƻ�ʱ��","���ʱ��","Ч��ȷ��","�ɱ�Ӱ��","��ע","PM��ע"};  
        try {  
            OutputStream out = response.getOutputStream();  
            exportExcel(excelName,headers, getList(exportlist), out,"yyyy-MM-dd");  
            out.close();  
            System.out.println("excel�����ɹ���");  
        } catch (FileNotFoundException e) {  
                e.printStackTrace();  
        } catch (IOException e) {  
                e.printStackTrace();  
        }  
    }  
  
    
    
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
         doGet(request, response);  
    }  
    /** 
     * @param exportlist 
     * @Description: �����ݿ��в�ѯ���������ݣ�һ�������ݱ��еļ��� 
     * @Auther: ���Ľ� 
     */  
    public List<Map<String,Object>> getList(List<AllItems> exportlist){  
        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();  
        for(int i = 0; i<exportlist.size();i++){  
            Map<String,Object> map = new HashMap<String, Object>(); 
            map.put("id", i+1);
            map.put("cusname",exportlist.get(i).getCusname());  
            map.put("proname", exportlist.get(i).getProname());  
            map.put("stage", exportlist.get(i).getStage0()+"  "+exportlist.get(i).getStage());  
            map.put("insproject", exportlist.get(i).getInsproject());
            map.put("item", exportlist.get(i).getItem());
            map.put("items", exportlist.get(i).getItems());
            map.put("problems", exportlist.get(i).getProblems());
            map.put("ng", exportlist.get(i).getNg());
            map.put("defectlevels", exportlist.get(i).getDefectlevels());
            map.put("reasons", exportlist.get(i).getReasons());
            map.put("measures", exportlist.get(i).getMeasures());
            map.put("exhibitors", exportlist.get(i).getExhibitor());
            map.put("head", exportlist.get(i).getHead());
            map.put("plantime", exportlist.get(i).getPlantime());
            map.put("finishtime", exportlist.get(i).getFinishtime());
            map.put("confirm", exportlist.get(i).getConfirm());
            map.put("affect", exportlist.get(i).getAffect());
            map.put("comment", exportlist.get(i).getComment());
            map.put("pmcomm", exportlist.get(i).getPmcomm());
            list.add(map);  
        }  
        return list;  
    }  
    /** 
     * @Description: ����excel���������ͻ��ˣ����أ� 
     * @Auther:���Ľ�
     */  
    protected void exportExcel(String title,String[] headers, List mapList,OutputStream out,String pattern){  
        //����һ��������  
        HSSFWorkbook workbook = new HSSFWorkbook();  
        //����һ�����  
        HSSFSheet sheet = workbook.createSheet(title);  
        //���ñ��Ĭ���п��Ϊ15���ַ�  
        sheet.setDefaultColumnWidth(20);  
        //����һ����ʽ���������ñ�����ʽ  
        HSSFCellStyle style = workbook.createCellStyle();  
        //������Щ��ʽ  
        style.setFillForegroundColor(HSSFColor.SKY_BLUE.index);  
        style.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);  
        style.setBorderBottom(HSSFCellStyle.BORDER_THIN);  
        style.setBorderLeft(HSSFCellStyle.BORDER_THIN);  
        style.setBorderRight(HSSFCellStyle.BORDER_THIN);  
        style.setBorderTop(HSSFCellStyle.BORDER_THIN);  
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER);  
        //����һ������  
        HSSFFont font = workbook.createFont();  
        font.setColor(HSSFColor.VIOLET.index);  
        font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);  
        //������Ӧ�õ���ǰ����ʽ  
        style.setFont(font);  
        // ���ɲ�������һ����ʽ,��������������ʽ  
        HSSFCellStyle style2 = workbook.createCellStyle();  
        style2.setFillForegroundColor(HSSFColor.LIGHT_YELLOW.index);  
        style2.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);  
        style2.setBorderBottom(HSSFCellStyle.BORDER_THIN);  
        style2.setBorderLeft(HSSFCellStyle.BORDER_THIN);  
        style2.setBorderRight(HSSFCellStyle.BORDER_THIN);  
        style2.setBorderTop(HSSFCellStyle.BORDER_THIN);  
        style2.setAlignment(HSSFCellStyle.ALIGN_CENTER);  
        style2.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);  
        // ������һ������  
        HSSFFont font2 = workbook.createFont();  
        font2.setBoldweight(HSSFFont.BOLDWEIGHT_NORMAL);  
        // ������Ӧ�õ���ǰ����ʽ  
        style2.setFont(font2);  
        //������������  
        HSSFRow row = sheet.createRow(0);  
        for(int i = 0; i<headers.length;i++){  
            HSSFCell cell = row.createCell(i);  
            cell.setCellStyle(style);  
            HSSFRichTextString text = new HSSFRichTextString(headers[i]);  
            cell.setCellValue(text);  
        }  
        for (int i=0;i<mapList.size();i++) {  
            Map<String,Object> map = (Map<String, Object>) mapList.get(i);  
            row = sheet.createRow(i+1);  
            int j = 0;  
            Object value = null; 
            value=map.get("id");  
            if(value instanceof Integer){  
                row.createCell(j++).setCellValue(String.valueOf(value));  
            }  
            value=map.get("cusname");  
            if(value instanceof String){  
            	  row.createCell(j++).setCellValue(String.valueOf(value)); 
            }else {
            	 row.createCell(j++).setCellValue("");  
            } 
            value=map.get("proname");  
            if(value instanceof String){  
            	  row.createCell(j++).setCellValue(String.valueOf(value)); 
            }else {
            	 row.createCell(j++).setCellValue("");  
            } 
            value=map.get("stage");  
            if(value instanceof String){  
            	  row.createCell(j++).setCellValue(String.valueOf(value)); 
            }else {
            	 row.createCell(j++).setCellValue("");  
            } 
            value=map.get("insproject");  
            if(value instanceof String){  
            	  row.createCell(j++).setCellValue(String.valueOf(value)); 
            }else {
            	 row.createCell(j++).setCellValue("");  
            } 
            value=map.get("item");  
            if(value instanceof String){  
            	  row.createCell(j++).setCellValue(String.valueOf(value)); 
            }else {
            	 row.createCell(j++).setCellValue("");  
            } 
            value=map.get("items");  
            if(value instanceof String){  
            	  row.createCell(j++).setCellValue(String.valueOf(value)); 
            }else {
            	 row.createCell(j++).setCellValue("");  
            } 
            value=map.get("problems");  
            if(value instanceof String){  
            	  row.createCell(j++).setCellValue(String.valueOf(value)); 
            }else {
            	 row.createCell(j++).setCellValue("");  
            } 
            
            value=map.get("ng");  
            if(value instanceof String){  
            	row.createCell(j++).setCellValue(String.valueOf(value)); 
            }else {
            	row.createCell(j++).setCellValue("");  
            } 
            value=map.get("defectlevels");  
            if(value instanceof String){  
            	row.createCell(j++).setCellValue(String.valueOf(value)); 
            }else {
            	row.createCell(j++).setCellValue("");  
            } 
            
            /**
             * row.createCell(j++).setCellValue(map.get("cusname").toString()); 
             
            row.createCell(j++).setCellValue(map.get("proname").toString()); 
            row.createCell(j++).setCellValue(map.get("stage").toString()); 
            row.createCell(j++).setCellValue(map.get("insproject").toString());
            row.createCell(j++).setCellValue(map.get("item").toString()); 
            row.createCell(j++).setCellValue(map.get("items").toString()); 
            row.createCell(j++).setCellValue(map.get("problems").toString()); 
            row.createCell(j++).setCellValue(map.get("ng").toString()); 
            row.createCell(j++).setCellValue(map.get("defectlevels").toString()); 
            */
            value=map.get("reasons");  
            if(value instanceof String){  
            	  row.createCell(j++).setCellValue(String.valueOf(value)); 
            }else {
            	 row.createCell(j++).setCellValue("");  
            } 
            value=map.get("measures");
            if(value instanceof String){  
          	  row.createCell(j++).setCellValue(String.valueOf(value)); 
	          }else {
	          	 row.createCell(j++).setCellValue("");  
	          } 
            value=map.get("exhibitors");
            if(value instanceof String){  
            	row.createCell(j++).setCellValue(String.valueOf(value)); 
            }else {
            	row.createCell(j++).setCellValue("");  
            } 
            value=map.get("head");
            if(value instanceof String){  
            	row.createCell(j++).setCellValue(String.valueOf(value)); 
            }else {
            	row.createCell(j++).setCellValue("");  
            } 
            value=map.get("plantime");
            if(value instanceof String){  
            	row.createCell(j++).setCellValue(String.valueOf(value)); 
            }else {
            	row.createCell(j++).setCellValue("");  
            } 
            value=map.get("finishtime");
            if(value instanceof String){  
            	row.createCell(j++).setCellValue(String.valueOf(value)); 
            }else {
            	row.createCell(j++).setCellValue("");  
            } 
            value=map.get("confirm");
            if(value instanceof String){  
            	row.createCell(j++).setCellValue(String.valueOf(value)); 
            }else {
            	row.createCell(j++).setCellValue("");  
            } 
            value=map.get("affect");
            if(value instanceof String){  
            	row.createCell(j++).setCellValue(String.valueOf(value)); 
            }else {
            	row.createCell(j++).setCellValue("");  
            } 
            value=map.get("comment");
            if(value instanceof String){  
            	row.createCell(j++).setCellValue(String.valueOf(value)); 
            }else {
            	row.createCell(j++).setCellValue("");  
            } 
            value=map.get("pmcomm");
            if(value instanceof String){  
            	row.createCell(j++).setCellValue(String.valueOf(value)); 
            }else {
            	row.createCell(j++).setCellValue("");  
            } 
            /**
             * row.createCell(j++).setCellValue(map.get("measures").toString()); 
            row.createCell(j++).setCellValue(map.get("exhibitors").toString()); 
            row.createCell(j++).setCellValue(map.get("head").toString()); 
            row.createCell(j++).setCellValue(map.get("plantime").toString()); 
            row.createCell(j++).setCellValue(map.get("finishtime").toString()); 
            row.createCell(j++).setCellValue(map.get("confirm").toString());
            row.createCell(j++).setCellValue(map.get("affect").toString());
            row.createCell(j++).setCellValue(map.get("comment").toString());
            row.createCell(j++).setCellValue(map.get("pmcomm").toString());
             */
        }  
        try {  
            workbook.write(out);  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
    }  
      
}  