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
        <h4>Acceptant Criteria</h4>
       </div>
       
       <div class="panel-body">
       
         <sf:form action="${contextRoot}/${action}" modelAttribute="command" method="POST" enctype="multipart/form-data" class="form-horizontal" id="userForm">
       
         
          <div class="form-group">
          <label for="equipmentId" class="col-md-4 control-label">EQUIPMENT ID & SR.NO: </label>
          <div class="col-md-8">
           <sf:input  path="equipmentId" id="equipmentId" placeholder="Equipment Id" class="form-control"/>
           <sf:hidden path="id" id="id" class="form-control" readonly="true" />
           <sf:errors path="equipmentId" cssClass="help-block" element="em"/>
          </div>
         </div>
         
         
         <div class="form-group">
          <label for="equipmentDescription" class="col-md-4 control-label">DESCRIPTION: </label>
          <div class="col-md-8">
           <sf:input path="equipmentDescription" id="equipmentDescription" class="form-control" placeholder="Enter the description"/>
           <sf:errors path="equipmentDescription" cssClass="help-block" element="em"/>
          </div>
         </div>
         
         <div class="form-group">
          <label for="equipmentRange" class="col-md-4 control-label">EQUIPMENT RANGE: </label>
          <div class="col-md-8">
           <sf:input path="equipmentRange" id="equipmentRange" class="form-control" placeholder="Enter the Equipment Range"/>
           <sf:errors path="equipmentRange" cssClass="help-block" element="em"/>
          </div>
         </div>
         
         <div class="form-group">
          <label for="applicationRange" class="col-md-4 control-label">APPLICATION RANGE: </label>
          <div class="col-md-8">
           <sf:input path="applicationRange" id="applicationRange" class="form-control" placeholder="Enter the Application Range"/>
           <sf:errors path="applicationRange" cssClass="help-block" element="em"/>
          </div>
         </div>
         
          <div class="form-group">
          <label for="equipmentLeastCount" class="col-md-4 control-label">EQUIPMENT LEAST COUNT: </label>
          <div class="col-md-8">
           <sf:input path="equipmentLeastCount" id="equipmentLeastCount" class="form-control" placeholder="Enter the Least Count"/>
           <sf:errors path="equipmentLeastCount" cssClass="help-block" element="em"/>
          </div>
         </div>
         
         <div class="form-group">
          <label for="equipmentAccurency" class="col-md-4 control-label">EQUIPMENT ACCUERANCY: </label>
          <div class="col-md-8">
           <sf:input path="equipmentAccurency" id="equipmentAccurency" class="form-control" placeholder="Enter the Accurancy"/>
           <sf:errors path="equipmentAccurency" cssClass="help-block" element="em"/>
          </div>
         </div>
         
          <div class="form-group">
          <label for="parameterLowestTolerance" class="col-md-4 control-label">PARAMETER LOWEST TOLERANCE: </label>
          <div class="col-md-8">
           <sf:input path="parameterLowestTolerance" id="parameterLowestTolerance" class="form-control" placeholder="Enter the parameter lowest tolerance"/>
           <sf:errors path="parameterLowestTolerance" cssClass="help-block" element="em"/>
          </div>
         </div>
         
         <div class="form-group">
          <label for="equipmentUnit" class="col-md-4 control-label">EQUIPMENT UNIT: </label>
          <div class="col-md-8">
       			<sf:select path="equipmentUnit" class="form-control" >
    				<sf:options items="${equipmentUnits}" />
				</sf:select>
		 </div>
         </div>
        
          <div class="form-group">
          <label for=acceptantCriteria class="col-md-4 control-label"><span class="text-uppercase">Acceptance Criteria:</span></label>
          <div class="col-md-8">
           <sf:input path="acceptantCriteria" id="acceptantCriteria" class="form-control" placeholder="Enter the acceptance criteria"></sf:input>
           <sf:errors path="acceptantCriteria" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
         <div class="form-group">
          <label for=referenceStandard class="col-md-4 control-label"><span class="text-uppercase">REFERANCE STANDARD:</span></label>
          <div class="col-md-8">
           <sf:input path="referenceStandard" id="referenceStandard" class="form-control" placeholder="Enter the reference standard"></sf:input>
           <sf:errors path="referenceStandard" cssClass="help-block" element="em"/> 
          </div>
         </div>
         
         
         <div class="form-group">
          <label for=clauseNo class="col-md-4 control-label"><span class="text-uppercase">CLAUSE NO:</span></label>
          <div class="col-md-8">
           <sf:input path="clauseNo" id="clauseNo" class="form-control" placeholder="Enter the clause no"></sf:input>
           <sf:errors path="clauseNo" cssClass="help-block" element="em"/> 
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
