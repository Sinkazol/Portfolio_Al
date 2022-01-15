page 50206 BorrowBookCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = BorrowBook;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(MemberId; rec.MemberId)
                {
                    ApplicationArea = All;

                }
                field(BookId; rec.BookId)
                {
                    ApplicationArea = All;

                }
                field(Price; rec.Price)
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