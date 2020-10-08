 <%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>			
    
   <div class="container">
   
   <div class="col-md-3">
        
          <%@include file="./shared/sidebar.jsp"%>
           
        </div>
         
         <div class="col-md-9">
            
            
            <div class="row">
            
                  <div  class="row">
                  
                     <div class="col-xs-12">
             
              			<div class="panel panel-primary">
       
       <div class="panel-heading">
        <h4>EQUIPMENT ISSUE TO / FROM SHOPFLOOR WITH REMARK</h4>
       </div>
       
       <div class="panel-body">
       
         <sf:form action="${contextRoot}/${action}" modelAttribute="command" method="POST" enctype="multipart/form-data" class="form-horizontal" id="userForm">
         
          <div class="form-group">
          <label for="equipmentId" class="col-md-4 control-label">EQUIPMENT ID _SR.NO: </label>
          <div class="col-md-8">
           <sf:input  path="equipmentId" id="equipmentId" class="form-control" placeholder="Enter the equipment Id" />
             <sf:input  type="hidden" path="id" id="id" class="form-control" readonly="true" />
           <sf:errors path="equipmentId" cssClass="help-block" element="em"/>
          </div>
         </div>
         
         <div class="form-group">
          <label for="equipmentDescription" class="col-md-4 control-label">EQUIPMENT DESCRIPTION: </label>
          <div class="col-md-8">
           <sf:input path="equipmentDescription" id="equipmentDescription" class="form-control" placeholder="Enter the equipment description"/>
           <sf:errors path="equipmentDescription" cssClass="help-block" element="em"/>
          </div>
         </div>
         
         <div class="form-group">
          <label for=fromLocation class="col-md-4 control-label"><span class="text-uppercase">From Location:</span> </label>
          <div class="col-md-8">
           <sf:input path="fromLocation" id="fromLocation" class="form-control" placeholder="Enter the equipment from Location"></sf:input>
           <sf:errors path="fromLocation" cssClass="help-block" element="em"/> 
          </div>
         </div>
        
        <div class="form-group">
          <label for=toIssueLocation class="col-md-4 control-label"><span class="text-uppercase">To Issue Location: </span></label>
          <div class="col-md-8">
           <sf:input path="toIssueLocation" id="toIssueLocation" class="form-control" placeholder="Enter the equipment to Location"></sf:input>
           <sf:errors path="toIssueLocation" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
         <div class="form-group">
          <label for="issueDate" class="col-md-4 control-label">ISSUE/RECEIVED DATE: </label>
          <div class="col-md-8">
           <sf:input path="issueDate" id="issueDate" class="form-control" placeholder="xxxxxxxx"/>
           <sf:errors path="issueDate" cssClass="help-block" element="em"/>
          </div>
         </div>
       
         <div class="form-group">
          <label for="equipmentCreatedBy" class="col-md-4 control-label">CREATED BY: </label>
          <div class="col-md-8">
           <sf:input path="equipmentCreatedBy" id="equipmentCreatedBy" class="form-control" placeholder="xxxxxxxxx"/>
           <sf:errors path="equipmentCreatedBy" cssClass="help-block" element="em"/>
          </div>
         </div>
         
         <div class="form-group">
          <label for="equipmentCreatedDate" class="col-md-4 control-label">CREATED DATE: </label>
          <div class="col-md-8">
           <sf:input path="equipmentCreatedDate" id="equipmentCreatedDate" class="form-control" placeholder="xxxxxxxx"/>
           <sf:errors path="equipmentCreatedDate" cssClass="help-block" element="em"/>
          </div>
         </div>
          
         <div class="form-group">
          <label for="equipmentCreatedTime" class="col-md-4 control-label">CREATED TIME: </label>
          <div class="col-md-8">
           <sf:input path="equipmentCreatedTime" id="equipmentCreatedTime" class="form-control" placeholder="Enter the equipment created time"></sf:input>
           <sf:errors path="equipmentCreatedTime" cssClass="help-block" element="em"/> 
          </div>
         </div>
          
          <div class="form-group">
          <label for=equipmentDecisionOurRemark class="col-md-4 control-label"><span class="text-uppercase">Equipment Decision/Remark:</span> </label>
          <div class="col-md-8">
           <sf:input path="equipmentDecisionOurRemark" id="equipmentDecisionOurRemark" class="form-control" placeholder="Enter the equipment decisionOur Remark"></sf:input>
           <sf:errors path="equipmentDecisionOurRemark" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
         <div class="form-group">
          <label for=equipmentCalibrationExpiryDate class="col-md-4 control-label"><span class="text-uppercase">Calibration Expiry Date: </span></label>
          <div class="col-md-8">
           <sf:input path="equipmentCalibrationExpiryDate" id="equipmentCalibrationExpiryDate" class="form-control" placeholder="Enter the equipment calibration expiry date"></sf:input>
           <sf:errors path="equipmentCalibrationExpiryDate" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
          <div class="form-group">
           <label for=notesValues class="col-md-4 control-label"><span class="text-uppercase">Note: </span></label>
           <div class="col-md-8">
           <sf:textarea path="notesValues" id="notesValues" class="form-control" placeholder="Enter the note"></sf:textarea>
           <sf:errors path="notesValues" cssClass="help-block" element="em"/>
           </div>
          </div>
       
         <div class="form-group">
          <div class="col-md-offset-4 col-md-8">

            <input type="submit" value="Update" class="btn btn-primary"/>

          </div>
         </div>

        </sf:form>	
       
       </div>
      
      
       <div class="panel-footer">
       
        </div>
      
      </div> 
             
             </div>
             
           </div>
             
        </div>
        
     </div>
             
             
        
   </div>
