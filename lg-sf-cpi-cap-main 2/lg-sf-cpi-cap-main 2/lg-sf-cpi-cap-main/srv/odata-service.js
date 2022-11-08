const cds = require('@sap/cds')
const serviceList = [
    {"entity":"PickListV2","srv":"SavePickListV2MultiProc","proc":"PICKLISTV2_SAVE_PROC","output":[{"ef":"mdfSystemRecordId","df":"MDFSYSTEMRECORDID"},{"ef":"picklistId","df":"PICKLISTID"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"PickListValueV2","srv":"SavePickListValueV2MultiProc","proc":"PICKLISTVALUEV2_SAVE_PROC","output":[{"ef":"mdfSystemRecordId","df":"MDFSYSTEMRECORDID"},{"ef":"picklistId","df":"PICKLISTID"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"cust_EmploymentType","srv":"SaveCust_EmploymentTypeMultiProc","proc":"CUST_EMPLOYMENTTYPE_SAVE_PROC","output":[{"ef":"mdfSystemRecordId","df":"MDFSYSTEMRECORDID"},{"ef":"externalCode","df":"EXTERNALCODE"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"cust_JobGroup","srv":"SaveCust_JobGroupMultiProc","proc":"CUST_JOBGROUP_SAVE_PROC","output":[{"ef":"mdfSystemRecordId","df":"MDFSYSTEMRECORDID"},{"ef":"externalCode","df":"EXTERNALCODE"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"FOJobFunction","srv":"SaveFOJobFunctionMultiProc","proc":"FOJOBFUNCTION_SAVE_PROC","output":[{"ef":"cust_integrationKey","df":"CUST_INTEGRATIONKEY"},{"ef":"externalCode","df":"EXTERNALCODE"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"FOJobCode","srv":"SaveFOJobCodeMultiProc","proc":"FOJOBCODE_SAVE_PROC","output":[{"ef":"cust_integrationKey","df":"CUST_INTEGRATIONKEY"},{"ef":"startDate","df":"STARTDATE"},{"ef":"externalCode","df":"EXTERNALCODE"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"cust_JobTitle","srv":"SaveCust_JobTitleMultiProc","proc":"CUST_JOBTITLE_SAVE_PROC","output":[{"ef":"mdfSystemRecordId","df":"MDFSYSTEMRECORDID"},{"ef":"LegalEntityID","df":"LEGALENTITYID"},{"ef":"externalCode","df":"EXTERNALCODE"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"cust_JobGrade","srv":"SaveCust_JobGradeMultiProc","proc":"CUST_JOBGRADE_SAVE_PROC","output":[{"ef":"mdfSystemRecordId","df":"MDFSYSTEMRECORDID"},{"ef":"LegalEntityID","df":"LEGALENTITYID"},{"ef":"externalCode","df":"EXTERNALCODE"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"cust_SupervisorLevel","srv":"SaveCust_SupervisorLevelMultiProc","proc":"CUST_SUPERVISORLEVEL_SAVE_PROC","output":[{"ef":"mdfSystemRecordId","df":"MDFSYSTEMRECORDID"},{"ef":"LegalEntityID","df":"LEGALENTITYID"},{"ef":"externalCode","df":"EXTERNALCODE"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"cust_WorkSite","srv":"SaveCust_WorkSiteMultiProc","proc":"CUST_WORKSITE_SAVE_PROC","output":[{"ef":"mdfSystemRecordId","df":"MDFSYSTEMRECORDID"},{"ef":"LegalEntityID","df":"LEGALENTITYID"},{"ef":"WorkSiteID","df":"WORKSITEID"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"cust_employeegroup","srv":"SaveCust_employeegroupMultiProc","proc":"CUST_EMPLOYEEGROUP_SAVE_PROC","output":[{"ef":"mdfSystemRecordId","df":"MDFSYSTEMRECORDID"},{"ef":"externalCode","df":"EXTERNALCODE"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"FOEventReason","srv":"SaveFOEventReasonMultiProc","proc":"FOEVENTREASON_SAVE_PROC","output":[{"ef":"uniquekey","df":"UNIQUEKEY"},{"ef":"LegalEntityID","df":"LEGALENTITYID"},{"ef":"externalCode","df":"EXTERNALCODE"},{"ef":"startDate","df":"STARTDATE"},{"ef":"cudKey","df":"CUDKEY"}]},    
    {"entity":"cust_Term_Event_Des","srv":"SaveCust_Term_Event_DesMultiProc","proc":"CUST_TERM_EVENT_DES_SAVE_PROC","output":[{"ef":"mdfSystemRecordId","df":"MDFSYSTEMRECORDID"},{"ef":"LegalEntityID","df":"LEGALENTITYID"},{"ef":"externalCode","df":"EXTERNALCODE"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"cust_EmployeeClass","srv":"SaveCust_EmployeeClassMultiProc","proc":"CUST_EMPLOYEECLASS_SAVE_PROC","output":[{"ef":"mdfSystemRecordId","df":"MDFSYSTEMRECORDID"},{"ef":"LegalEntityID","df":"LEGALENTITYID"},{"ef":"externalCode","df":"EXTERNALCODE"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"FOLocationGroup","srv":"SaveFOLocationGroupMultiProc","proc":"FOLOCATIONGROUP_SAVE_PROC","output":[{"ef":"uniquekey","df":"UNIQUEKEY"},{"ef":"LegalEntityID","df":"LEGALENTITYID"},{"ef":"externalCode","df":"EXTERNALCODE"},{"ef":"startDate","df":"STARTDATE"},{"ef":"cudKey","df":"CUDKEY"}]},    
    {"entity":"FOLocation","srv":"SaveFOLocationMultiProc","proc":"FOLOCATION_SAVE_PROC","output":[{"ef":"uniquekey","df":"UNIQUEKEY"},{"ef":"LegalEntityID","df":"LEGALENTITYID"},{"ef":"externalCode","df":"EXTERNALCODE"},{"ef":"startDate","df":"STARTDATE"},{"ef":"cudKey","df":"CUDKEY"}]},    
    {"entity":"CustomPayType","srv":"SaveCustomPayTypeMultiProc","proc":"CUSTOMPAYTYPE_SAVE_PROC","output":[{"ef":"mdfSystemRecordId","df":"MDFSYSTEMRECORDID"},{"ef":"CountryCode","df":"COUNTRYCODE"},{"ef":"externalCode","df":"EXTERNALCODE"},{"ef":"cudKey","df":"CUDKEY"}]},    
    {"entity":"cust_disciplinetype","srv":"SaveCust_disciplinetypeMultiProc","proc":"CUST_DISCIPLINETYPE_SAVE_PROC","output":[{"ef":"mdfSystemRecordId","df":"MDFSYSTEMRECORDID"},{"ef":"LegalEntityID","df":"LEGALENTITYID"},{"ef":"externalCode","df":"EXTERNALCODE"},{"ef":"cudKey","df":"CUDKEY"}]},    
    {"entity":"FOPayGroup","srv":"SaveFOPayGroupMultiProc","proc":"FOPAYGROUP_SAVE_PROC","output":[{"ef":"uniquekey","df":"UNIQUEKEY"},{"ef":"LegalEntityID","df":"LEGALENTITYID"},{"ef":"externalCode","df":"EXTERNALCODE"},{"ef":"startDate","df":"STARTDATE"},{"ef":"cudKey","df":"CUDKEY"}]},    
    {"entity":"PayScaleType","srv":"SavePayScaleTypeMultiProc","proc":"PAYSCALETYPE_SAVE_PROC","output":[{"ef":"mdfSystemRecordId","df":"MDFSYSTEMRECORDID"},{"ef":"LegalEntityID","df":"LEGALENTITYID"},{"ef":"code","df":"CODE"},{"ef":"cudKey","df":"CUDKEY"}]}, 
    {"entity":"PayScaleArea","srv":"SavePayScaleAreaMultiProc","proc":"PAYSCALEAREA_SAVE_PROC","output":[{"ef":"mdfSystemRecordId","df":"MDFSYSTEMRECORDID"},{"ef":"LegalEntityID","df":"LEGALENTITYID"},{"ef":"code","df":"CODE"},{"ef":"cudKey","df":"CUDKEY"}]},    
    {"entity":"PayScaleGroup","srv":"SavePayScaleGroupMultiProc","proc":"PAYSCALEGROUP_SAVE_PROC","output":[{"ef":"mdfSystemRecordId","df":"MDFSYSTEMRECORDID"},{"ef":"LegalEntityID","df":"LEGALENTITYID"},{"ef":"code","df":"CODE"},{"ef":"cudKey","df":"CUDKEY"}]},    
    {"entity":"FODepartment","srv":"SaveFODepartmentMultiProc","proc":"FODEPARTMENT_SAVE_PROC","output":[{"ef":"cust_seq","df":"CUST_SEQ"},{"ef":"uniquekey","df":"UNIQUEKEY"},{"ef":"cudKey","df":"CUDKEY"},{"ef":"jobId","df":"JOBID"}]},
    {"entity":"FODepartmentKey","srv":"SaveFODepartmentKeyMultiProc","proc":"FODEPARTMENTKEY_SAVE_PROC","output":[{"ef":"externalCode","df":"EXTERNALCODE"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"FODepartmentKey","srv":"CompareFODepartmentKeyMultiProc","proc":"FODEPARTMENTKEY_COMPARE_PROC","output":[{"ef":"externalCode","df":"EXTERNALCODE"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"Position","srv":"SavePositionMultiProc","proc":"POSITION_SAVE_PROC","output":[{"ef":"mdfSystemRecordId","df":"MDFSYSTEMRECORDID"},{"ef":"code","df":"CODE"},{"ef":"cudKey","df":"CUDKEY"},{"ef":"jobId","df":"JOBID"}]},
    {"entity":"PositionKey","srv":"SavePositionKeyMultiProc","proc":"POSITIONKEY_SAVE_PROC","output":[{"ef":"code","df":"CODE"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"PositionKey","srv":"ComparePositionKeyMultiProc","proc":"POSITIONKEY_COMPARE_PROC","output":[{"ef":"code","df":"CODE"},
    {"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"EmpJob","srv":"SaveEmpJobMultiProc","proc":"EMPJOB_SAVE_PROC","output":[{"ef":"userId","df":"USERID"},{"ef":"startDate","df":"STARTDATE"},{"ef":"seqNumber","df":"SEQNUMBER"},{"ef":"cudKey","df":"CUDKEY"},{"ef":"jobId","df":"JOBID"},{"ef":"uniquekey","df":"UNIQUEKEY"}]},
    {"entity":"EmpJobKey","srv":"SaveEmpJobKeyMultiProc","proc":"EMPJOBKEY_SAVE_PROC","output":[{"ef":"userId","df":"USERID"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"EmpJobKey","srv":"CompareEmpJobKeyMultiProc","proc":"EMPJOBKEY_COMPARE_PROC","output":[{"ef":"userId","df":"USERID"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"cust_Exceptions","srv":"SaveCust_ExceptionsMultiProc","proc":"CUST_EXCEPTIONS_SAVE_PROC","output":[{"ef":"userId","df":"USERID"},{"ef":"startDate","df":"STARTDATE"},{"ef":"company","df":"COMPANY"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"Photo","srv":"SavePhotoMultiProc","proc":"PHOTO_SAVE_PROC","output":[{"ef":"photoId","df":"PHOTOID"},{"ef":"userId","df":"USERID"},{"ef":"photoType","df":"PHOTOTYPE"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"PhotoKey","srv":"SavePhotoKeyMultiProc","proc":"PHOTOKEY_SAVE_PROC","output":[{"ef":"photoId","df":"PHOTOID"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"PhotoKey","srv":"ComparePhotoKeyMultiProc","proc":"PHOTOKEY_COMPARE_PROC","output":[{"ef":"photoId","df":"PHOTOID"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"TodoEntryV2","srv":"SaveTodoEntryV2MultiProc","proc":"TODOENTRYV2_SAVE_PROC","output":[{"ef":"todoEntryId","df":"TODOENTRYID"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"TodoEntryV2Key","srv":"SaveTodoEntryV2KeyMultiProc","proc":"TODOENTRYV2KEY_SAVE_PROC","output":[{"ef":"todoEntryId","df":"TODOENTRYID"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"TodoEntryV2Key","srv":"CompareTodoEntryV2KeyMultiProc","proc":"TODOENTRYV2KEY_COMPARE_PROC","output":[{"ef":"todoEntryId","df":"TODOENTRYID"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"Industrial_Accident","srv":"SaveIndustrial_AccidentMultiProc","proc":"INDUSTRIAL_ACCIDENT_SAVE_PROC","output":[{"ef":"AccidentId","df":"ACCIDENTID"},{"ef":"UserId","df":"USERID"},{"ef":"company","df":"COMPANY"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"JobApplication","srv":"SaveJobApplicationMultiProc","proc":"JOBAPPLICATION_SAVE_PROC","output":[{"ef":"jobReqId","df":"JOBREQID"},{"ef":"applicationId","df":"APPLICATIONID"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"EmpPayCompRecurring","srv":"SaveEmpPayCompRecurringMultiProc","proc":"EMPPAYCOMPRECURRING_SAVE_PROC","output":[{"ef":"userId","df":"USERID"},{"ef":"payComponent","df":"PAYCOMPONENT"},{"ef":"startDate","df":"STARTDATE"},{"ef":"seqNumber","df":"SEQNUMBER"},{"ef":"cudKey","df":"CUDKEY"},{"ef":"uniquekey","df":"UNIQUEKEY"}]},        
    {"entity":"PayScalePayComponent","srv":"SavePayScalePayComponentMultiProc","proc":"PAYSCALEPAYCOMPONENT_SAVE_PROC","output":[{"ef":"mdfSystemRecordId","df":"MDFSYSTEMRECORDID"},{"ef":"PayScaleLevel_code","df":"PAYSCALELEVEL_CODE"},{"ef":"PayScaleLevel_effectiveStartDate","df":"PAYSCALELEVEL_EFFECTIVESTARTDATE"},{"ef":"code","df":"CODE"},{"ef":"cudKey","df":"CUDKEY"}]},
    {"entity":"EmpPayExceptions","srv":"SaveEmpPayExceptionsMultiProc","proc":"EMPPAYEXCEPTIONS_SAVE_PROC","output":[{"ef":"mdfSystemRecordId","df":"MDFSYSTEMRECORDID"},{"ef":"externalCode","df":"EXTERNALCODE"},{"ef":"cudKey","df":"CUDKEY"}]}
]

const deleteServiceList = [
    {"entity":"PickListV2","srv":"DeletePickListV2Proc","proc":"PICKLISTV2_DELETE_PROC"},
    {"entity":"PickListValueV2","srv":"DeletePickListValueV2Proc","proc":"PICKLISTVALUEV2_DELETE_PROC"},
    {"entity":"cust_EmploymentType","srv":"DeleteCust_EmploymentTypeProc","proc":"CUST_EMPLOYMENTTYPE_DELETE_PROC"},
    {"entity":"cust_JobGroup","srv":"DeleteCust_JobGroupProc","proc":"CUST_JOBGROUP_DELETE_PROC"},
    {"entity":"FOJobFunction","srv":"DeleteFOJobFunctionProc","proc":"FOJOBFUNCTION_DELETE_PROC"},
    {"entity":"FOJobCode","srv":"DeleteFOJobCodeProc","proc":"FOJOBCODE_DELETE_PROC"},
    {"entity":"cust_JobTitle","srv":"DeleteCust_JobTitleProc","proc":"CUST_JOBTITLE_DELETE_PROC"},
    {"entity":"cust_JobGrade","srv":"DeleteCust_JobGradeProc","proc":"CUST_JOBGRADE_DELETE_PROC"},
    {"entity":"cust_SupervisorLevel","srv":"DeleteCust_SupervisorLevelProc","proc":"CUST_SUPERVISORLEVEL_DELETE_PROC"},
    {"entity":"cust_WorkSite","srv":"DeleteCust_WorkSiteProc","proc":"CUST_WORKSITE_DELETE_PROC"},
    {"entity":"cust_employeegroup","srv":"DeleteCust_employeegroupProc","proc":"CUST_EMPLOYEEGROUP_DELETE_PROC"},
    {"entity":"FOEventReason","srv":"DeleteFOEventReasonProc","proc":"FOEVENTREASON_DELETE_PROC"},
    {"entity":"cust_Term_Event_Des","srv":"DeleteCust_Term_Event_DesProc","proc":"CUST_TERM_EVENT_DES_DELETE_PROC"},
    {"entity":"cust_EmployeeClass","srv":"DeleteCust_EmployeeClassProc","proc":"CUST_EMPLOYEECLASS_DELETE_PROC"},
    {"entity":"FOLocationGroup","srv":"DeleteFOLocationGroupProc","proc":"FOLOCATIONGROUP_DELETE_PROC"},
    {"entity":"FOLocation","srv":"DeleteFOLocationProc","proc":"FOLOCATION_DELETE_PROC"},
    {"entity":"CustomPayType","srv":"DeleteCustomPayTypeProc","proc":"CUSTOMPAYTYPE_DELETE_PROC"},
    {"entity":"cust_disciplinetype","srv":"DeleteCust_disciplinetypeProc","proc":"CUST_DISCIPLINETYPE_DELETE_PROC"},
    {"entity":"PayScaleType","srv":"DeletePayScaleTypeProc","proc":"PAYSCALETYPE_DELETE_PROC"},
    {"entity":"PayScaleArea","srv":"DeletePayScaleAreaProc","proc":"PAYSCALEAREA_DELETE_PROC"},
    {"entity":"PayScaleGroup","srv":"DeletePayScaleGroupProc","proc":"PAYSCALEGROUP_DELETE_PROC"},
    {"entity":"FOPayGroup","srv":"DeleteFOPayGroupProc","proc":"FOPAYGROUP_DELETE_PROC"},
    {"entity":"FODepartment","srv":"DeleteFODepartmentProc","proc":"FODEPARTMENT_DELETE_PROC"},
    {"entity":"FODepartmentKey","srv":"DeleteFODepartmentKeyProc","proc":"FODEPARTMENTKEY_DELETE_PROC"},
    {"entity":"Position","srv":"DeletePositionProc","proc":"POSITION_DELETE_PROC"},
    {"entity":"PositionKey","srv":"DeletePositionKeyProc","proc":"POSITIONKEY_DELETE_PROC"},
    {"entity":"EmpJob","srv":"DeleteEmpJobProc","proc":"EMPJOB_DELETE_PROC"},
    {"entity":"EmpJobKey","srv":"DeleteEmpJobKeyProc","proc":"EMPJOBKEY_DELETE_PROC"},
    {"entity":"cust_Exceptions","srv":"DeleteCust_ExceptionsProc","proc":"CUST_EXCEPTIONS_DELETE_PROC"},
    {"entity":"Photo","srv":"DeletePhotoProc","proc":"PHOTO_DELETE_PROC"},
    {"entity":"PhotoKey","srv":"DeletePhotoKeyProc","proc":"PHOTOKEY_DELETE_PROC"},
    {"entity":"TodoEntryV2","srv":"DeleteTodoEntryV2Proc","proc":"TODOENTRYV2_DELETE_PROC"},
    {"entity":"TodoEntryV2Key","srv":"DeleteTodoEntryV2KeyProc","proc":"TODOENTRYV2KEY_DELETE_PROC"},
    {"entity":"Industrial_Accident","srv":"DeleteIndustrial_AccidentProc","proc":"INDUSTRIAL_ACCIDENT_DELETE_PROC"},
    {"entity":"JobApplication","srv":"DeleteJobApplicationProc","proc":"JOBAPPLICATION_DELETE_PROC"},
    {"entity":"EmpPayCompRecurring","srv":"DeleteEmpPayCompRecurringProc","proc":"EMPPAYCOMPRECURRING_DELETE_PROC"},
    {"entity":"PayScalePayComponent","srv":"DeletePayScalePayComponentProc","proc":"PAYSCALEPAYCOMPONENT_DELETE_PROC"},
    {"entity":"EmpPayExceptions","srv":"DeleteEmpPayExceptionsProc","proc":"EMPPAYEXCEPTIONS_DELETE_PROC"}
]

module.exports = cds.service.impl(function () {    
    serviceList.forEach(service => {
        this.on(service.srv, async (req) => {
            try {
                 const inputData = req.data[service.entity] ? req.data[service.entity] : [];
                 
                 let params = [];
            
                inputData.forEach(item => {
                    let entries = Object.entries(item);
                    let capsEntries = entries.map((entry) => [entry[0].toUpperCase(), entry[1]]);
                    let param = Object.fromEntries(capsEntries);
                    params.push(param);
                });
            
                 const db = await cds.connect.to('db')
                 const dbClass = require("sap-hdbext-promisfied")
                 let dbConn = new dbClass(await dbClass.createConnection(db.options.credentials))
                 const hdbext = require("@sap/hdbext")
                 const sp = await dbConn.loadProcedurePromisified(hdbext, null, service.proc)
                 const output = await dbConn.callProcedurePromisified(sp, params)
                 
                 const outputData = output.results;
                 let outputList = [];
                 outputData.forEach(item => {
                    let opdata = {};
                    service.output.forEach(op => {
                        opdata[op.ef] = item[op.df];
                    }) 
                    
                    outputList.push(opdata);  
                 });
                 return outputList
            } catch (error) {
                 /*
                 console.error(error)
                 return false
                 */
                let errorList = [];
                let errorData = {"error":error.toString()}; 
                errorList.push(errorData);
                console.log(error.toString())
                 return errorList;
            }
         })
         
    });
    
    deleteServiceList.forEach(delService => {
        this.on(delService.srv, async () => {
            try {
                    const db = await cds.connect.to('db')
                    const dbClass = require("sap-hdbext-promisfied")
                    let dbConn = new dbClass(await dbClass.createConnection(db.options.credentials))
                    const hdbext = require("@sap/hdbext")
                    const sp = await dbConn.loadProcedurePromisified(hdbext, null, delService.proc)
                    const output = await dbConn.callProcedurePromisified(sp, []);
                    const outputData = output.results;
                    
                return outputData
            } catch (error) {
                    console.error(error)
                    return false
            }
        })
    });

})