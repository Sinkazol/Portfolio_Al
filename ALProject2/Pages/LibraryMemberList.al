page 50205 LibraryMemberList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = LibraryMember;

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
                field(Name; rec.Name)
                {
                    ApplicationArea = All;

                }
                field(Category; Rec.Category)
                {
                    ApplicationArea = All;

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}