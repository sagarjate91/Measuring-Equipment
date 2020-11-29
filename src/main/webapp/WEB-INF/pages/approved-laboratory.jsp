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
        <h4>Approved Laboratory</h4>
       </div>
       
       <div class="panel-body">
       
         <sf:form action="${contextRoot}/${action}" modelAttribute="command" method="POST" enctype="multipart/form-data" class="form-horizontal" id="userForm">
         
         
         <div class="form-group">
          <label for="laboratoryName" class="col-md-4 control-label">LABORATORY NAME: </label>
          <div class="col-md-8">
           <sf:input path="laboratoryName" id="laboratoryName" class="form-control" placeholder="Enter the laboratory name"/>
           <sf:errors path="laboratoryName" cssClass="help-block" element="em"/>
          </div>
         </div>
         
         <div class="form-group">
          <label for="address" class="col-md-4 control-label">ADDRESS: </label>
          <div class="col-md-8">
           <sf:input path="address" id="address" class="form-control" placeholder="Enter the address"/>
           <sf:errors path="address" cssClass="help-block" element="em"/>
          </div>
         </div>
         
         <div class="form-group">
          <label for="contactNumber" class="col-md-4 control-label">CONTACT NUMBER: </label>
          <div class="col-md-8">
           <sf:input path="contactNumber" id="contactNumber" class="form-control" placeholder="Enter the contact number"/>
           <sf:errors path="contactNumber" cssClass="help-block" element="em"/>
          </div>
         </div>
         
          <div class="form-group">
          <label for="emailId" class="col-md-4 control-label">EMAIL ID: </label>
          <div class="col-md-8">
           <sf:input path="emailId" id="emailId" class="form-control" placeholder="Enter the email Id"/>
           <sf:errors path="emailId" cssClass="help-block" element="em"/>
          </div>
         </div>
         
         <div class="form-group">
          <label for="calibrationScope" class="col-md-4 control-label">CALIBRATION SCOPE: </label>
          <div class="col-md-8">
           <sf:input path="calibrationScope" id="calibrationScope" class="form-control" placeholder="Enter the calibration scope"/>
           <sf:errors path="calibrationScope" cssClass="help-block" element="em"/>
          </div>
         </div>
         
          <div class="form-group">
          <label for="scopeCopy" class="col-md-4 control-label">SCOPE COPY: </label>
          <div class="col-md-8">
           <sf:input path="scopeCopy" id="scopeCopy" class="form-control" placeholder="Enter the scope copy"/>
           <sf:errors path="scopeCopy" cssClass="help-block" element="em"/>
          </div>
         </div>
         
        
          <div class="form-group">
          <label for=certificationDetails class="col-md-4 control-label"><span class="text-uppercase">CALIBRATION DETAILS:</span></label>
          <div class="col-md-8">
           <sf:input path="certificationDetails" id="certificationDetails" class="form-control" placeholder="Enter the calibration details"></sf:input>
           <sf:errors path="certificationDetails" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
         <div class="form-group">
          <label for=certificationNo class="col-md-4 control-label"><span class="text-uppercase">CERTIFICATION NO:</span></label>
          <div class="col-md-8">
           <sf:input path="certificationNo" id="certificationNo" class="form-control" placeholder="Enter the calibration no"></sf:input>
           <sf:errors path="certificationNo" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
         
         <div class="form-group">
          <label for=certificationCopy class="col-md-4 control-label"><span class="text-uppercase">CERTIFICATION COPY:</span></label>
          <div class="col-md-8">
           <sf:input path="certificationCopy" id="certificationCopy" class="form-control" placeholder="Enter the certification copy"></sf:input>
           <sf:errors path="certificationCopy" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
         <div class="form-group">
          <label for=certificattionDate class="col-md-4 control-label"><span class="text-uppercase">CERTIFICATION DATE:</span></label>
          <div class="col-md-8">
           <sf:input path="certificattionDate" id="certificattionDate" class="form-control" placeholder="Enter the certification date"></sf:input>
           <sf:errors path="certificattionDate" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
         <div class="form-group">
          <label for=expiryDate class="col-md-4 control-label"><span class="text-uppercase">EXPIRY DATE:</span></label>
          <div class="col-md-8">
           <sf:input path="expiryDate" id="expiryDate" class="form-control" placeholder="Enter the expiry date"></sf:input>
           <sf:errors path="expiryDate" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
         <div class="form-group">
          <label for=note class="col-md-4 control-label"><span class="text-uppercase">NOTE:</span></label>
          <div class="col-md-8">
           <sf:input path="note" id="note" class="form-control" placeholder="Enter the note"></sf:input>
           <sf:errors path="note" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
         <div class="form-group">
          <label for=reminderOneMonthBeforeExpiryDate class="col-md-4 control-label"><span class="text-uppercase">REMINDER ONE MONTH BEFORE EXPIRY DATE:</span></label>
          <div class="col-md-8">
           <sf:input path="reminderOneMonthBeforeExpiryDate" id="reminderOneMonthBeforeExpiryDate" class="form-control" placeholder="Enter the reminder one month before expiry date"></sf:input>
           <sf:errors path="reminderOneMonthBeforeExpiryDate" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
         
         <div class="form-group">
          <div class="col-md-offset-4 col-md-8">

             <input type="submit" value="Register" class="btn btn-primary"/>

          </div>
         </div>

        </sf:form>	
       
       </div>
      
      
            
      </div> 
             
             </div>
             
           </div>
             
        </div>
        
     </div>
             
             
        
   </div>
