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
        <h4>New Equipment Creation Panel</h4>
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
          <label for="equipmentLeastCount" class="col-md-4 control-label">EQUIPMENT LEAST COUNT: </label>
          <div class="col-md-8">
           <sf:input path="equipmentLeastCount" id="equipmentLeastCount" class="form-control" placeholder="Enter the equipment Least Count"/>
           <sf:errors path="equipmentLeastCount" cssClass="help-block" element="em"/>
          </div>
         </div>
         
         <div class="form-group">
          <label for="equipmentUnit" class="col-md-4 control-label">EQUIPMENT UNIT: </label>
          <div class="col-md-8">
           <sf:input path="equipmentUnit" id="equipmentUnit" class="form-control" placeholder="Enter the equipment unit"/>
           <sf:errors path="equipmentUnit" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
         <div class="form-group">
          <label for="equipmentManfacturerName" class="col-md-4 control-label">MANUFACTURER NAME: </label>
          <div class="col-md-8">
           <sf:input path="equipmentManfacturerName" id="equipmentManfacturerName" class="form-control" placeholder="Enter the equipment manfacturer name"/>
           <sf:errors path="equipmentManfacturerName" cssClass="help-block" element="em"/> 
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
          <label for="equipmentReasonForUpdate" class="col-md-4 control-label"> REASON FOR UPDATE: </label>
          <div class="col-md-8">
           <sf:textarea path="equipmentReasonForUpdate" id="equipmentReasonForUpdate" class="form-control" placeholder="Enter the equipment reason for update"></sf:textarea>
           <sf:errors path="equipmentReasonForUpdate" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
         <c:if test="${userClickUpdate==true}">

          <div class="form-group">
          <label for="equipmentCalibrationFrequency" class="col-md-4 control-label" >CALIBRATION FREQUENCY: </label>
          <div class="col-md-8">
           <sf:input path="equipmentCalibrationFrequency" id="equipmentCalibrationFrequency" class="form-control" placeholder="Enter the equipment calibration frequency"></sf:input>
           <sf:errors path="equipmentCalibrationFrequency" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
          <div class="form-group">
          <label for="equipmentType" class="col-md-4 control-label">EQUIPMENT TYPE: </label>
          <div class="col-md-8">
           <sf:input path="equipmentType" id="equipmentType" class="form-control" placeholder="Enter the equipment type"></sf:input>
           <sf:errors path="equipmentType" cssClass="help-block" element="em"/> 
          </div>
         </div>

          <div class="form-group">
          <label for="equipmentCalibrationFrequency" class="col-md-4 control-label"><span class="text-uppercase"/>Equipment Calibration Frequency: </label>
          <div class="col-md-8">
           <sf:input path="equipmentCalibrationFrequency" id="equipmentCalibrationFrequency" class="form-control" placeholder="Enter the equipment calibration frequency"></sf:input>
           <sf:errors path="equipmentCalibrationFrequency" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
          <div class="form-group">
          <label for=equipmentCalibrationCertificateNo class="col-md-4 control-label"><span class="text-uppercase"/>Equipment Calibration Certificate No: </label>
          <div class="col-md-8">
           <sf:input path="equipmentCalibrationCertificateNo" id="equipmentCalibrationCertificateNo" class="form-control" placeholder="Enter the Equipment Calibration Certificate No"></sf:input>
           <sf:errors path="equipmentCalibrationCertificateNo" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
         <div class="form-group">
          <label for=equipmentCalibrationCertificateName class="col-md-4 control-label"><span class="text-uppercase"/>Select Calibration Certificate: </label>
          <div class="col-md-8">
           <sf:input type="file" path="equipmentCalibrationCertificateName" id="equipmentCalibrationCertificateName" class="form-control" placeholder="Enter the equipment calibration certificate name"></sf:input>
           <sf:errors path="equipmentCalibrationCertificateName" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
          <div class="form-group">
          <label for=equipmentCalibrationResults class="col-md-4 control-label"><span class="text-uppercase"/>Equipment Calibration Results: </label>
          <div class="col-md-8">
           <sf:input path="equipmentCalibrationResults" id="equipmentCalibrationResults" class="form-control" placeholder="Enter the equipment calibration certificate name"></sf:input>
           <sf:errors path="equipmentCalibrationResults" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
         <div class="form-group">
          <label for=equipmentCalibrationUnit class="col-md-4 control-label"><span class="text-uppercase"/>Equipment Calibration Unit: </label>
          <div class="col-md-8">
           <sf:input path="equipmentCalibrationUnit" id="equipmentCalibrationUnit" class="form-control" placeholder="Enter the equipment calibration unit"></sf:input>
           <sf:errors path="equipmentCalibrationUnit" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
          <div class="form-group">
          <label for=equipmentAcceptanceCriteria class="col-md-4 control-label"><span class="text-uppercase"/>Equipment Acceptance Criteria: </label>
          <div class="col-md-8">
           <sf:input path="equipmentAcceptanceCriteria" id="equipmentAcceptanceCriteria" class="form-control" placeholder="Enter the equipment acceptance criteria"></sf:input>
           <sf:errors path="equipmentAcceptanceCriteria" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
          <div class="form-group">
          <label for=equipmentAcceptanceCriteriaUnit class="col-md-4 control-label"><span class="text-uppercase"/>Equipment Acceptance Criteria Unit: </label>
          <div class="col-md-8">
           <sf:input path="equipmentAcceptanceCriteriaUnit" id="equipmentAcceptanceCriteriaUnit" class="form-control" placeholder="Enter the equipment acceptance criteria unit"></sf:input>
           <sf:errors path="equipmentAcceptanceCriteriaUnit" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
          <div class="form-group">
          <label for=equipmentDecisionOurRemark class="col-md-4 control-label"><span class="text-uppercase"/>Equipment DecisionOur Remark: </label>
          <div class="col-md-8">
           <sf:input path="equipmentDecisionOurRemark" id="equipmentDecisionOurRemark" class="form-control" placeholder="Enter the equipment decisionOur Remark"></sf:input>
           <sf:errors path="equipmentDecisionOurRemark" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
         <div class="form-group">
          <label for=equipmentLocation class="col-md-4 control-label"><span class="text-uppercase"/>Equipment Location: </label>
          <div class="col-md-8">
           <sf:input path="equipmentLocation" id="equipmentLocation" class="form-control" placeholder="Enter the equipment decisionOur Remark"></sf:input>
           <sf:errors path="equipmentLocation" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
         <div class="form-group">
          <label for=equipmentCalibrationExpiryDate class="col-md-4 control-label"><span class="text-uppercase"/>Equipment Calibration Expiry Date: </label>
          <div class="col-md-8">
           <sf:input path="equipmentCalibrationExpiryDate" id="equipmentCalibrationExpiryDate" class="form-control" placeholder="Enter the equipment calibration expiry date"></sf:input>
           <sf:errors path="equipmentCalibrationExpiryDate" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
         <div class="form-group">
          <label for=equipmentType class="col-md-4 control-label"><span class="text-uppercase"/>Equipment Type: </label>
          <div class="col-md-8">
           <sf:input path="equipmentType" id="equipmentType" class="form-control" placeholder="Enter the equipment type"></sf:input>
           <sf:errors path="equipmentType" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
         </c:if>


         <div class="form-group">
          <div class="col-md-offset-4 col-md-8">

           <c:if test="${userClickUpdate==true}">

            <input type="submit" value="Update" class="btn btn-primary"/>

           </c:if>

           <c:if test="${userClickUpdate==null}">

             <input type="submit" value="Register" class="btn btn-primary"/>

           </c:if>

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
