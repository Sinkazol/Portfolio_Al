page 50055 HospitalVaccinaList
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = HospitalVaccine;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Id; rec.Id)
                {
                    ApplicationArea = All;

                }
                field(VaccineId; rec.VaccineId)
                {
                    ApplicationArea = All;

                }
                field(VaccineName; rec.VaccineName)
                {
                    ApplicationArea = All;

                }
                field(HospitalId; rec.HospitalId)
                {
                    ApplicationArea = All;

                }
                field(HospitalName; rec.HospitalName)
                {
                    ApplicationArea = All;

                }
                field(Quantity; rec.Quantity)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(MostStockVaccine)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    mostStockQuery: Query MostStockVaccine;
                begin
                    if mostStockQuery.Open() then begin
                        while mostStockQuery.Read() do begin
                            Message('The most stock Vaccine is : %1', mostStockQuery.VaccineName);
                        end;
                        mostStockQuery.Close();
                    end;
                end;
            }
            action(MostPopular)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    MostPopular: Query MostPopularVaccein;
                begin
                    if MostPopular.Open() then begin
                        while MostPopular.Read() do begin
                            Message('The most Populap Vaccine is: %1', MostPopular.Name);
                        end;
                        MostPopular.Close();
                    end;
                end;
            }
        }
    }

    var
        myInt: Integer;
}