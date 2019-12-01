unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, math, Vcl.Menus;

type
  TForm1 = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    StringGrid1: TStringGrid;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  m,n,i,j:integer;
  a: array [0..30,0..30] of integer;
  b:array [0..30] of integer;
  f:textfile;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
max,min,j1,i1,c,p:integer;
i,j,k,t:byte;
  d: Integer;
begin
if checkbox1.checked then
begin
max:=a[0,0];
for j:=0 to n-1 do
      begin
        for i:=0 to m-1 do
          if abs(a[i,j])>max then
            begin
              max:=abs(a[i,j]);
            end
          else continue;
      end;
for j:=0 to n-1 do
      begin
        for i:=0 to m-1 do
          if (abs(a[i,j]) mod 2)=0 then
            begin
              a[i,j]:=max;
            end
          else continue;
      end;
with stringgrid1 do
    begin
      i:=0;
      for j := 1 to rowcount do
        cells[i,j]:=inttostr(j);
      j:=0;
      for i := 1 to colcount do
        cells[i,j]:=inttostr(i)
    end;
  with stringgrid1 do
  for i := 1 to m+1 do
    for j := 1 to n+1 do
      cells[j,i]:=inttostr(a[i-1,j-1]);
showmessage('Comlpite');
end;

if checkbox2.checked then
begin
min:=a[0,0];
for j:=0 to n-1 do
      begin
        for i:=0 to m-1 do
          if a[i,j]<min then
            begin
              min:=a[i,j];
            end
          else continue;
      end;
for j := 0 to n-1 do
  begin
    for i := 0 to m-1 do
      if a[i,j]=min then
  end;
for d := 0 to m-1 do
  b[d]:=a[d,1];
for j1 := 0 to n do   // Столбцы
    begin
    if c=1 then
      begin
        c:=0;
        continue;
      end
    else
    begin
    for i1 := 0 to m-1 do  // строки
      begin
      if a[i1,j1]=min then       //1 раз работает
        begin
          c:=1;
          n:=n+1;
          for i:=0 to m-1 do
            for k:=n downto j1+1 do//сдвигаем столбцы на 1 вправо начиная со следующего
            begin
              a[i,k]:=a[i,k-1];
            end;
          for i:=0 to m-1 do
            a[i,j1+1]:=b[i]; //на освободившееся место пишем нули
          StringGrid1.ColCount := n+1;
        break;
        end
      else c:=0;
      end;
    end;
    end;
with stringgrid1 do
    begin
      i:=0;
      for j := 1 to rowcount do
        cells[i,j]:=inttostr(j);
      j:=0;
      for i := 1 to colcount do
        cells[i,j]:=inttostr(i)
    end;
  with stringgrid1 do
  for i := 1 to m+1 do
    for j := 1 to n+1 do
      cells[j,i]:=inttostr(a[i-1,j-1]);
showmessage('Comlpite');
end;

if checkbox3.checked then
begin
for k:=m downto 0 do
  if a[k,1]>a[k,n-2] then
  begin
    if k=m then m:=m-1
    else
    begin
      for i := k to m-1 do
        for j1 := 0 to n-1 do
          a[i,j1]:=a[i+1,j1];
      m:=m-1;
      StringGrid1.RowCount := m+1;
    end;
  end;
with stringgrid1 do
    begin
      i:=0;
      for j := 1 to rowcount do
        cells[i,j]:=inttostr(j);
      j:=0;
      for i := 1 to colcount do
        cells[i,j]:=inttostr(i)
    end;
  with stringgrid1 do
  for i := 1 to m+1 do
    for j := 1 to n+1 do
      cells[j,i]:=inttostr(a[i-1,j-1]);
showmessage('Comlpite');
end;

if checkbox4.Checked then
begin
p:=ceil(n/2);
for i:=0 to n-1 do
    Begin
      c:=a[i,0];
      a[i,0]:=a[i,p-1];
      a[i,p-1]:=c;
    End;
with stringgrid1 do
    begin
      i:=0;
      for j := 1 to rowcount do
        cells[i,j]:=inttostr(j);
      j:=0;
      for i := 1 to colcount do
        cells[i,j]:=inttostr(i)
    end;
  with stringgrid1 do
  for i := 1 to m+1 do
    for j := 1 to n+1 do
      cells[j,i]:=inttostr(a[i-1,j-1]);
showmessage('Comlpite');
end;
end;



procedure TForm1.N2Click(Sender: TObject);
begin
if opendialog1.execute then
begin
  AssignFile(f,OpenDialog1.FileName);
  reset(f);
  read(f,m,n);
  for i:=1 to m do
    for j:=1 to n do           //m-Строки n столбцы
      read(f,a[i-1,j-1]);
  closefile(f);
  StringGrid1.RowCount := m+1;
  StringGrid1.ColCount := n+1;
  with stringgrid1 do
    begin
      i:=0;
      for j := 1 to rowcount do
        cells[i,j]:=inttostr(j);
      j:=0;
      for i := 1 to colcount do
        cells[i,j]:=inttostr(i)
    end;
  with stringgrid1 do
  for i := 1 to m+1 do
    for j := 1 to n+1 do
      cells[j,i]:=inttostr(a[i-1,j-1]);
end;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
if savedialog1.execute then
begin
AssignFile(f,SaveDialog1.FileName);
Rewrite(f);
writeln(f,m,' ',n);
for i:=1 to m do
  for j:=1 to n do          //m-Строки n столбцы
    if (j=n) then
      writeln(f,inttostr(a[i-1,j-1]) + ' ')
    else
    write(f,inttostr(a[i-1,j-1]) + ' ');
closefile(f);
end;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
     close;
end;

end.
