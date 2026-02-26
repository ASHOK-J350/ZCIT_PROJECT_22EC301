@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZZCICIT_TAP_22EC301'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZCIC_CIT_TAP_22EC301
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZCIR_CIT_TAP_22EC301
  association [1..1] to ZZCIR_CIT_TAP_22EC301 as _BaseEntity on $projection.ROLLNO = _BaseEntity.ROLLNO
{
  key Rollno,
  StudentFullName,
  Gender,
  DateOfBirth,
  FatherName,
  MotherName,
  Department,
  AdmissionDate,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Lastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  _BaseEntity
}
