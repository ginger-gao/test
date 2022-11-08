using {PickListV2 as PickListV2Data} from '../db/data-model';
using {PickListValueV2 as PickListValueV2Data} from '../db/data-model';
using {cust_EmploymentType as cust_EmploymentTypeData} from '../db/data-model';
using {cust_JobGroup as cust_JobGroupData} from '../db/data-model';
using {FOJobFunction as FOJobFunctionData} from '../db/data-model';
using {FOJobCode as FOJobCodeData} from '../db/data-model';
using {cust_JobTitle as cust_JobTitleData} from '../db/data-model';
using {cust_JobGrade as cust_JobGradeData} from '../db/data-model';
using {cust_SupervisorLevel as cust_SupervisorLevelData} from '../db/data-model';
using {cust_WorkSite as cust_WorkSiteData} from '../db/data-model';
using {cust_employeegroup as cust_employeegroupData} from '../db/data-model';
using {FOEventReason as FOEventReasonData} from '../db/data-model';
using {cust_Term_Event_Des as cust_Term_Event_DesData} from '../db/data-model';
using {cust_EmployeeClass as cust_EmployeeClassData} from '../db/data-model';
using {FOLocationGroup as FOLocationGroupData} from '../db/data-model';
using {FOLocation as FOLocationData} from '../db/data-model';
using {CustomPayType as CustomPayTypeData} from '../db/data-model';
using {cust_disciplinetype as cust_disciplinetypeData} from '../db/data-model';
using {FOPayGroup as FOPayGroupData} from '../db/data-model';
using {PayScaleType as PayScaleTypeData} from '../db/data-model';
using {PayScaleArea as PayScaleAreaData} from '../db/data-model';
using {PayScaleGroup as PayScaleGroupData} from '../db/data-model';
using {FODepartment as FODeparmentData} from '../db/data-model';
using {FODepartmentKey as FODepartmentKeyData} from '../db/data-model';
using {Position as PositionData} from '../db/data-model';
using {PositionKey as PositionKeyData} from '../db/data-model';
using {EmpJob as EmpJobData} from '../db/data-model';
using {EmpJobKey as EmpJobKeyData} from '../db/data-model';
using {cust_Exceptions as cust_ExceptionsData} from '../db/data-model';
using {Photo as PhotoData} from '../db/data-model';
using {PhotoKey as PhotoKeyData} from '../db/data-model';
using {TodoEntryV2 as TodoEntryV2Data} from '../db/data-model';
using {TodoEntryV2Key as TodoEntryV2KeyData} from '../db/data-model';
using {Industrial_Accident as Industrial_AccidentData} from '../db/data-model';
using {JobApplication as JobApplicationData} from '../db/data-model';
using {EmpPayCompRecurring as EmpPayCompRecurringData} from '../db/data-model';
using {PayScalePayComponent as PayScalePayComponentData} from '../db/data-model';
using {EmpPayExceptions as EmpPayExceptionsData} from '../db/data-model';

