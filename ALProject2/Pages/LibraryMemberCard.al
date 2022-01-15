page 50204 LibraryMemberCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = LibraryMember;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; rec.Name)
                {
                    ApplicationArea = All;

                }
                field(Category; rec.Category)
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