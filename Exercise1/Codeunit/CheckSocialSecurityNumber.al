codeunit 50052 CheckSocialSecurityNumber
{
    trigger OnRun()
    begin
        ApplicantRec.SETRANGE(SocialSecurityNumber, ApplicantRec.SocialSecurityNumber);
        IF ApplicantRec.COUNT > 1 THEN
            ERROR('Number already exists ');
    end;

    var
        ApplicantRec: Record Applicant;


}