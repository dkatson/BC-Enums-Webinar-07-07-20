table 50100 "Fishing Entry"
{
    fields
    {
        field(1; "Entry No."; integer)
        {
            AutoIncrement = true;
        }
        field(2; Fish; Enum "Ocean Fish")
        {

        }
        field(3; Weight; Decimal)
        {

        }
    }
    keys
    {
        key(EntryNo; "Entry No.") { }
    }


    procedure GetFishChoiceFromConfirmationDialog()
    var
        FishChoice: Page "Lake Fish Choice Enums";
    begin
        if FishChoice.RunModal() = Action::Yes then
            Fish := "Ocean Fish".FromInteger(FishChoice.ReturnEnteredChoice());
    end;

}