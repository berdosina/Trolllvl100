unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, {FileCtrl,} StdCtrls, FileCtrl;

type
  Tfrm1 = class(TForm)
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    FilterComboBox1: TFilterComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm1: Tfrm1;
  c,c1,x,x1,c2,x2,Papka,Papka1: string;
  p,o  :TFileStream;
  i : integer;
  

implementation

{$R *.dfm}

procedure Tfrm1.Button1Click(Sender: TObject);
begin
c := FileListBox1.FileName;
x := c;

showmessage(x);



end;

procedure Tfrm1.Button2Click(Sender: TObject);
begin
c1 := DirectoryListBox1.Directory;
x1 := c1 + '\' + extractfilename (x);

showmessage(x1);

end;

procedure Tfrm1.DirectoryListBox1Change(Sender: TObject);
begin
c1 := DirectoryListBox1.Directory;
end;

procedure Tfrm1.Button3Click(Sender: TObject);



begin

copyfile(pchar(x),pchar(x1), true);

end;

procedure Tfrm1.Button4Click(Sender: TObject);
begin
createdir ('новая папка');
end;

procedure Tfrm1.Button5Click(Sender: TObject);
begin
  p := TFileStream.create(pchar(x),fmopenread);
  o := TFileStream.create(pchar(x2),fmopenwrite or fmcreate);
 o.copyfrom(p, p.size);
 p.Free;
 o.Free;
end;

procedure Tfrm1.Button6Click(Sender: TObject);
begin
c2 := FileListBox1.FileName;
x2 := c2;

showmessage(x2);
end;

procedure Tfrm1.Button7Click(Sender: TObject);
begin
p := TFileStream.create(pchar(x),fmopenread);
o := TFileStream.create(pchar(x2),fmopenwrite or fmcreate);
for i := 1 to (p.size-3)   do
 o.copyfrom(p, 1);
 p.Free;
 o.Free;

end;

procedure Tfrm1.Button8Click(Sender: TObject);
begin
Papka := DirectoryListBox1.Directory;
Papka1 := Papka + '\' + extractdirectory (Papka);;
showmessage(Papka1);

end;

procedure Tfrm1.Button9Click(Sender: TObject);
begin
 if RemoveDir(Pchar(Papka1))
  then ShowMessage('TestDir Yes')
  else ShowMessage('TestDir No');
end;

end.
