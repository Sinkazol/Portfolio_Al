page 50207 BorrowBookList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = BorrowBook;

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
            action(MostBorrowBook)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    MostBorrowBook: Query MostBorrowBook;
                begin
                    if MostBorrowBook.Open() then begin
                        while MostBorrowBook.Read() do
                            Message('The most borrowed book is: %1', MostBorrowBook.BookTitle);
                        MostBorrowBook.Close();
                    end;

                end;
            }
        }
    }

    var
        myInt: Integer;
}