codeunit 50201 Dataseed
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        if AuthorRec.IsEmpty then begin
            InsertAuthor(1, 'Stephen King');
            InsertAuthor(2, 'Dean R. Kooncz');
            InsertAuthor(3, 'Jozef Attila');
            InsertAuthor(4, 'Scott Perry');
        end;
        if BookRec.IsEmpty then begin
            InsertBook(1, 'Thing', 1, 3, 100);
            InsertBook(2, 'Alien on Erth', 4, 4, 100);
            InsertBook(3, 'Sicret Door', 2, 2, 100);
        end;
        if MemberRec.IsEmpty then begin
            InsertMember(1, 'Laci', 0);
            InsertMember(2, 'Peti', 1);
            InsertMember(3, 'Doora', 2);
        end;

    end;

    var
        AuthorRec: Record Author;
        BookRec: Record Book;
        MemberRec: Record LibraryMember;


    local procedure InsertAuthor(id: Integer; name: Text)

    begin
        AuthorRec.Id := id;
        AuthorRec.Name := name;
        AuthorRec.Insert(true);
    end;

    local procedure InsertBook(id: Integer; Title: Text; Quantity: Integer; AuthorId: Integer; BasePrice: Integer)

    begin
        BookRec.Id := id;
        BookRec.Title := Title;
        BookRec.Quantity := Quantity;
        BookRec.AuthorId := AuthorId;
        BookRec.BasePrice := BasePrice;
        BookRec.Insert(true);

    end;

    local procedure InsertMember(id: Integer; name: Text; Category: Enum Category)

    begin
        MemberRec.Id := id;
        MemberRec.Name := name;
        MemberRec.Category := Category;
        MemberRec.Insert(true);
    end;
}