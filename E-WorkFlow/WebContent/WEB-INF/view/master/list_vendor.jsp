<%@ include file="../header.jsp" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- Content Header (Page header) -->
    <!-- Main content -->
    <section class="content">
		
    <section class="content-header">
      <h1>ข้อมูลผู้ขาย</h1>
      <ol class="breadcrumb">
        <li><a href="home.htm"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">ข้อมูลผู้ขาย</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box box-primary">
            <div class="box-header">
              <div class="row">
				<div class="col-md-5">
					<a href="add_edit_vendor.htm" class="btn btn-info"><i class="fa fa-plus"></i> สร้าง</a>
				</div>
				<!-- /.col -->
				<div class="col-md-3">

				</div>
				<div class="col-md-4">
          <div class="input-group input-group-sm hidden-xs" style="width: 300px;">
            <input type="text" id="txt_search" name="txt_search" class="form-control pull-right" placeholder="Search" style="height: 33px;">
            <div class="input-group-btn">
              <button type="submit" class="btn btn-default" style="height: 33px;"><i class="fa fa-search"></i></button>
            </div>
          </div>
				</div>
			</div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover table-bordered">
                <thead>
                  <tr class="bg-light-blue disabled ">
                    <th style="width: 10%">#</th>
                    <th class="text-center" style="width: 20%">รหัสผู้ขาย</th>
                    <th class="text-center" style="width: 40%">ชื่อผู้ขาย</th>
                    <th class="text-center" style="width: 10%">Map สินค้า</th>
                    <th style="width: 20%"></th>
                </tr>
                </thead>
                <tbody id="body_list">
                	<c:forEach var="obj" items="${command}" varStatus="current"> 
                		<tr>
                			<td>${current.count}.</td>
	                      <td align="center">${obj.code}</td>
                        <td>${obj.pre_name} ${obj.name}</td>
                        <td align="center"><a href="#" data-toggle="modal" data-target="#popup_map_product">items</a></td>
	                      <td align="center">
	                        <span class="badge bg-gay" style="cursor: pointer;">แก้ไข</span>
	                        <span class="badge bg-red" style="cursor: pointer;">ลบ</span>
	                      </td>
                		</tr>
                	</c:forEach>
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>
   </div>

   <!-- POPUP -->
   <div id="popup_map_product" class="modal fade" role="dialog">
       <div class="modal-dialog" style="width: 90%;">
       <!-- Modal content-->
         <div class="modal-content">
           <div class="modal-header">
           <button type="button" class="close" data-dismiss="modal">&times;</button>
           <h4 class="modal-title">Map สินค้า</h4>
           </div>
           <div class="modal-body">
             <table id="popup_map_product_table" class="table table-striped table-bordered table-hover" style="margin-top: 5px;">
               <thead>
                  <tr>
                    <td colspan="7" align="right">
                      <div class="input-group input-group-sm hidden-xs" style="width: 300px;">
                        <input type="text" id="popup_map_product_txt_search" name="popup_map_product_txt_search" class="form-control pull-right" placeholder="Search" style="height: 33px;">
                        <div class="input-group-btn">
                          <button type="submit" class="btn btn-default" style="height: 33px;"><i class="fa fa-search"></i></button>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                   <th width="10%">รหัสสินค้า</th>
                   <th width="60%">รายละเอียดสินค้า</th>
                   <th width="10%">ราคา/หน่วย</th>
                   <th width="10%">หน่วย</th>
                   <th width="10%">หน่วยอื่น</th>
                 </tr>
               </thead>
               <tbody id="list_popup_map_product">
                 <tr></tr>
               </tbody>
             </table>
           </div>
         </div>
       </div>
     </div>

     <!-- POPUP -->
    <div id="popup_map_unit" class="modal fade" role="dialog">
      <div class="modal-dialog" style="width: 50%;">
      <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Map หน่วย</h4>
          </div>
          <div class="modal-body">
            <div class="row">
              <div class="col-xs-12">
                <div class="col-xs-6">
                  <div class="form-group">
                    <label>หน่วยย่อย (ตามข้อมูลสินค้า)</label>
                    <div class="input-group">
                      <input type="text" class="form-control" value="ชิ้น" disabled>
                    </div>
                  </div>
                </div>
                <div class="col-xs-6">
                  <div class="form-group">
                    <label>จำนวน</label>
                    <div class="input-group">
                      <input type="text" class="form-control" value="1" style="text-align: right;" disabled>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-xs-12">
                <div class="col-xs-6">
                  <div class="form-group">
                    <label>หน่วย</label>
                    <div class="input-group">
                      <input type="text" class="form-control">
                      <a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="หน่วยบรรจุ"><i class="fa fa-search"></i></a>
                    </div>
                  </div>
                </div>
                <div class="col-xs-6">
                  <div class="form-group">
                    <label>จำนวน</label>
                    <div class="input-group">
                      <input type="text" class="form-control" style="text-align: right;">
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-xs-12">
                <div class="col-xs-6">
                  <div class="form-group">
                    <label>หน่วย</label>
                    <div class="input-group">
                      <input type="text" class="form-control">
                      <a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="หน่วยบรรจุ"><i class="fa fa-search"></i></a>
                    </div>
                  </div>
                </div>
                <div class="col-xs-6">
                  <div class="form-group">
                    <label>จำนวน</label>
                    <div class="input-group">
                      <input type="text" class="form-control" style="text-align: right;">
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-xs-12">
                <div class="col-xs-6">
                  <div class="form-group">
                    <label>หน่วย</label>
                    <div class="input-group">
                      <input type="text" class="form-control">
                      <a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="หน่วยบรรจุ"><i class="fa fa-search"></i></a>
                    </div>
                  </div>
                </div>
                <div class="col-xs-6">
                  <div class="form-group">
                    <label>จำนวน</label>
                    <div class="input-group">
                      <input type="text" class="form-control" style="text-align: right;">
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-xs-12">
                <div class="col-xs-6">
                  <div class="form-group">
                    <label>หน่วย</label>
                    <div class="input-group">
                      <input type="text" class="form-control">
                      <a href="#" class="input-group-addon" data-toggle="modal" data-target="#popup_referance" data-backdrop="static" data-keyboard="false" data-tnk="หน่วยบรรจุ"><i class="fa fa-search"></i></a>
                    </div>
                  </div>
                </div>
                <div class="col-xs-6">
                  <div class="form-group">
                    <label>จำนวน</label>
                    <div class="input-group">
                      <input type="text" class="form-control" style="text-align: right;">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
   


    </section>
    <script type="text/javascript">
      $(document).ready(function() {
        var list_product = ${list_product};
        $.each(list_product, function(index, detail) {
          add_product(detail.id, detail.code, detail.full_name, detail.full_discription, 0, "", detail.price);
        });
      });

      $("#txt_search").on("keyup", function() {
        var value = $(this).val().toLowerCase();
        $("#body_list tr").filter(function() {
          $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
      });

      $("#popup_map_product_txt_search").on("keyup", function() {
        var value = $(this).val().toLowerCase();
        $("#list_popup_map_product tr").filter(function() {
          $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
      });


      var loop_product = 1;
      function add_product(id, code, name, discription, amount, unit, price) {
        var html = '';
        var row_id_del = "'product_row_" + loop_product + "'";
        var row_id = "product_row_" + loop_product;
        html += '<tr id="'+row_id+'">';

        html += '<input name="product_id_'+loop_product+'" type="hidden"  value="'+id+'">';
        
        html += '<td class="text-center"><input name="product_code_'+loop_product+'" type="hidden" value="'+code+'">'+code+'</td>';
        html += '<td class="text-left"><input name="product_detail_'+loop_product+'" type="hidden" value="'+ name +' ' + discription +'">'+ name +' ' + discription +'</td>';
        html += '<td class="text-right"><input name="product_price_'+loop_product+'" type="text" value="" style="text-align:right;"></td>';
        html += '<td class="text-center">ชิ้น</td>';
        html += '<td class="text-center"><a href="#" data-toggle="modal" data-target="#popup_map_unit">หน่วยอื่นๆ</a></td>';

        html += '</tr>';

        $('#product_last_row').val(loop_product);
        loop_product++;
        
        $('#popup_map_product_table tr:last').after(html);
      }
    </script>
<%@ include file="../footer.jsp" %>