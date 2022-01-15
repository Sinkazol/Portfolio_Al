codeunit 50200 countPrice
{
    trigger OnRun()
    begin

        Categorynumber;
        Bookborrow.Price := Book.BasePrice * number;

    end;

    var
        book: Record Book;
        Bookborrow: Record BorrowBook;
        Member: Record LibraryMember;
        number: Decimal;

    local procedure Categorynumber()

    begin
        if Member.Category = 0 then begin
            number := 2;
        end else
            if Member.Category = 1 then begin
                number := 1.75
            end else
                if Member.Category = 2 then begin
                    number := 1.5
                end else begin
                    number := 1.25
                end;

    end;
}