@path : '/odata/v4'
@requires : 'authenticated-user'
@cds.query.limit.max: 10000000
service OdataService {
    entity PickListV2 as projection on PickListV2Data;
    entity PickListValueV2 as projection on PickListValueV2Data; 
    entity cust_EmploymentType as projection on cust_EmploymentTypeData;
    entity cust_JobGroup as projection on cust_JobGroupData;
    entity FOJobCode as projection on FOJobCodeData;    
    entity FOJobFunction as projection on FOJobFunctionData;
    entity cust_JobTitle as projection on cust_JobTitleData;
    entity cust_JobGrade as projection on cust_JobGradeData;
    entity cust_SupervisorLevel as projection on cust_SupervisorLevelData;
    entity cust_WorkSite as projection on cust_WorkSiteData;
    entity cust_employeegroup as projection on cust_employeegroupData;
    entity FOEventReason as projection on FOEventReasonData;
    entity cust_Term_Event_Des as projection on cust_Term_Event_DesData;
    entity cust_EmployeeClass as projection on cust_EmployeeClassData;
    entity FOLocationGroup as projection on FOLocationGroupData;
    entity FOLocation as projection on FOLocationData;
    entity cust_disciplinetype as projection on cust_disciplinetypeData;
    entity CustomPayType as projection on CustomPayTypeData;
    entity FOPayGroup as projection on FOPayGroupData;
    entity PayScaleType as projection on PayScaleTypeData;
    entity PayScaleArea as projection on PayScaleAreaData;
    entity PayScaleGroup as projection on PayScaleGroupData;
    entity FODepartment as projection on FODeparmentData;
    entity FODepartmentKey as projection on FODepartmentKeyData;
    entity Position as projection on PositionData;
    entity PositionKey as projection on PositionKeyData;
    entity EmpJob as projection on EmpJobData;
    entity EmpJobKey as projection on EmpJobKeyData;    
    entity cust_Exceptions as projection on cust_ExceptionsData;
    entity Photo as projection on PhotoData;
    entity PhotoKey as projection on PhotoKeyData;
    entity TodoEntryV2 as projection on TodoEntryV2Data;
    entity TodoEntryV2Key as projection on TodoEntryV2KeyData;
    entity Industrial_Accident as projection on Industrial_AccidentData;
    entity JobApplication as projection on JobApplicationData;
    entity EmpPayCompRecurring as projection on EmpPayCompRecurringData;
    entity PayScalePayComponent as projection on PayScalePayComponentData;
    entity EmpPayExceptions as projection on EmpPayExceptionsData;

    type PickListV2Headers : {
        mdfSystemRecordId : String(128);
        picklistId : String(128);
        cudKey : String(1);
        Record: LargeString;
    }
    
    type PickListV2HeadersOutput: {
        mdfSystemRecordId : String(128);
        picklistId : String(128);
        cudKey : String(1);
    }
 
    type PickListValueV2Headers : {
        mdfSystemRecordId : String(128);
        picklistId : String(128);
        cudKey : String(1);
        Record: LargeString;
    }
    
    type PickListValueV2HeadersOutput: {
        mdfSystemRecordId : String(128);
        picklistId : String(128);
        cudKey : String(1);
    }   

    type cust_EmploymentTypeHeaders: {
        mdfSystemRecordId : String(128);
        externalCode : String (128);
        cudKey : String(1);
        Record : LargeString;
    }

    type cust_EmploymentTypeHeadersOutput: {
        mdfSystemRecordId : String(128);
        externalCode : String (128);
        cudKey : String(1);
    }

    type cust_JobGroupHeaders: {
        mdfSystemRecordId : String(128);
        externalCode : String (128);
        cudKey : String(1);
        Record : LargeString;
    }

    type cust_JobGroupHeadersOutput: {
        mdfSystemRecordId : String(128);
        externalCode : String (128);
        cudKey : String(1);
    }

    type FOJobFunctionHeaders: {
        cust_integrationKey : String(128);
        externalCode : String(20);
        cudKey : String(1);
        Record : LargeString;
    }

    type FOJobFunctionHeadersOutput: {
        cust_integrationKey : String(128);
        externalCode : String(20);
        cudKey : String(1);
    }

    type FOJobCodeHeaders: {
        cust_integrationKey : String(128);
        startDate : String(25);
        externalCode : String(20);
        cudKey : String(1);
        Record : LargeString;
    }
    
    type FOJobCodeHeadersOutput: {
        cust_integrationKey : String(128);
        startDate : String(25);
        externalCode : String(20);
        cudKey : String(1);
    }

    type cust_JobTitleHeaders: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        externalCode : String (128);
        cudKey : String(1);
        Record : LargeString;
    }

    type cust_JobTitleHeadersOutput: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        externalCode : String (128);
        cudKey : String(1);
    }

    type cust_JobGradeHeaders: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        externalCode : String (128);
        cudKey : String(1);
        Record : LargeString;
    }
    
    type cust_JobGradeHeadersOutput: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        externalCode : String (128);
        cudKey : String(1);
    }

    type cust_SupervisorLevelHeaders: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        externalCode : String (128);
        cudKey : String(1);
        Record : LargeString;
    }

    type cust_SupervisorLevelHeadersOutput: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        externalCode : String (128);
        cudKey : String(1);
    }

    type cust_WorkSiteHeaders: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        WorkSiteID : String (128);
        cudKey : String(1);
        Record : LargeString;
    }

    type cust_WorkSiteHeadersOutput: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        WorkSiteID : String (128);
        cudKey : String(1);
    }

    type cust_employeegroupHeaders: {
        mdfSystemRecordId : String(128);
        externalCode : String (128);
        cudKey : String(1);
        Record : LargeString;
    }
    
    type cust_employeegroupHeadersOutput: {
        mdfSystemRecordId : String(128);
        externalCode : String (128);
        cudKey : String(1);
    }

    type FOEventReasonHeaders: {
        externalCode : String (128);
        startDate : String(25);
        LegalEntityID : String(128);
        cudKey : String(1);
        Record : LargeString;
    }
    
    type FOEventReasonHeadersOutput: {
        externalCode : String (128);
        startDate : String(25);
        LegalEntityID : String(128);
        cudKey : String(1);
        uniquekey: Integer64;
    }
 
    type cust_Term_Event_DesHeaders: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        externalCode : String (128);
        cudKey : String(1);
        Record : LargeString;
    }
    
    type cust_Term_Event_DesHeadersOutput: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        externalCode : String (128);
        cudKey : String(1);
    }     
    
    type cust_EmployeeClassHeaders: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        externalCode : String (128);
        cudKey : String(1);
        Record : LargeString;
    }
    
    type cust_EmployeeClassHeadersOutput: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        externalCode : String (128);
        cudKey : String(1);
    }     

    type FOLocationGroupHeaders: {
        externalCode : String (128);
        startDate : String(25);
        LegalEntityID : String(128);
        cudKey : String(1);
        Record : LargeString;
    }
    
    type FOLocationGroupHeadersOutput: {
        externalCode : String (128);
        startDate : String(25);
        LegalEntityID : String(128);
        cudKey : String(1);
        uniquekey: Integer64;
    }

    type FOLocationHeaders: {
        externalCode : String (128);
        startDate : String(25);
        LegalEntityID : String(128);
        cudKey : String(1);
        Record : LargeString;
    }
    
    type FOLocationHeadersOutput: {
        externalCode : String (128);
        startDate : String(25);
        LegalEntityID : String(128);
        cudKey : String(1);
        uniquekey: Integer64;
    }

    type CustomPayTypeHeaders: {
        mdfSystemRecordId : String(128);
        CountryCode : String(128);
        externalCode : String (128);
        cudKey : String(1);
        Record : LargeString;
    }
    
    type CustomPayTypeHeadersOutput: {
        mdfSystemRecordId : String(128);
        CountryCode : String(128);
        externalCode : String (128);
        cudKey : String(1);
    }     

    type cust_disciplinetypeHeadersOutput: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        externalCode : String (128);
        cudKey : String(1);
    }     
    
    type cust_disciplinetypeHeaders: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        externalCode : String (128);
        cudKey : String(1);
        Record : LargeString;
    }

    type FOPayGroupHeaders: {
        externalCode : String (128);
        startDate : String(25);
        LegalEntityID : String(128);
        cudKey : String(1);
        Record : LargeString;
    }
    
    type FOPayGroupHeadersOutput: {
        externalCode : String (128);
        startDate : String(25);
        LegalEntityID : String(128);
        cudKey : String(1);
        uniquekey: Integer64;
    }

    type PayScaleTypeHeaders: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        code : String (128);
        cudKey : String(1);
        Record : LargeString;
    }

    type PayScaleTypeHeadersOutput: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        code : String (128);
        cudKey : String(1);
    }

    type PayScaleAreaHeaders: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        code : String (128);
        cudKey : String(1);
        Record : LargeString;
    }

    type PayScaleAreaHeadersOutput: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        code : String (128);
        cudKey : String(1);
    }

    type PayScaleGroupHeaders: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        code : String (128);
        cudKey : String(1);
        Record : LargeString;
    }

    type PayScaleGroupHeadersOutput: {
        mdfSystemRecordId : String(128);
        LegalEntityID : String(128);
        code : String (128);
        cudKey : String(1);
    }

    type FODepartmentHeaders : {
        cust_seq: String(128);
        externalCode : String(20);
        cudKey : String(1);       
        jobId : String(14); 
        Record: LargeString;
    }
    
    type FODepartmentHeadersOutput: {
        cust_seq: String(128);
        externalCode : String(20);
        cudKey : String(1);     
        jobId : String(14);   
        uniquekey: Integer64;
    }

    type FODepartmentKeyHeaders : {      
        externalCode : String(128);
        cudKey : String(1);
    }
    
    type FODepartmentKeyHeadersOutput: { 
        externalCode : String(128);
        cudKey : String(1);
    }

    type PositionHeaders : {
        mdfSystemRecordId : String(128);
        code : String(128);
        cudKey : String(1);    
        jobId : String(14);   
        Record: LargeString;
    }

    type PositionHeadersOutput: {
        mdfSystemRecordId : String(128);
        code : String(128);
        cudKey : String(1);    
        jobId : String(14);   
    }

    type PositionKeyHeaders : {
        code : String(128);
        cudKey : String(1);
    }
    
    type PositionKeyHeadersOutput: {
        code : String(128);
        cudKey : String(1);
    }
 
    type EmpJobHeaders : {
        userId : String(20);
        startDate : String(25);
        seqNumber: String(2);
        cudKey : String(1);
        jobId : String(14);   
        Record: LargeString;
    }
    
    type EmpJobHeadersOutput: {
        userId : String(20);
        startDate : String(25);
        seqNumber: String(2);
        uniquekey: Integer64;
        cudKey : String(1);
        jobId : String(14);   
    }

    type EmpJobKeyHeaders : {
        userId : String(20);
        cudKey : String(1);
    }
    
    type EmpJobKeyHeadersOutput: {
        userId : String(20);
        cudKey : String(1);
    }

    type cust_ExceptionsHeaders: {
        userId : String (128);
        startDate : String(25);
        company : String(25);
        cudKey : String(1);
        Record : LargeString;
    }
    
    type cust_ExceptionsHeadersOutput: {
        userId : String (128);
        startDate : String(25);
        company : String(25);
        cudKey : String(1);
    }

    type PhotoHeaders: {
        photoId : String(128);
        userId : String(100);
        photoType : Integer64;
        cudKey : String(1);
        Record : LargeString;
    }
  
    type PhotoHeadersOutput: {
        userId : String(100);
        photoType : Integer64;
        cudKey : String(1);
    }      

    type PhotoKeyHeaders : {
        photoId : String(20);
        cudKey : String(1);
    }
    
    type PhotoKeyHeadersOutput: {
        photoId : String(20);
        cudKey : String(1);
    }

    type TodoEntryV2Headers: {
        todoEntryId : String(128);
        cudKey : String(1);
        Record : LargeString;
    }

    type TodoEntryV2HeadersOutput: {
        todoEntryId : String(128);
        cudKey : String(1);
    }

    type TodoEntryV2KeyHeaders : {
        todoEntryId : String(20);
        cudKey : String(1);
    }
    
    type TodoEntryV2KeyHeadersOutput: {
        todoEntryId : String(20);
        cudKey : String(1);
    }

    type Industrial_AccidentHeaders: {
        AccidentId : String (128);
        UserId : String (128);
        company : String(25);
        cudKey : String(1);
        Record : LargeString;
    }
    
    type Industrial_AccidentHeadersOutput: {
        AccidentId : String (128);
        UserId : String (128);
        company : String(25);
        cudKey : String(1);
    }

    type JobApplicationHeaders: {
        jobReqId : String (128);
        applicationId : String (128);
        cudKey : String(1);
        Record : LargeString;
    }
    
    type JobApplicationHeadersOutput: {
        jobReqId : String (128);
        applicationId : String (128);
        cudKey : String(1);
    }

    type EmpPayCompRecurringHeaders : {
        userId : String(30);
        payComponent: String(128);
        startDate : String(80);
        seqNumber: String(2);
        cudKey : String(1);  
        Record: LargeString;
    }
    
    type EmpPayCompRecurringHeadersOutput: {
        userId : String(30);
        payComponent: String(128);
        startDate : String(80);
        seqNumber: String(2);
        uniquekey: Integer64;
        cudKey : String(1);
        jobId : String(14);   
    }

    type PayScalePayComponentHeaders: {
        mdfSystemRecordId : String(128);
        PayScaleLevel_code : String(128);
        PayScaleLevel_effectiveStartDate : String(128);
        code : String (128);
        cudKey : String(1);
        Record : LargeString;
    }

    type PayScalePayComponentHeadersOutput: {
        mdfSystemRecordId : String(128);
        PayScaleLevel_code : String(128);
        PayScaleLevel_effectiveStartDate : String(128);
        code : String (128);
        cudKey : String(1);
    }

    type EmpPayExceptionsHeaders: {
        mdfSystemRecordId : String(128);
        externalCode : String(128);
        cudKey : String(1);
        Record : LargeString;
    }

    type EmpPayExceptionsHeadersOutput: {
        mdfSystemRecordId : String(128);
        externalCode : String(128);
        cudKey : String(1);
    }

    action SavePickListV2MultiProc (PickListV2 : array of PickListV2Headers) returns array of PickListV2HeadersOutput;
    action DeletePickListV2Proc () returns Boolean;
    action SavePickListValueV2MultiProc (PickListValueV2 : array of PickListValueV2Headers) returns array of PickListValueV2HeadersOutput;
    action DeletePickListValueV2Proc () returns Boolean;
    action SaveCust_EmploymentTypeMultiProc (cust_EmploymentType : array of cust_EmploymentTypeHeaders) returns array of cust_EmploymentTypeHeadersOutput;
    action DeleteCust_EmploymentTypeProc () returns Boolean;
    action SaveCust_JobGroupMultiProc (cust_JobGroup : array of cust_JobGroupHeaders) returns array of cust_JobGroupHeadersOutput;
    action DeleteCust_JobGroupProc () returns Boolean; 
    action SaveFOJobFunctionMultiProc (FOJobFunction : array of FOJobFunctionHeaders) returns array of FOJobFunctionHeadersOutput;
    action DeleteFOJobFunctionProc () returns Boolean;
    action SaveFOJobCodeMultiProc (FOJobCode : array of FOJobCodeHeaders) returns array of FOJobCodeHeadersOutput;
    action DeleteFOJobCodeProc () returns Boolean;
    action SaveCust_JobTitleMultiProc (cust_JobTitle : array of cust_JobTitleHeaders) returns array of cust_JobTitleHeadersOutput;
    action DeleteCust_JobTitleProc () returns Boolean;
    action SaveCust_JobGradeMultiProc (cust_JobGrade : array of cust_JobGradeHeaders) returns array of cust_JobGradeHeadersOutput;
    action DeleteCust_JobGradeProc () returns Boolean;
    action SaveCust_SupervisorLevelMultiProc (cust_SupervisorLevel : array of cust_SupervisorLevelHeaders) returns array of cust_SupervisorLevelHeadersOutput;
    action DeleteCust_SupervisorLevelProc () returns Boolean;
    action SaveCust_WorkSiteMultiProc (cust_WorkSite : array of cust_WorkSiteHeaders) returns array of cust_WorkSiteHeadersOutput;
    action DeleteCust_WorkSiteProc () returns Boolean;
    action SaveCust_employeegroupMultiProc (cust_employeegroup : array of cust_employeegroupHeaders) returns array of cust_employeegroupHeadersOutput;
    action DeleteCust_employeegroupProc () returns Boolean;
    action SaveFOEventReasonMultiProc (FOEventReason : array of FOEventReasonHeaders) returns array of FOEventReasonHeadersOutput;
    action DeleteFOEventReasonProc () returns Boolean;
    action SaveCust_Term_Event_DesMultiProc (cust_Term_Event_Des : array of cust_Term_Event_DesHeaders) returns array of cust_Term_Event_DesHeadersOutput;
    action DeleteCust_Term_Event_DesProc () returns Boolean;
    action SaveCust_EmployeeClassMultiProc (cust_EmployeeClass : array of cust_EmployeeClassHeaders) returns array of cust_EmployeeClassHeadersOutput;
    action DeleteCust_EmployeeClassProc () returns Boolean;
    action SaveFOLocationGroupMultiProc (FOLocationGroup : array of FOLocationGroupHeaders) returns array of FOLocationGroupHeadersOutput;
    action DeleteFOLocationGroupProc () returns Boolean;
    action SaveFOLocationMultiProc (FOLocation : array of FOLocationHeaders) returns array of FOLocationHeadersOutput;
    action DeleteFOLocationProc () returns Boolean;
    action SaveCustomPayTypeMultiProc (CustomPayType : array of CustomPayTypeHeaders) returns array of CustomPayTypeHeadersOutput;
    action DeleteCustomPayTypeProc () returns Boolean;    
    action SaveCust_disciplinetypeMultiProc (cust_disciplinetype : array of cust_disciplinetypeHeaders) returns array of cust_disciplinetypeHeadersOutput;
    action DeleteCust_disciplinetypeProc () returns Boolean;    
    action SaveFOPayGroupMultiProc (FOPayGroup : array of FOPayGroupHeaders) returns array of FOPayGroupHeadersOutput;
    action DeleteFOPayGroupProc () returns Boolean;    
    action SavePayScaleTypeMultiProc (PayScaleType : array of PayScaleTypeHeaders) returns array of PayScaleTypeHeadersOutput;
    action DeletePayScaleTypeProc () returns Boolean;    
    action SavePayScaleAreaMultiProc (PayScaleArea : array of PayScaleAreaHeaders) returns array of PayScaleAreaHeadersOutput;
    action DeletePayScaleAreaProc () returns Boolean;    
    action SavePayScaleGroupMultiProc (PayScaleGroup : array of PayScaleGroupHeaders) returns array of PayScaleGroupHeadersOutput;
    action DeletePayScaleGroupProc () returns Boolean;    
    action SaveFODepartmentMultiProc (FODepartment : array of FODepartmentHeaders) returns array of FODepartmentHeadersOutput;
    action DeleteFODepartmentProc () returns Boolean;
    action SaveFODepartmentKeyMultiProc (FODepartmentKey : array of FODepartmentKeyHeaders) returns array of FODepartmentKeyHeadersOutput;  
    action DeleteFODepartmentKeyProc () returns Boolean; 
    action SavePositionMultiProc (Position : array of PositionHeaders) returns array of PositionHeadersOutput;
    action DeletePositionProc () returns Boolean;
    action SavePositionKeyMultiProc (PositionKey : array of PositionKeyHeaders) returns array of PositionKeyHeadersOutput;  
    action DeletePositionKeyProc () returns Boolean;      
    action SaveEmpJobMultiProc (EmpJob : array of EmpJobHeaders) returns array of EmpJobHeadersOutput;    
    action DeleteEmpJobProc () returns Boolean;
    action SaveEmpJobKeyMultiProc (EmpJobKey : array of EmpJobKeyHeaders) returns array of EmpJobKeyHeadersOutput;  
    action DeleteEmpJobKeyProc () returns Boolean;    
    action SaveCust_ExceptionsMultiProc (cust_Exceptions : array of cust_ExceptionsHeaders) returns array of cust_ExceptionsHeadersOutput;
    action DeleteCust_ExceptionsProc () returns Boolean;
    action SavePhotoMultiProc (Photo : array of PhotoHeaders) returns array of PhotoHeadersOutput;
    action DeletePhotoProc () returns Boolean;
    action SavePhotoKeyMultiProc (PhotoKey : array of PhotoKeyHeaders) returns array of PhotoKeyHeadersOutput;  
    action DeletePhotoKeyProc () returns Boolean;    
    action SaveTodoEntryV2MultiProc (TodoEntryV2 : array of TodoEntryV2Headers) returns array of TodoEntryV2HeadersOutput;
    action DeleteTodoEntryV2Proc () returns Boolean;
    action SaveTodoEntryV2KeyMultiProc (TodoEntryV2Key : array of TodoEntryV2KeyHeaders) returns array of TodoEntryV2KeyHeadersOutput;  
    action DeleteTodoEntryV2KeyProc () returns Boolean;        
    action SaveIndustrial_AccidentMultiProc (Industrial_Accident : array of Industrial_AccidentHeaders) returns array of Industrial_AccidentHeadersOutput;
    action DeleteIndustrial_AccidentProc () returns Boolean;
    action SaveJobApplicationMultiProc (JobApplication : array of JobApplicationHeaders) returns array of JobApplicationHeadersOutput;
    action DeleteJobApplicationProc () returns Boolean;
    action SaveEmpPayCompRecurringMultiProc (EmpPayCompRecurring : array of EmpPayCompRecurringHeaders) returns array of EmpPayCompRecurringHeadersOutput;
    action DeleteEmpPayCompRecurringProc () returns Boolean;
    action SavePayScalePayComponentMultiProc (PayScalePayComponent : array of PayScalePayComponentHeaders) returns array of PayScalePayComponentHeadersOutput;
    action DeletePayScalePayComponentProc () returns Boolean;
    action SaveEmpPayExceptionsMultiProc (EmpPayExceptions : array of EmpPayExceptionsHeaders) returns array of EmpPayExceptionsHeadersOutput;
    action DeleteEmpPayExceptionsProc () returns Boolean;

    /* Key Comparison */
    function CompareFODepartmentKeyMultiProc () returns array of FODepartmentKeyHeadersOutput;    
    function ComparePositionKeyMultiProc () returns array of PositionKeyHeadersOutput;    
    function CompareEmpJobKeyMultiProc () returns array of EmpJobKeyHeadersOutput;    
    function ComparePhotoKeyMultiProc () returns array of PhotoKeyHeadersOutput;    
    function CompareTodoEntryV2KeyMultiProc () returns array of TodoEntryV2KeyHeadersOutput;
}