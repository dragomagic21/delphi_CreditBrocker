unit uData;

interface

uses
  SysUtils, Classes, IBSQL, Forms, IBDatabase, DB, IniFiles, StdCtrls, OleServer,
  Word2000, Math, Dialogs;

type
  TfData = class(TDataModule)
    Database: TIBDatabase;
    Transaction: TIBTransaction;
    SQL: TIBSQL;
    WordA: TWordApplication;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { ÙÛÌÍˆËË Ó·˘Â„Ó Ì‡ÁÌ‡˜ÂÌËˇ }
    function CustomSelS(Table, What, Where: string; Order: string=''): string;
    function CustomSelI(Table, What, Where: string; Order: string=''): integer;
    function CustomAdd(Table, Records, Values: string): byte;
    function CustomDel(Table, Where: string): byte;
    function CustomUpd(Table: string; Records, Values: TStringList; where: string): byte;
    function GetCount(Table, What: string; Where: string=''): integer;
    function GetMaxID(Table: string): integer;
    { ÙÛÌÍˆËË ÒÔÂˆË‡Î¸ÌÓ„Ó Ì‡ÁÌ‡˜ÂÌËˇ }
    function FillListBox(ListBox: TListBox; Table: string; Where: string =''): byte;
    function FillLB_users(ListBox: TListBox; Table: string; Where: string =''; Order: string =''): byte;
    function FillLB_zapros(ListBox: TListBox; zapros, bank: string): byte;
    { »ÃœŒ–“ / › —œŒ–“ }
    function fExport(FilePath: String; Table: string; ID: integer): byte;
    function SelectAllV(Table, Where: string; Count: integer): string;
    function SelectAllR(Table, Where: string; Count: integer): string;
    function fImport(FilePath: string): byte;
    function cScript(s: string): byte;
  end;

var
  fData: TfData;

implementation

uses Controls, uMain;

{$R *.dfm}

function TfData.CustomAdd(Table, Records, Values: string): byte;
begin
 try
  Transaction.Active:=False;
  SQL.Close;
  SQL.SQL.Clear;
  SQL.SQL.Add('Insert into '+Trim(Table)+' ('+Trim(Records)+') values ('+Trim(Values)+');');
  Transaction.Active:=True;
  SQL.ExecQuery;
  Transaction.Commit;
  Transaction.Active:=False;
  Result:=0;
 except
  Transaction.Rollback;
  Transaction.Active := FALSE;
  Result:=1;
 end;
end;

function TfData.CustomDel(Table, Where: string): byte;
begin
 try
  Transaction.Active:=False;
  SQL.Close;
  SQL.SQL.Clear;
  SQL.SQL.Add('Delete from '+Table+' where '+Where+';');
  Transaction.Active:=True;
  SQL.ExecQuery;
  Transaction.Commit;
  Transaction.Active:=False;
  Result:=0;
 except
  Transaction.Rollback;
  Transaction.Active := FALSE;
  Result:=1;
 end;
end;

function TfData.CustomSelS(Table, What, Where, Order: string): string;
begin
 try
  Transaction.Active:=False;
  SQL.Close;
  SQL.SQL.Clear;
  SQL.SQL.Add('Select '+What+' from '+Table+' '+Where+' '+Order+';');
  Transaction.Active:=True;
  SQL.ExecQuery;
  Result:=SQL.FieldByName(What).AsString;
  Transaction.Active:=False;
 except
  Transaction.Rollback;
  Transaction.Active := FALSE;
  Result:='1';
 end;
end;

function TfData.CustomSelI(Table, What, Where, Order: string): integer;
begin
 try
  Transaction.Active:=False;
  SQL.Close;
  SQL.SQL.Clear;
  SQL.SQL.Add('Select '+What+' from '+Table+' '+Where+' '+Order+';');
  Transaction.Active:=True;
  SQL.ExecQuery;
  Transaction.Active:=False;
  Result:=StrToInt(SQL.FieldByName(What).AsString);
 except
  Transaction.Rollback;
  Transaction.Active := FALSE;
  Result:=-1;
 end;
end;

function TfData.CustomUpd(Table: string; Records, Values: TStringList; where: string): byte;
var str: string;
    i: integer;
