codeunit 50051 ApplicantMessage
{

    [EventSubscriber(ObjectType::Table, Database::Applicant, 'OnAfterInsertEvent', '', true, true)]

    local procedure ShowWhichHospitalHasVaccine(var Rec: Record Applicant)
    var
        HospitalVaccinRec: Record HospitalVaccine;

    begin
        HospitalVaccinRec.Get(Rec);
        repeat
            if HospitalVaccinRec.VaccineId = Rec.VaccineId then begin
                Message('The vaccine is avalable in %1 hospital.', HospitalVaccinRec.HospitalName);
            end;
        until HospitalVaccinRec.Next() = 0;
    end;

}