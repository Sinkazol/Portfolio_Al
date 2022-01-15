page 50058 test
{
    PageType = list;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Hospital;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; rec.Id)
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
    trigger OnOpenPage()
    var
        MyQuery: Query MyQuery;
    begin
        if MyQuery.Open() then begin
            while MyQuery.Read() do begin
            
            end;
            MyQuery.Close();
        end;
    end;
}