begin
 try
  Transaction.Active:=False;
  SQL.Close;
  SQL.SQL.Clear;
  str:='';
  for i:=0 to Values.Count-1 do
   str:=str+Records[i]+'='+Values[i]+',';
  delete(str,Length(str),1);
  SQL.SQL.Add('Update '+Trim(Table)+' SET '+str+' where '+where+';');
  Transaction.Active:=True;
  SQL.ExecQuery;
  Transaction.Commit;
  Transaction.Active:=False;
  Result:=0;
 except
  Transaction.Rollback;
  Transaction.Active := FALSE;
  Result:=1;
 end;
end;

procedure TfData.DataModuleCreate(Sender: TObject);
var f: TIniFile;
begin
 f := TIniFile.Create(ExtractFileDir(Application.ExeName)+'\config.ini');
 Database.Params.Clear;
 Database.DatabaseName:=f.ReadString('DataBase','Path',ExtractFileDir(Application.ExeName)+'\Base\BASE.FDB');
 Database.Params.Add('user_name='+f.ReadString('DataBase','user_name','SYSDBA'));
 Database.Params.Add('password='+f.ReadString('DataBase','password','masterkey'));
 Database.Params.Add('lc_ctype='+f.ReadString('DataBase','lc_ctype','WIN1251'));
 f.Free;
 try
  Database.Open;
 except
  Application.MessageBox('Œ¯Ë·Í‡ ÔË ÓÚÍ˚ÚËË ¡ƒ. œÓ‚ÂÚÂ Ô‡‚ËÎ¸ÌÓÒÚ¸ ÔÛÚË ‚ Ù‡ÈÎÂ ÍÓÌÙË„Û‡ˆËË.','Œ¯Ë·Í‡!');
  Application.Terminate;
 end;
end;

procedure TfData.DataModuleDestroy(Sender: TObject);
begin
 Database.Close;
end;

function TfData.FillListBox(ListBox: TListBox; Table: string; Where: string =''): byte;
begin
 try
  ListBox.Clear;
  Transaction.Active:=False;
  SQL.Close;
  SQL.SQL.Clear;
  SQL.SQL.Add('select '+Trim(Table)+'.ID, '+Trim(Table)+'.NAME from '+Trim(Table)+' '+Where+' order by NAME;');
  Transaction.Active:=True;
  SQL.ExecQuery;
   while not(SQL.Eof) do
    begin
     ListBox.Items.AddObject(SQL.FieldByName('NAME').AsString,Pointer(SQL.FieldByName('ID').AsInteger));
     SQL.Next;
    end;
  Transaction.Active:=False;
  ListBox.Enabled:=True;
  Result:=0;
  
  if ListBox.Items.Count=0 then
   begin
    ListBox.Items.Add('ÕÂÚ ‰‡ÌÌ˚ı!');
    ListBox.Enabled := FALSE;
    Result := 2;
   end else
  ListBox.ItemIndex:=0;
 except
  Transaction.Active:=False;
  Transaction.Rollback;
  ListBox.Enabled:=False;
  Result:=1;
 end;
end;

function TfData.GetCount(Table, What, Where: string): integer;
begin
 try
  SQL.Close;
  SQL.SQL.Clear;
  Transaction.Active := FALSE;
  SQL.SQL.Add('select count ('+What+') AS '+What+' from '+Table+' '+Where);
  Transaction.Active := TRUE;
  SQL.ExecQuery;
  Result := SQL.FieldByName(What).AsInteger;
  Transaction.Active := FALSE;
 except
  Result := -1;
  Transaction.Rollback;
  Transaction.Active := FALSE;
 end;
end;

function TfData.GetMaxID(Table: string): integer;
begin
 try
  SQL.Close;
  SQL.SQL.Clear;
  Transaction.Active := FALSE;
  SQL.SQL.Add('select max(ID) as MID from '+Table);
  Transaction.Active := TRUE;
  SQL.ExecQuery;
  Result := SQL.FieldByName('MID').AsInteger;
  Transaction.Active := FALSE;
 except
  Result := -1;
  Transaction.Rollback;
  Transaction.Active := FALSE;
 end;
end;

