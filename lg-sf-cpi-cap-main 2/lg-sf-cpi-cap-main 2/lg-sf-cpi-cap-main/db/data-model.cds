using {
   cuid,
   managed,
   sap.common
 } from '@sap/cds/common';

entity PickListV2 {
    key mdfSystemRecordId : String (128);
    picklistId : String (128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity PickListValueV2 {
    key mdfSystemRecordId : String (128);
    picklistId : String (128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity cust_EmploymentType {
    key mdfSystemRecordId : String (128);  
    externalCode : String (128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity cust_JobGroup {
    key mdfSystemRecordId : String (128);
    externalCode : String (128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity FOJobFunction {
    key cust_integrationKey : String(128);
    externalCode : String(128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity FOJobCode {
    key cust_integrationKey : String(128);
    startDate : String(25);
    externalCode : String(128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity cust_JobTitle {
    key mdfSystemRecordId : String(128);
    key LegalEntityID : String (128);
    externalCode : String (128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity cust_JobGrade {
    key mdfSystemRecordId : String(128);
    key LegalEntityID : String (128);
    externalCode : String (128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity cust_SupervisorLevel {
    key mdfSystemRecordId : String(128);
    key LegalEntityID : String (128);
    externalCode : String (128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity cust_WorkSite {
    key mdfSystemRecordId : String (128);
    key LegalEntityID : String (128);
    WorkSiteID : String (128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity cust_employeegroup {
    key mdfSystemRecordId : String(128);
    externalCode : String (128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity FOEventReason {
    key uniquekey : Integer64;
    key externalCode : String(128);
    key LegalEntityID : String (128);
    key startDate : String(25);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity cust_Term_Event_Des {
    key mdfSystemRecordId : String(128);
    key LegalEntityID : String (128);
    externalCode : String (128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity cust_EmployeeClass {
    key mdfSystemRecordId : String(128);
    key LegalEntityID : String (128);
    externalCode : String (128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity FOLocationGroup {
    key uniquekey : Integer64;
    key externalCode : String(128);
    key LegalEntityID : String (128);
    key startDate : String(25);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity FOLocation {
    key uniquekey : Integer64;
    key externalCode : String(128);
    key LegalEntityID : String (128);
    key startDate : String(25);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity CustomPayType {
    key mdfSystemRecordId : String(128);
    key CountryCode : String (128);
    externalCode : String (128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity cust_disciplinetype {
    key mdfSystemRecordId : String(128);
    key LegalEntityID : String (128);
    externalCode : String (128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity FOPayGroup {
    key uniquekey : Integer64;
    key externalCode : String(128);
    key LegalEntityID : String (128);
    key startDate : String(25);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity PayScaleType {
    key mdfSystemRecordId : String(128);
    key LegalEntityID : String (128);
    code : String (128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity PayScaleArea {
    key mdfSystemRecordId : String(128);
    key LegalEntityID : String(128);
    code : String (128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity PayScaleGroup {
    key mdfSystemRecordId : String(128);
    key LegalEntityID : String(128);
    code : String (128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity FODepartment {
    key cust_seq : String(128);
    externalCode : String(128);
    cudKey : String(1);
    jobId : String(14);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity FODepartmentKey {
    key externalCode : String(128);
    cudKey : String(1);
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity Position {
    key mdfSystemRecordId : String(128);
    code : String (128);
    cudKey : String(1);
    jobId : String(14);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity PositionKey {
    key code : String(128);
    cudKey : String(1);
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity EmpJob {
    key userId : String(20);
    key startDate : String(25);
    key seqNumber : String(2);
    key uniquekey : Integer64;
    cudKey : String(1);
    jobId : String(14);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity EmpJobKey {
    key userId : String(20);
    cudKey : String(1);
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity cust_Exceptions {
    key userId : String (128);
    key startDate : String(25);
    key company : String(25);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity Photo {
    key photoId : String(128);
    userId : String(100);
    photoType : Integer64;
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity PhotoKey {
    key photoId : String(20);
    cudKey : String(1);
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity TodoEntryV2 {
    key todoEntryId : String (128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity TodoEntryV2Key {
    key todoEntryId : String(20);
    cudKey : String(1);
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity Industrial_Accident {
    key AccidentId : String (128);
    key UserId : String (128);
    key company : String(25);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity JobApplication {
    key jobReqId : String (128);
    key applicationId : String (128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity EmpPayCompRecurring {
    key userId : String(255);
    key payComponent : String(80);
    key startDate : String(80);
    key seqNumber : String(10);
    key uniquekey : Integer64;
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity PayScalePayComponent {
    key mdfSystemRecordId : String(128);
    PayScaleLevel_code : String (128);
    PayScaleLevel_effectiveStartDate: String (80);
    code : String (128);
    cudKey : String(1); 
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}

entity EmpPayExceptions {
    key mdfSystemRecordId : String(128);
    externalCode : String (128);
    cudKey : String(1);
    Record : LargeString;
    createdBy: String @cds.on.insert: $user;
    lastModifiedBy: String @cds.on.insert: $user @cds.on.update: $user;
    createdDateTime: DateTime @cds.on.insert: $now;
    lastModifiedDateTime: DateTime @cds.on.insert: $now  @cds.on.update: $now;
}
