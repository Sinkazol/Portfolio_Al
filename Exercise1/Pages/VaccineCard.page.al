page 50050 VaccineCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Vaccine;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            group(Information)
            {
                field(Id; rec.Id)
                {
                    ApplicationArea = All;

                }
                field(Name; rec.Name)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}