function TfData.FillLB_zapros(ListBox: TListBox; zapros, bank: string): byte;
begin
 try
  ListBox.Clear;
  Transaction.Active:=False;
  SQL.Close;
  SQL.SQL.Clear;
  SQL.SQL.Add(zapros);
  Transaction.Active:=True;
  SQL.ExecQuery;
   while not(SQL.Eof) do
    begin
     ListBox.Items.AddObject(SQL.FieldByName('NAME').AsString,Pointer(SQL.FieldByName('ID').AsInteger));
     SQL.Next;
    end;
  Transaction.Active:=False;
  ListBox.Enabled:=True;
  Result:=0;
  
  if ListBox.Items.Count=0 then
   begin
    ListBox.Items.Add('ÕÂÚ ‰‡ÌÌ˚ı!');
    ListBox.Enabled := FALSE;
    Result := 2;
   end else
  ListBox.ItemIndex:=0;
 except
  Transaction.Active:=False;
  Transaction.Rollback;
  ListBox.Enabled:=False;
  Result:=1;
 end;
end;

function TfData.FillLB_users(ListBox: TListBox; Table, Where, Order: string): byte;
var s: string;
begin
 try
  ListBox.Clear;
  Transaction.Active:=False;
  SQL.Close;
  SQL.SQL.Clear;
  SQL.SQL.Add('select '+Trim(Table)+'.ID, '+Trim(Table)+'.FAM, '+Trim(Table)+'.NAME, '+Trim(Table)+'.SNAME, '+Trim(Table)+'.DENTER, '+Trim(Table)+'.STATUS  from '+Trim(Table)+' '+Where+' order by '+Order+';');
  Transaction.Active:=True;
  SQL.ExecQuery;
   while not(SQL.Eof) do
    begin
     s:=DateToStr(SQL.FieldByName('DENTER').AsDateTime)+' '+SQL.FieldByName('FAM').AsString+' '+SQL.FieldByName('NAME').AsString[1]+'.'+SQL.FieldByName('SNAME').AsString[1]+'. '+SQL.FieldByName('STATUS').AsString;
     ListBox.Items.AddObject(s,Pointer(SQL.FieldByName('ID').AsInteger));
     SQL.Next;
    end;
  Transaction.Active:=False;
  ListBox.Enabled:=True;
  Result:=0;
  
  if ListBox.Items.Count=0 then
   begin
    ListBox.Items.Add('ÕÂÚ ‰‡ÌÌ˚ı!');
    ListBox.Enabled := FALSE;
    Result := 2;
   end else
  ListBox.ItemIndex:=0;
 except
  Transaction.Active:=False;
  Transaction.Rollback;
  ListBox.Enabled:=False;
  Result:=1;
 end;
end;

function TfData.fExport(FilePath, Table: string; ID: integer): byte;
var Memo: TMemo; recs, vals, TB: string; tID, count, i: integer;
    autos: array of integer;
