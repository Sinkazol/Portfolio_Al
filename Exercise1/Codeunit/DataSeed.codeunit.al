codeunit 50050 DataSeed
{
    Subtype = Install;

    var
        HospitalRecord: Record Hospital;
        VaccineRecord: Record Vaccine;

    trigger OnInstallAppPerCompany()

    begin
        if VaccineRecord.IsEmpty then begin
            InsertVaccine(1, 'Pfizer', 1000);
            InsertVaccine(2, 'Moderna', 500);
            InsertVaccine(3, 'Astrazeneca', 750);
            InsertVaccine(4, 'Sinopharm', 10000);
        end;

        if HospitalRecord.IsEmpty then begin
            InsertHospital(1, 'Szent László korház');
            InsertHospital(2, 'Szent István Korház');
            InsertHospital(3, 'Honvég Korház');
        end;
    end;

    local procedure InsertVaccine(Id: Integer; Name: Text[120]; Quantity: Integer)
    begin
        VaccineRecord.Id := id;
        VaccineRecord.Name := Name;
        VaccineRecord.Quantity := Quantity;
        VaccineRecord.Insert();

    end;

    local procedure InsertHospital(Id: Integer; name: Text[120])
    begin
        HospitalRecord.Id := Id;
        HospitalRecord.Name := name;
        HospitalRecord.Insert();
    end;

}