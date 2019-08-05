unit KonveerSlovar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ActnList;

type
  TForm1 = class(TForm)
    KonveerGreek: TComboBox;
    KonveerRussian: TComboBox;
    KonveerKod: TComboBox;
    KonveerData: TComboBox;
    KonveerText: TComboBox;
    KonveerSelStart: TComboBox;
    KonveerSelLength: TComboBox;
    SlovarKod: TComboBox;
    SlovarGreek: TComboBox;
    SlovarRussian: TComboBox;
    SlovarData: TComboBox;
    SlovarText: TComboBox;
    SlovarSelLength: TComboBox;
    SlovarSelstart: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Edit2: TEdit;
    Button15: TButton;
    ActionList1: TActionList;
    Edit3: TEdit;
    Action1: TAction;
    Edit4: TEdit;
    SlovarTrans: TComboBox;
    Button16: TButton;
    btnLOAD: TButton;
    btnSave: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure KonveerGreekSelect(Sender: TObject);
    procedure SlovarGreekSelect(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure btnLOADClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
a,i:integer;
memo:string;
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
KOnveerGreek.Items.LoadFromFile(Edit1.Text+Button1.Caption);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
KOnveerRussian.Items.LoadFromFile(Edit1.Text+Button2.Caption);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
KOnveerKod.Items.LoadFromFile(Edit1.Text+Button3.Caption);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
KOnveerData.Items.LoadFromFile(Edit1.Text+Button4.Caption);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
KOnveerText.Items.LoadFromFile(Edit1.Text+Button5.Caption);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
KOnveerSelStart.Items.LoadFromFile(Edit1.Text+Button6.Caption);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
KOnveerSelLength.Items.LoadFromFile(Edit1.Text+Button7.Caption);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
SlovarGreek.Items.SaveToFile(Edit1.Text+Button8.Caption);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
SlovarRussian.Items.SaveToFile(Edit1.Text+Button9.Caption);
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
SlovarKod.Items.SaveToFile(Edit1.Text+Button10.Caption);
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
SlovarData.Items.SaveToFile(Edit1.Text+Button11.Caption);
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
SlovarText.Items.SaveToFile(Edit1.Text+Button12.Caption);
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
SlovarSelStart.Items.SaveToFile(Edit1.Text+Button13.Caption);
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
SlovarSelLength.Items.SaveToFile(Edit1.Text+Button14.Caption);
end;

procedure TForm1.KonveerGreekSelect(Sender: TObject);
begin
KonveerRussian.ItemIndex:=KonveerGreek.ItemIndex;
KonveerKod.ItemIndex:=KonveerGreek.ItemIndex;
KonveerData.ItemIndex:=KonveerGreek.ItemIndex;
KonveerText.ItemIndex:=KonveerGreek.ItemIndex;
KonveerSelStart.ItemIndex:=KonveerGreek.ItemIndex;
KonveerSelLength.ItemIndex:=KonveerGreek.ItemIndex;
end;

procedure TForm1.SlovarGreekSelect(Sender: TObject);
begin
SlovarGreek.ItemIndex:=Slovargreek.ItemIndex;
SlovarRussian.ItemIndex:=Slovargreek.ItemIndex;
SlovarKod.ItemIndex:=Slovargreek.ItemIndex;
SlovarData.ItemIndex:=Slovargreek.ItemIndex;
SlovarText.ItemIndex:=Slovargreek.ItemIndex;
SlovarSelStart.ItemIndex:=Slovargreek.ItemIndex;
SlovarSelLength.ItemIndex:=Slovargreek.ItemIndex;
SlovarTrans.ItemIndex:=Slovargreek.ItemIndex;
end;

procedure TForm1.Button15Click(Sender: TObject);
label 10;
begin
a:=0;
i:=0;
KonveerGreek.ItemIndex:=0;
KonveerRussian.ItemIndex:=0;
KonveerKOd.ItemIndex:=0;
KonveerData.ItemIndex:=0;
KonveerText.ItemIndex:=0;
KonveerSelStart.ItemIndex:=0;
KonveerSelLength.ItemIndex:=0;
Edit2.Text:=KonveerGreek.Text;
10:
memo:=KonveerGreek.Text;
Edit2.SelStart:=a;
Edit2.SelLength:=1;

  if Edit2.SelText='¸' then Edit2.SelText:='Å';
  if Edit2.SelText='Ý' then Edit2.SelText:='å';
  if Edit2.SelText='¾' then Edit2.SelText:='Õ';
  if Edit2.SelText='ý' then Edit2.SelText:='õ';
  if Edit2.SelText='º' then Edit2.SelText:='É';
  if Edit2.SelText='ß' then Edit2.SelText:='é';
  if Edit2.SelText='¼' then Edit2.SelText:='Ï';
  if Edit2.SelText='ü' then Edit2.SelText:='ï';

  if Edit2.SelText='¢' then Edit2.SelText:='Á';
  if Edit2.SelText='Ü' then Edit2.SelText:='á';
  if Edit2.SelText='¹' then Edit2.SelText:='Ç';
  if Edit2.SelText='Þ' then Edit2.SelText:='ç';

  if Edit2.SelText='¿' then Edit2.SelText:='Ù';
  if Edit2.SelText='þ' then Edit2.SelText:='ù';


a:=a+1;
if a=Edit2.GetTextLen then Action1.Execute;
if i=KonveerGreek.Items.Count then exit;
goto 10;

end;

procedure TForm1.Action1Execute(Sender: TObject);


begin


 SlovarGreek.Items.Add(Edit2.Text);

   SlovarRussian.Items.Insert(SlovarGreek.Items.IndexOf(Edit2.Text),KonveerRussian.Text);
   SlovarTrans.Items.Insert(SlovarGreek.Items.IndexOf(Edit2.Text),memo);
    SlovarKod.Items.Insert(SlovarGreek.Items.IndexOf(Edit2.Text),KonveerKod.Text);
     SlovarData.Items.Insert(SlovarGreek.Items.IndexOf(Edit2.Text),KonveerData.Text);
      SlovarText.Items.Insert(SlovarGreek.Items.IndexOf(Edit2.Text),KonveerText.Text);
       SlovarSelStart.Items.Insert(SlovarGreek.Items.IndexOf(Edit2.Text),KonveerSelStart.Text);
        SlovarSelLength.Items.Insert(SlovarGreek.Items.IndexOf(Edit2.Text),KonveerSelLength.Text);

i:=i+1;
a:=0;
KonveerGreek.ItemIndex:=i;
KonveerRussian.ItemIndex:=i;
KonveerKOd.ItemIndex:=i;
KonveerData.ItemIndex:=i;
KonveerText.ItemIndex:=i;
KonveerSelStart.ItemIndex:=i;
KonveerSelLength.ItemIndex:=i;
Edit2.Text:=KonveerGreek.Text;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
SlovarTrans.Items.SaveToFile(Edit1.Text+Button16.Caption);
end;

procedure TForm1.btnLOADClick(Sender: TObject);
begin
Button1.Click;
Button2.Click;
Button3.Click;
Button4.Click;
Button5.Click;
Button6.Click;
Button7.Click;
end;

procedure TForm1.btnSaveClick(Sender: TObject);
begin
Button8.Click;
Button9.Click;
Button10.Click;
Button11.Click;
Button12.Click;
Button13.Click;
Button14.Click;
Button16.Click;
end;

end.