begin
 try
  Memo := TMemo.CreateParented(fMain.Handle);
  Memo.Clear;
  Memo.WordWrap := FALSE;
  case Table[4] of
   'B': begin
         TB := Table;
         case Table[8] of
          'A': count := 112;
          'B': count := 62;
          'E': count := 66;
          'N': count := 56;
          'Z': count := 69;
         end;
        end;
   'U': begin
         TB := 'TB_USER';
         count := 89;
        end;
  end;
  recs := SelectAllR(TB,'ID='+IntToStr(ID),count);
  vals := SelectAllV(TB,'ID='+IntToStr(ID),count);
  if ((recs = '0')or(vals = '0')) then
  begin
   Result := 1;
   Exit;
  end;
  Memo.Lines.Add('0Insert into '+Trim(TB)+' ('+recs+') values ('+vals+')');
  case Table[4] of
   'B': if UpperCase(Table)='TB_BANKAUTO' then
        begin
         { ‘Œ–Ã»–”≈Ã œ≈–≈◊≈Õ‹ ¿¬“Œ,  Œ“Œ–€≈ —¬ﬂ«¿Õ€ — ¡¿Õ ŒÃ }
         SetLength(autos,0);
         SQL.SQL.Clear;
         SQL.Close;
         Transaction.Active := FALSE;
         SQL.SQL.Add('select ID from TB_AUTO where BANK='+IntToStr(ID));
         Transaction.Active := TRUE;
         SQL.ExecQuery;
         while not(SQL.Eof) do
         begin
          SetLength(autos,Length(autos)+1);
          autos[Length(autos)-1] := SQL.FieldByName('ID').AsInteger;
          SQL.Next;
         end;
         Transaction.Active := FALSE;
         { ƒÀﬂ  ¿∆ƒŒ√Œ ¿¬“Œ «¿√ŒÕﬂ≈Ã INSERT-—“–Œ ” }
         count := 27;
         for i := 0 to Length(autos)-1 do
         begin
          recs := SelectAllR('TB_AUTO','ID='+IntToStr(autos[i]),count);
          vals := SelectAllV('TB_AUTO','ID='+IntToStr(autos[i]),count);
          Memo.Lines.Add('1Insert into TB_AUTO ('+recs+') values ('+vals+')');
         end;
        end;
   'U': begin
         { œ–Œ¬≈–ﬂ≈Ã ≈—“‹ À» œŒ–”◊»“≈À‹ » ƒŒ¡¿¬Àﬂ≈Ã ƒ¿ÕÕ€≈ }
         if GetCount('TB_UHUM','ID','where ((USR='+IntToStr(ID)+')and(SFAMILY=0))')>0 then
         begin
          count := 45;
          recs := SelectAllR('TB_UHUM','((USR='+IntToStr(ID)+')and(SFAMILY=0))',count);
          vals := SelectAllV('TB_UHUM','((USR='+IntToStr(ID)+')and(SFAMILY=0))',count);
          Memo.Lines.Add('1Insert into TB_UHUM ('+recs+') values ('+vals+')');
         end;
         { œ–Œ¬≈–ﬂ≈Ã ≈—“‹ À» —”œ–”√(¿) » ƒŒ¡¿¬Àﬂ≈Ã ƒ¿ÕÕ€≈ }
         if GetCount('TB_UHUM','ID','where ((USR='+IntToStr(ID)+')and(SFAMILY=1))')>0 then
         begin
          count := 45;
          recs := SelectAllR('TB_UHUM','((USR='+IntToStr(ID)+')and(SFAMILY=1))',count);
          vals := SelectAllV('TB_UHUM','((USR='+IntToStr(ID)+')and(SFAMILY=1))',count);
          Memo.Lines.Add('1Insert into TB_UHUM ('+recs+') values ('+vals+')');
         end;
         { œ–Œ¬≈–ﬂ≈Ã ≈—“‹ À» –¿¡Œ“¿ » ƒŒ¡¿¬Àﬂ≈Ã ƒ¿ÕÕ€≈ }
         if GetCount('TB_UWORK','ID','where USR='+IntToStr(ID))>0 then
         begin
          count := 30;
          recs := SelectAllR('TB_UWORK','USR='+IntToStr(ID),count);
          vals := SelectAllV('TB_UWORK','USR='+IntToStr(ID),count);
          Memo.Lines.Add('1Insert into TB_UWORK ('+recs+') values ('+vals+')');
         end;
         { ¬€¡»–¿≈Ã “»œ œŒÀ‹«Œ¬¿“≈Àﬂ » ƒŒ¡¿¬Àﬂ≈Ã ƒ¿ÕÕ€≈ }
         case Table[5] of
          'A': begin TB := 'TB_UAUTO';  count := 16; end;
          'B': begin TB := 'TB_UBUILD'; count := 14; end;
          'E': begin TB := 'TB_UEARTH'; count := 12; end;
          'N': begin TB := 'TB_UNON';   count := 6;  end;
          'Z': begin TB := 'TB_UZALOG'; count := 12; end;
         end;
         recs := SelectAllR(UpperCase(TB),'USR='+IntToStr(ID),count);
         vals := SelectAllV(UpperCase(TB),'USR='+IntToStr(ID),count);
         Memo.Lines.Add('1Insert into '+UpperCase(TB)+' ('+recs+') values ('+vals+')');
        end;
  end;
  Memo.Lines.SaveToFile(FilePath);
  Memo.Free;
  Result := 0;
 except
  Transaction.Active := FALSE;
  Result := 1;
 end;
end;

function TfData.SelectAllV(Table, Where: string; Count: integer): string;
var i: integer;
begin
{ “¿Ã, √ƒ≈ Õ¿ƒŒ ¬—“¿¬»“‹ ÕŒ¬€… ID ¬—“¿¬Àﬂ≈Ã ÌÓÎ¸ID = 0ID }
 try
  i := 0; Result:= '';
  SQL.SQL.Clear;
  SQL.Close;
  Transaction.Active := FALSE;
  SQL.SQL.Add('Select * from '+Trim(Table)+' where '+Trim(Where));
  Transaction.Active := TRUE;
  SQL.ExecQuery;
  for i:=0 to Count-1 do
   if SQL.Fields[i].Name <> 'ID' then
    if ((UpperCase(SQL.Fields[i].Name) = 'BANK')or(UpperCase(SQL.Fields[i].Name) = 'USR')) then
     Result := Result+'0ID'+',' else
      if (SQL.Fields[i].Size = 4) then
       Result := Result+SQL.Fields[i].AsString+',' else
        Result := Result+''''+SQL.Fields[i].AsString+''''+',';
   Delete(Result,Length(Result),1);
  Transaction.Active := FALSE;
//  ShowMessage('SIZE:'+#10#13+'INTEGER = '+IntToStr(SQL.Fields[0].Size)+#10#13+'CHAR1 = '+IntToStr(SQL.Fields[1].Size)+#10#13+'VARCHAR100 = '+IntToStr(SQL.Fields[3].Size)+#10#13+'VARCHAR2 = '+IntToStr(SQL.Fields[10].Size)+#10#13+'DATA = '+IntToStr(SQL.Fields[6].Size)+#10#13+'BLOB = '+IntToStr(SQL.Fields[20].Size)+#10#13+'VARCHAR15 = '+IntToStr(SQL.Fields[65].Size));
 except
  Transaction.Active := FALSE;
  Result :='0';
 end;
end;

function TfData.SelectAllR(Table, Where: string; Count: integer): string;
var i: integer;
begin
 try
  i := 0; Result:= '';
  SQL.SQL.Clear;
  SQL.Close;
  Transaction.Active := FALSE;
  SQL.SQL.Add('Select * from '+Trim(Table)+' where '+Trim(Where));
  Transaction.Active := TRUE;
  SQL.ExecQuery;
  for i:=0 to Count-1 do
   if UpperCase(SQL.Fields[i].Name) <> 'ID' then
   Result := Result+SQL.Fields[i].Name+',';
  Delete(Result,Length(Result),1);
  Transaction.Active := FALSE;
 except
  Transaction.Active := FALSE;
  Result := '0';
 end;
end;

function TfData.fImport(FilePath: string): byte;
var NID: integer; Memo: TMemo; i: integer; TB,tmp: string;
    str, line: String;
begin
 try
  Memo := TMemo.CreateParented(fMain.Handle);
  Memo.Clear;
  Memo.WordWrap := FALSE;
  Memo.Lines.LoadFromFile(FilePath);
  str := Memo.Text;
  while Length(str)>0 do
  begin
   i := pos('1Insert',str);
   if (i = 0) then line := str else line := Copy(str,1,i-1);
   if (i = 0) then str := '' else delete(str,1,i);
   case line[1] of
    '0': begin
          TB := Copy(line,14,20);
          Delete(TB,pos(' ',TB),Length(TB));
          cScript(Copy(line,2,Length(line)));
          NID := GetMaxID(TB);
         end;
    'I': begin
          tmp := Copy(line,1,pos('0ID',line));
          tmp := tmp+IntToStr(NID);
          tmp := tmp+Copy(line,pos('0ID',line)+3,Length(line));
          cScript(tmp);
         end;
   end;
  end;
  Memo.Free;
  Result := 0;
 except
  Result := 1;
 end;
end;

function TfData.cScript(s: string): byte;
begin
 try
  SQL.SQL.Clear;
  SQL.Close;
  Transaction.Active := FALSE;
  SQL.SQL.Add(s);
  Transaction.Active := TRUE;
  SQL.ExecQuery;
  Transaction.Commit;
  Transaction.Active := FALSE;
  Result := 0;
 except
  Transaction.Active := FALSE;
  Result := 1;
 end;
end;

end.
