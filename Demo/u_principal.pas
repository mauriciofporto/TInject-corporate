﻿unit u_principal;

interface

uses

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,  Vcl.ExtCtrls,

  //############ ATENCAO AQUI ####################
  //units adicionais obrigatorias
   uTInject.ConfigCEF, uTInject,            uTInject.Constant,      uTInject.JS,     uInjectDecryptFile,
   uTInject.Console,   uTInject.Diversos,   uTInject.AdjustNumber,  uTInject.Config, uTInject.Classes,

  //units Opcionais (dependendo do que ira fazer)
   System.NetEncoding, System.TypInfo,  WinInet,

  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.AppEvnts, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.Mask, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Dialogs, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, Vcl.OleCtrls, SHDocVw, IdHTTP, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, Vcl.Imaging.jpeg,
  REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, ClipBrd,
  Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    TInject1: TInject;
    OpenDialog1: TOpenDialog;
    TrayIcon1: TTrayIcon;
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    memo_unReadMessage: TMemo;
    StatusBar1: TStatusBar;
    groupEnvioMsg: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    mem_message: TMemo;
    btSendTextAndFile: TButton;
    btSendText: TButton;
    Panel1: TPanel;
    groupListaChats: TGroupBox;
    Button3: TButton;
    listaChats: TListView;
    groupListaContatos: TGroupBox;
    Splitter1: TSplitter;
    ed_num: TComboBox;
    Pnl_Config: TPanel;
    Panel2: TPanel;
    whatsOn: TImage;
    whatsOff: TImage;
    lblStatus: TLabel;
    Lbl_Avisos: TLabel;
    Timer2: TTimer;
    Label3: TLabel;
    Panel3: TPanel;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    chk_apagarMsg: TCheckBox;
    Rdb_FormaConexao: TRadioGroup;
    SpeedButton1: TSpeedButton;
    Panel4: TPanel;
    Button2: TButton;
    chk_AutoResposta: TCheckBox;
    ComboBox1: TComboBox;
    Label5: TLabel;
    listaContatos: TListView;
    Pnl_FONE: TPanel;
    Edt_LengDDD: TLabeledEdit;
    Edt_LengDDI: TLabeledEdit;
    Edt_LengFone: TLabeledEdit;
    Edt_DDIPDR: TLabeledEdit;
    CheckBox4: TCheckBox;
    btSendContact: TButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    btCheckNumber: TButton;
    btIsConnected: TButton;
    btSendLocation: TButton;
    btSendLinkWithPreview: TButton;
    Label6: TLabel;
    ed_videoLink: TEdit;
    Button1: TButton;
    Image2: TImage;
    ed_profilePicThumbURL: TEdit;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Panel6: TPanel;
    listaGrupos: TListView;
    GroupBox1: TGroupBox;
    Button4: TButton;
    listaParticipantes: TListView;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    lbl_idGroup: TLabel;
    lbl_idParticipant: TLabel;
    edt_nomeGrupo: TEdit;
    edt_foneParticipante: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Button11: TButton;
    Button12: TButton;
    ed_idParticipant: TEdit;
    Label4: TLabel;
    edt_groupInviteLink: TEdit;
    Label7: TLabel;
    listaAdministradores: TListView;
    Label10: TLabel;
    GroupBox2: TGroupBox;
    btCleanChat: TButton;
    btDeleteChat: TButton;
    btnTestCheckNumber: TButton;
    btGetSeveralStatus: TButton;
    btGetStatus: TButton;
    Image3: TImage;
    Button19: TButton;
    btnRemoveGroupLink: TButton;
    lblNumeroConectado: TLabel;
    lblContactStatus: TLabel;
    lblContactNumber: TLabel;
    SpeedButton4: TSpeedButton;
    TabSheet5: TTabSheet;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    edtToken: TEdit;
    Panel10: TPanel;
    Image1: TImage;
    Label11: TLabel;
    SpeedButton11: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Copyall1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    Copy1: TMenuItem;
    Copy2: TMenuItem;
    PopupMenu3: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    PopupMenu4: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    Panel11: TPanel;
    Image4: TImage;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Image5: TImage;
    btSendTextButton: TButton;
    btSendButtonList: TButton;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    mem_delivered: TMemo;
    lblWhatsappType: TLabel;
    btSendImgButton: TButton;
    btnSendSurvey: TButton;
    btnGetMyNumber: TButton;
    btSetProfileStatus: TButton;
    btSetProfileName: TButton;
    ed_profileData: TEdit;
    btnPostStatus: TButton;
    btDevTools: TButton;
    TabSheet6: TTabSheet;
    Panel7: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    mRequest: TMemo;
    Panel8: TPanel;
    Label15: TLabel;
    Label20: TLabel;
    mResponse: TMemo;
    btGemini: TButton;
    btnListarContatosBloq: TButton;
    Button13: TButton;
    btBlockContact: TButton;
    btUnBlockContact: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSendTextClick(Sender: TObject);
    procedure btSendTextAndFileClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);

    procedure TInject1GetUnReadMessages(Const Chats: TChatList);
    procedure listaChatsDblClick(Sender: TObject);
    procedure listaContatosDblClick(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure TInject1GetStatus(Sender: TObject);
    procedure btStatusBatClick(Sender: TObject);
    procedure Edt_DDIPDRExit(Sender: TObject);
    procedure ed_numChange(Sender: TObject);
    procedure ed_numSelect(Sender: TObject);
    procedure TInject1GetMyNumber(Sender: TObject);
    procedure TInject1ErroAndWarning(Sender: TObject; const PError,      PInfoAdc: string);
    procedure Timer2Timer(Sender: TObject);
    procedure TInject1GetChatList(const Chats: TChatList);
    procedure TInject1GetAllContactList(      const AllContacts: TRetornoAllContacts);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TInject1GetQrCode(COnst Sender: TObject; const QrCode: TResultQRCodeClass);
    procedure whatsOnClick(Sender: TObject);
    procedure TInject1LowBattery(Sender: TObject);
    procedure TInject1DisconnectedBrute(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btSendContactClick(Sender: TObject);
    procedure listaContatosClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btCheckNumberClick(Sender: TObject);
    procedure TInject1GetCheckIsValidNumber(Sender: TObject; Number: string;      IsValid: Boolean);
    procedure btIsConnectedClick(Sender: TObject);
    procedure TInject1IsConnected(Sender: TObject; Connected: Boolean);
    //procedure TInjectGetBatteryLevel(Sender: TObject);
    procedure btSendLinkWithPreviewClick(Sender: TObject);
    procedure btSendLocationClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TInject1GetProfilePicThumb(Sender: TObject; Base64: string);
    procedure Button5Click(Sender: TObject);
    procedure listaGruposClick(Sender: TObject);
    procedure TInject1GetAllGroupList(const AllGroups: TRetornoAllGroups);
    procedure TInject1GetAllGroupContacts(      const Contacts: TClassAllGroupContacts);
    procedure listaParticipantesClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure TInject1GetAllGroupAdmins(    const AllGroups: TRetornoAllGroupAdmins);
    procedure btSetProfileNameClick(Sender: TObject);
    procedure btnRemoveGroupLinkClick(Sender: TObject);
    procedure btSetProfileStatusClick(Sender: TObject);
    procedure btCleanChatClick(Sender: TObject);
    procedure btGetStatusClick(Sender: TObject);
    procedure btGetSeveralStatusClick(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure TInject1GetInviteGroup(const Invite: string);
    procedure TInject1GetMe(const vMe: TGetMeClass);
    procedure btDeleteChatClick(Sender: TObject);
    procedure btnTestCheckNumberClick(Sender: TObject);
    procedure TInject1NewGetNumber(const vCheckNumber: TReturnCheckNumber);
    procedure listaChatsClick(Sender: TObject);
    procedure ed_numKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure Copyall1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Copy2Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure TInject1GetIsDelivered(Sender: TObject);
    procedure btSendTextButtonClick(Sender: TObject);
    procedure btSendButtonListClick(Sender: TObject);
    procedure TInject1GetWhatsappVersion(Sender: TObject);
    procedure TInject1Connected(Sender: TObject);
    procedure listaAdministradoresClick(Sender: TObject);
    procedure btSendImgButtonClick(Sender: TObject);
    procedure btnSendSurveyClick(Sender: TObject);
    procedure TInject1AfterInitialize(Sender: TObject);
    procedure TInject1AfterInjectJS(Sender: TObject);
    procedure btnGetMyNumberClick(Sender: TObject);
    procedure TInject1GetStatusMessage(Sender: TObject);
    procedure TInject1UpdateJS(Sender: TObject);
    procedure TInject1GetIncomingCall(const incomingCall: TReturnIncomingCall);
    procedure btnPostStatusClick(Sender: TObject);
    procedure btDevToolsClick(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label20Click(Sender: TObject);
    procedure btGeminiClick(Sender: TObject);
    procedure btnListarContatosBloqClick(Sender: TObject);
    procedure TInject1GetAllContactListBlock(
      const AllContactsBlock: TRetornoAllContactsBlock);
    procedure btBlockContactClick(Sender: TObject);
    procedure btUnBlockContactClick(Sender: TObject);

  private
    { Private declarations }
    FIniciando: Boolean;
    FStatus: Boolean;
    FNameContact:  string;
    FChatID: string;
  public
    { Public declarations }
    mensagem  : string;
    AFile     : string;

    procedure AddChatList(ANumber: String);
    procedure AddContactList(AContact: String);
    procedure AddGroupList(ANumber: string);
    procedure AddGroupAdmins(ANumber: string);
    procedure AddGroupContacts(ANumber: string);
    function  VerificaPalavraChave( pMensagem, pSessao, pTelefone, pContato : String ) : Boolean;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  Datasnap.DBClient, Winapi.ShellAPI, System.AnsiStrings, System.JSON;

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  PageControl1.ActivePageIndex := 0;
  FIniciando := True;
  try
    ComboBox1.Items.Clear;
    for I := 0 to 3 do
    Begin
      ComboBox1.Items.Add(GetEnumName(TypeInfo(TLanguageInject), ord(TLanguageInject(i))));
    End;

    GlobalCEFApp.LogConsoleActive := true;
    ComboBox1.ItemIndex   := Integer(TInject1.LanguageInject);
    TabSheet2.TabVisible  := False;
    TabSheet3.TabVisible  := False;
    TabSheet4.TabVisible  := False;
    chk_apagarMsg.Checked := TInject1.Config.AutoDelete;
    LabeledEdit1.text     := TInject1.Config.ControlSendTimeSec.ToString;
    LabeledEdit2.Text     := TInject1.Config.SecondsMonitor.ToString;
  finally
    FIniciando := False;
  end;
end;

procedure TfrmPrincipal.Label14Click(Sender: TObject);
begin
  mRequest.Clear;
end;

procedure TfrmPrincipal.Label20Click(Sender: TObject);
begin
  mResponse.Clear;
end;

procedure TfrmPrincipal.AddContactList(AContact: String);
var
  Item: TListItem;
begin
  Item := listaContatos.Items.Add;

  if Length(AContact) < 12 then
     AContact := '55' + AContact;
  item.Caption := AContact;
  item.SubItems.Add(item.Caption+'SubItem 1');
  item.SubItems.Add(item.Caption+'SubItem 2');
  item.ImageIndex := 0;
end;

procedure TfrmPrincipal.AddGroupAdmins(ANumber: string);
var
  Item: TListItem;
begin
  Item := listaAdministradores.Items.Add;
  item.Caption := ANumber;
  item.SubItems.Add(item.Caption+'SubItem 1');
  item.SubItems.Add(item.Caption+'SubItem 2');
  item.ImageIndex := 0;
end;

procedure TfrmPrincipal.AddGroupContacts(ANumber: string);
var
  Item: TListItem;
begin
  Item := listaParticipantes.Items.Add;
  item.Caption := ANumber;
  item.SubItems.Add(item.Caption+'SubItem 1');
  item.SubItems.Add(item.Caption+'SubItem 2');
  item.ImageIndex := 0;
end;

procedure TfrmPrincipal.AddGroupList(ANumber: string);
var
  Item: TListItem;
begin
  Item := listaGrupos.Items.Add;
  item.Caption := ANumber;
  item.SubItems.Add(item.Caption+'SubItem 1');
  item.SubItems.Add(item.Caption+'SubItem 2');
  item.ImageIndex := 0;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TInject1.ShutDown;
end;

Procedure TfrmPrincipal.AddChatList(ANumber: String);
var
  Item: TListItem;
begin
  Item := listaChats.Items.Add;
  if Length(ANumber) < 12 then
     ANumber := '55' + ANumber;
  item.Caption := ANumber;
  item.SubItems.Add(item.Caption+'SubItem 1');
  item.SubItems.Add(item.Caption+'SubItem 2');
  item.ImageIndex := 2;
end;

procedure TfrmPrincipal.ApplicationEvents1Minimize(Sender: TObject);
begin
  self.Hide();
  self.WindowState := wsMinimized;
  trayIcon1.Visible := true;
  TrayIcon1.Animate := True;
  TrayIcon1.ShowBalloonHint;
end;

procedure TfrmPrincipal.BitBtn6Click(Sender: TObject);
begin
  if MessageDlg('Olá! Você será direcionado para o site do Enviazap. Cadastre-se usando seu número de Whatsapp e ative sua licença corporate. '+#13+#13+'Ao ativar você ganhará um token de acesso. Insira o seu token na propriedade SERIALCORPORATE do seu TInject.'+#13+#13+'*Não esqueça de validar o seu token.'+#13+#13+'Prosseguir?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    ShellExecute(Handle, 'open', 'https://mensageria.hcisistemas.com.br', '', '', 1);
  end
end;

procedure TfrmPrincipal.BitBtn7Click(Sender: TObject);
begin
  if MessageDlg('Olá! Você será direcionado para o site do Enviazap. Cadastre-se usando seu número de Whatsapp e ative sua licença corporate. '+#13+#13+'Ao ativar você ganhará um token de acesso. Insira o seu token na propriedade SERIALCORPORATE do seu TInject.'+#13+#13+'*Não esqueça de validar o seu token.'+#13+#13+'Prosseguir?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    ShellExecute(Handle, 'open', 'https://mensageria.hcisistemas.com.br', '', '', 1);
  end
end;

procedure TfrmPrincipal.btBlockContactClick(Sender: TObject);
begin
  if not TInject1.Auth then
       Exit;

    TInject1.blockContact(ed_num.Text);
    showMessage(ed_num.Text + ' bloqueado com sucesso.');
end;

procedure TfrmPrincipal.btCheckNumberClick(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.NewCheckIsValidNumber(ed_num.Text);
end;

procedure TfrmPrincipal.btSendButtonListClick(Sender: TObject);
var
  buttons, buttonType: TJSONObject;
  jsonArray: TJSONArray;
begin
  try
    if not TInject1.Auth then
       Exit;

    jsonArray  := TJSONArray.Create;

    //button1
    buttonType := TJSONObject.Create;

    buttonType.AddPair('rowId' , '1');
    buttonType.AddPair('title' , 'Agendamento');
    buttonType.AddPair('description' , 'Consulta clínico');
    jsonArray.AddElement(buttonType);

    //button2
    buttonType := TJSONObject.Create;
    buttonType.AddPair('rowId' , '2');
    buttonType.AddPair('title' , 'Agendamento');
    buttonType.AddPair('description' , 'Consulta ortopedista');
    jsonArray.AddElement(buttonType);

    TInject1.sendButtonList(ed_num.Text, 'Escolha uma opção', 'TInject Corporate', 'Clique aqui', jsonArray.ToString);
  finally
    ed_num.SelectAll;
    ed_num.SetFocus;
  end;

end;

procedure TfrmPrincipal.btSendContactClick(Sender: TObject);
begin
  try
    if not TInject1.Auth then
       Exit;

    TInject1.sendContact(ed_num.Text, mem_message.Text);
  finally
    ed_num.SelectAll;
    ed_num.SetFocus;
  end;
end;

procedure TfrmPrincipal.btSendImgButtonClick(Sender: TObject);
var
  buttons, buttonType: TJSONObject;
  jsonArray: TJSONArray;
begin

  if not OpenDialog1.Execute then
     Exit;

  try
    if not TInject1.Auth then
      Exit;

    buttons := TJSONObject.Create;

    buttons.AddPair('useTemplateButtons' , TJSONBool.Create(true));
    buttons.AddPair('createChat' , TJSONBool.Create(true));

    jsonArray  := TJSONArray.Create;

    //ID button1
    buttonType := TJSONObject.Create;
    buttonType.AddPair('id' , '1');
    buttonType.AddPair('text' , 'Suporte');
    jsonArray.AddElement(buttonType);

    //ID button2
    buttonType := TJSONObject.Create;
    buttonType.AddPair('id' , '2');
    buttonType.AddPair('text' , 'Comercial');
    jsonArray.AddElement(buttonType);

    buttons.AddPair('buttons', jsonArray);

    buttons.AddPair('footer' , mem_message.Text);

    TInject1.sendImgButtons(ed_num.Text, openDialog1.FileName, buttons.ToJSON);

  finally
    ed_num.SelectAll;
    ed_num.SetFocus;
    buttons.Free;
  end;

end;

procedure TfrmPrincipal.btSendLinkWithPreviewClick(Sender: TObject);
begin
  try
    if not TInject1.Auth then
       Exit;

    TInject1.sendLinkPreview(ed_num.Text, ed_videoLink.Text, mem_message.Text);
  finally
    ed_num.SelectAll;
    ed_num.SetFocus;
  end;
end;

procedure TfrmPrincipal.btSendLocationClick(Sender: TObject);
begin
  try
    if not TInject1.Auth then
       Exit;
    //                    number        lat         lgn        Message link
    TInject1.sendLocation(ed_num.Text, '-70.4078', '25.3789', 'Segue a localização');
  finally
    ed_num.SelectAll;
    ed_num.SetFocus;
  end;
end;

procedure TfrmPrincipal.btSendTextAndFileClick(Sender: TObject);
Begin
  if not OpenDialog1.Execute then
     Exit;

  try
    if not TInject1.Auth then
       exit;

    TInject1.SendFile(ed_num.Text, openDialog1.FileName,  mem_message.Text);
  finally
    ed_num.SelectAll;
    ed_num.SetFocus;
  end;
end;

procedure TfrmPrincipal.btSendTextButtonClick(Sender: TObject);
var
  buttons, buttonType: TJSONObject;
  jsonArray: TJSONArray;
begin

  try
    if not TInject1.Auth then
      Exit;

    buttons := TJSONObject.Create;

    buttons.AddPair('useTemplateButtons' , TJSONBool.Create(false));
    buttons.AddPair('createChat' , TJSONBool.Create(true));

    jsonArray  := TJSONArray.Create;

    //ID button1
    buttonType := TJSONObject.Create;
    buttonType.AddPair('id' , '1');
    buttonType.AddPair('text' , '👍 Suporte');
    jsonArray.AddElement(buttonType);

    //ID button2
    buttonType := TJSONObject.Create;
    buttonType.AddPair('id' , '2');
    buttonType.AddPair('text' , '⚠️Comercial');
    jsonArray.AddElement(buttonType);

    buttons.AddPair('buttons', jsonArray);

    buttons.AddPair('footer' , 'Novos buttons TInject Corporate');

    TInject1.sendButtons(ed_num.Text, mem_message.Text, buttons.ToJSON);

  finally
    ed_num.SelectAll;
    ed_num.SetFocus;
    buttons.Free;
  end;

end;

procedure TfrmPrincipal.btIsConnectedClick(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.CheckIsConnected();
end;


{procedure TfrmPrincipal.btNewCheckNumberClick(Sender: TObject);
begin



end;



 Funcao nao utilizada
function DownloadArquivo(const Origem, Destino: String): Boolean;
const BufferSize = 1024;
var
  hSession, hURL: HInternet;
  Buffer: array[1..BufferSize] of Byte;
  BufferLen: DWORD;
  f: File;
  sAppName: string;
begin
 Result   := False;
 sAppName := ExtractFileName(Application.ExeName);
 hSession := InternetOpen(PChar(sAppName),
                INTERNET_OPEN_TYPE_PRECONFIG,
               nil, nil, 0);
 try
  hURL := InternetOpenURL(hSession,
            PChar(Origem),
            nil,0,0,0);
  try
   AssignFile(f, Destino);
   Rewrite(f,1);
   repeat
    InternetReadFile(hURL, @Buffer,
                     SizeOf(Buffer), BufferLen);
    BlockWrite(f, Buffer, BufferLen)
   until BufferLen = 0;
   CloseFile(f);
   Result:=True;
  finally
   InternetCloseHandle(hURL)
  end
 finally
  InternetCloseHandle(hSession)
 end
end;}


procedure TfrmPrincipal.Button10Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.groupJoinViaLink(edt_groupInviteLink.Text);
end;

procedure TfrmPrincipal.Button11Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.groupLeave(lbl_idGroup.Caption);
end;

procedure TfrmPrincipal.Button12Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.groupDelete(lbl_idGroup.Caption);
end;

procedure TfrmPrincipal.btGeminiClick(Sender: TObject);
begin
  Tinject1.sendPromptGemini(mRequest.Lines.Text);
end;

procedure TfrmPrincipal.btGetSeveralStatusClick(Sender: TObject);
begin
  try

    FStatus := false;
    if not TInject1.Auth then
       Exit;

    TInject1.GetStatusContact('+558199301443@c.us');
    TInject1.GetStatusContact('+558198007759@c.us');
  finally

  end;
end;



procedure TfrmPrincipal.btDeleteChatClick(Sender: TObject);
begin
    if not TInject1.Auth then
       Exit;

    TInject1.deleteConversation(ed_num.Text);
end;



procedure TfrmPrincipal.btDevToolsClick(Sender: TObject);
var
  tmpPoint: Tpoint;
begin
  tmpPoint.X := 200;
  tmpPoint.Y := 200;
  FrmConsole.Chromium1.ShowDevTools(tmpPoint, nil);
end;

procedure TfrmPrincipal.Button19Click(Sender: TObject);
begin

   if not TInject1.Auth then
     Exit;

  TInject1.GetGroupInviteLink(lbl_idGroup.Caption);//  '558192317066-1592044430@g.us'

end;



procedure TfrmPrincipal.btCleanChatClick(Sender: TObject);
begin

  if not TInject1.Auth then
     Exit;

  TInject1.CleanALLChat(ed_num.Text);

end;



procedure TfrmPrincipal.btGetStatusClick(Sender: TObject);
begin

  FStatus := true;

  if not TInject1.Auth then
     Exit;

  TInject1.GetStatusContact(ed_num.Text);

end;



procedure TfrmPrincipal.btnGetMyNumberClick(Sender: TObject);
begin
  if not TInject1.Auth then
    Exit;

  showMessage(TInject1.MyNumber);
end;

procedure TfrmPrincipal.btnListarContatosBloqClick(Sender: TObject);
begin
  TInject1.getListBlockContacts;
end;

procedure TfrmPrincipal.btnPostStatusClick(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.PostStatus('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mP8z8DwBwAFAgH9XSO6wwAAAABJRU5ErkJggg==');
end;

procedure TfrmPrincipal.btnRemoveGroupLinkClick(Sender: TObject);
begin

  if not TInject1.Auth then
     Exit;

  TInject1.GroupRemoveInviteLink(lbl_idGroup.Caption);

end;



procedure TfrmPrincipal.btnSendSurveyClick(Sender: TObject);
begin
    if not TInject1.Auth then
       Exit;

    TInject1.sendSurvey(edt_nomeGrupo.Text, 'Qua a melhor linguagem?', '["DELPHI", "C#", "JAVA", "PHP", "JAVASCRIPT"]');
end;

procedure TfrmPrincipal.btSetProfileNameClick(Sender: TObject);
begin

  if not TInject1.Auth then
     Exit;

  TInject1.SetProfileName(ed_profileData.Text);

end;



procedure TfrmPrincipal.btSetProfileStatusClick(Sender: TObject);
begin

  if not TInject1.Auth then
     Exit;

  TInject1.SetStatus(ed_profileData.Text);

end;



procedure TfrmPrincipal.btnTestCheckNumberClick(Sender: TObject);
begin

 if not TInject1.Auth then
     Exit;

  TInject1.NewCheckIsValidNumber(ed_num.text);

end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  JS: string;
begin
  if (not TInject1.Auth)  then
    Exit;

  TInject1.getProfilePicThumb(FChatID);
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
  TInject1.getAllContacts;
end;

procedure TfrmPrincipal.Button3Click(Sender: TObject);
begin
  TInject1.getAllChats;
end;

procedure TfrmPrincipal.Button4Click(Sender: TObject);
begin
  if not TInject1.Auth then
    Exit;

  TInject1.createGroup(edt_nomeGrupo.Text, edt_foneParticipante.Text);
  edt_nomeGrupo.Clear;
  edt_foneParticipante.Clear;
end;

procedure TfrmPrincipal.Button5Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.getAllGroups;
end;

procedure TfrmPrincipal.Button6Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.groupAddParticipant(lbl_idGroup.Caption, ed_idParticipant.text);
end;

procedure TfrmPrincipal.btStatusBatClick(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.GetBatteryStatus;
end;

procedure TfrmPrincipal.btUnBlockContactClick(Sender: TObject);
begin
  if not TInject1.Auth then
       Exit;

    TInject1.unBlockContact(ed_num.Text);

    showMessage(ed_num.Text + ' desbloqueado com sucesso.');
end;

procedure TfrmPrincipal.btSendTextClick(Sender: TObject);
begin
  try
    if not TInject1.Auth then
       Exit;

    TInject1.send(ed_num.Text, mem_message.Text);
  finally
    ed_num.SelectAll;
    ed_num.SetFocus;
  end;
end;

procedure TfrmPrincipal.Button7Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.groupRemoveParticipant(lbl_idGroup.Caption, ed_idParticipant.text);
end;

procedure TfrmPrincipal.Button8Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.groupPromoteParticipant(lbl_idGroup.Caption, ed_idParticipant.text);
end;

procedure TfrmPrincipal.Button9Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

  TInject1.groupDemoteParticipant(lbl_idGroup.Caption, ed_idParticipant.text);
end;

procedure TfrmPrincipal.Copy1Click(Sender: TObject);
begin
  try
    Clipboard.AsText := listaGrupos.Selected.Caption;
  except
  end;
end;

procedure TfrmPrincipal.Copy2Click(Sender: TObject);
begin
  try
    Clipboard.AsText := listaParticipantes.Selected.Caption;
  except
  end;
end;

procedure TfrmPrincipal.Copyall1Click(Sender: TObject);
var
  sl: TStringlist;
  i, k: integer;
  s: string;
  Item: TListItem;
begin
  sl := TStringlist.Create;
  try
    For i := 0 To listaParticipantes.items.count-1 Do Begin
      item := listaParticipantes.Items[i];
      S   := item.Caption;
      sl.Add( S );
    End; { For }
    Clipboard.AsText := sl.Text;
  finally
    begin
      sl.free;
      application.MessageBox('All Copied', 'Message' , MB_OK + MB_ICONASTERISK)
    end;
  end;
end;

procedure TfrmPrincipal.ed_numChange(Sender: TObject);
var
  LRet: TStringList;
  I: Integer;
  Ltexto: String;
begin

  if ed_num.AutoComplete = False Then
     Exit;


  {
   ##### modo 1
  TInject1.GetContacts(ComboBox1.Text, ComboBox1.Items);
  if ComboBox1.Items.Count <= 0 then
     ComboBox1.Style := csSimple else
     ComboBox1.Style := csOwnerDrawFixed;


  ##### modo 2
   }

  LRet:= TStringList.Create;
  ed_num.AutoComplete := False;
  Ltexto                 := ed_num.Text;
  try
    ed_num.Items.Clear;
    if LRet.Count <= 0 then
       ed_num.Style := csSimple else
       ed_num.Style := csDropDown;

    for I := 0 to LRet.Count -1 do
       ed_num.Items.Add(LRet.Strings[i]);
  finally
    ed_num.Text         := Ltexto;
    ed_num.SelStart     := Length(Ltexto);
    ed_num.AutoComplete := True;
    FreeAndNil(LRet);
  end;
end;

procedure TfrmPrincipal.ed_numKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  lblContactNumber.Caption := ed_num.Text;
  lblContactStatus.Caption := '-';
end;

procedure TfrmPrincipal.ed_numSelect(Sender: TObject);
begin
  if (ed_num.ItemIndex >=0) and (ed_num.Items.Count > 0) then
  Begin
    ed_num.AutoComplete := False;
    ed_num.Text         := ed_num.Items.Strings[ed_num.ItemIndex];
    ed_num.AutoComplete := True;
  End;
end;

procedure TfrmPrincipal.Edt_DDIPDRExit(Sender: TObject);
begin
  if FIniciando then
     Exit;

  TInject1.Config.AutoDelete            := chk_apagarMsg.Checked;
  //TInject1.Config.AutoStart           := chk_AutoStart.Checked;

  TInject1.Config.ControlSendTimeSec    := StrToIntDef(LabeledEdit1.Text, 8);
  TInject1.Config.SecondsMonitor        := StrToIntDef(LabeledEdit2.Text, 3);


//  TInject1.Config.ShowRandom          := .Checked;
//  TInject1.Config.SyncContacts        := .Checked;

  TInject1.AjustNumber.LengthDDI         := StrToIntDef(Edt_LengDDI.text , 2);
  TInject1.AjustNumber.LengthDDD         := StrToIntDef(Edt_LengDDD.text , 2);
  TInject1.AjustNumber.LengthPhone       := StrToIntDef(Edt_LengFone.text, 8);
  TInject1.AjustNumber.DDIDefault        := StrToIntDef(Edt_DDIPDR.text  , 55);
  TInject1.AjustNumber.AllowOneDigitMore := CheckBox4.Checked;

  TInject1.LanguageInject                := TLanguageInject(ComboBox1.ItemIndex);
end;

procedure TfrmPrincipal.TInject1AfterInitialize(Sender: TObject);
begin
//  showmessage('Inicializou');
end;

procedure TfrmPrincipal.TInject1AfterInjectJS(Sender: TObject);
begin
//  showmessage('Injetado js');
end;

procedure TfrmPrincipal.TInject1Connected(Sender: TObject);
begin
//  ShowMessage(TInject1.StatusToStr);
end;

procedure TfrmPrincipal.TInject1DisconnectedBrute(Sender: TObject);
begin
//  ShowMessage('Conexão foi finalizada pelo celular');
end;

procedure TfrmPrincipal.TInject1ErroAndWarning(Sender: TObject;
  const PError, PInfoAdc: string);
begin
  Timer2.Enabled        := False;
  Lbl_Avisos.Caption    := Perror + ' -> ' + PInfoAdc;
  Lbl_Avisos.Font.Color := clBlack;

  Timer2.Enabled        := True;
end;

procedure TfrmPrincipal.TInject1GetAllContactList(
  const AllContacts: TRetornoAllContacts);
var
  AContact: TContactClass;
begin
  listaContatos.Clear;

  for AContact in AllContacts.result do
  begin
    AddContactList(AContact.id + ' ' +AContact.name);
  end;

  AContact := nil;
end;

procedure TfrmPrincipal.TInject1GetAllContactListBlock(
  const AllContactsBlock: TRetornoAllContactsBlock);
var
  AContactBlock: TContactClassBlock;
begin
  listaContatos.Clear;

  for AContactBlock in AllContactsBlock.result do
  begin
    AddContactList(AContactBlock.Number);
  end;

  AContactBlock := nil;
end;

procedure TfrmPrincipal.TInject1GetAllGroupAdmins(
  const AllGroups: TRetornoAllGroupAdmins);
var
  i: integer;
begin
  listaAdministradores.Clear;

  for i := 0 to (AllGroups.Numbers.count) - 1 do
  begin
    AddGroupAdmins(allgroups.Numbers[i])
  end;
end;

procedure TfrmPrincipal.TInject1GetAllGroupContacts(
  const Contacts: TClassAllGroupContacts);
var
  JSonValue       : TJSonValue;
  ArrayRows       : TJSONArray;
  i: integer;
begin
  JsonValue := TJSonObject.ParseJSONValue(contacts.result);
  ArrayRows := JsonValue as TJSONArray;

  listaParticipantes.Clear;

  for i := 0 to ArrayRows.Size - 1 do
  begin
    AddGroupContacts(ArrayRows.Items[i].value)
  end;
end;

procedure TfrmPrincipal.TInject1GetAllGroupList(
  const AllGroups: TRetornoAllGroups);
var
  i: integer;
begin
  listaGrupos.Clear;

  for i := 0 to (AllGroups.Numbers.count) - 1 do
  begin
    AddGroupList(allgroups.Numbers[i])
  end;

end;

procedure TfrmPrincipal.TInject1GetChatList(const Chats: TChatList);
var
  AChat: TChatClass;
begin
  listaChats.Clear;

  for AChat in Chats.result do
    AddChatList('('+ AChat.unreadCount.ToString + ') ' + AChat.name + ' - ' + AChat.id);
end;

procedure TfrmPrincipal.TInject1GetCheckIsValidNumber(Sender: TObject;
  Number: string; IsValid: Boolean);
begin
  if IsValid then
     ShowMessage('Whatsapp Valid -' + Number) else
     ShowMessage('Whatsapp Invalid') ;
end;

procedure TfrmPrincipal.TInject1GetIncomingCall(
  const incomingCall: TReturnIncomingCall);
begin
  memo_unReadMessage.Text := 'Incoming call: ' + incomingCall.contact;
end;

procedure TfrmPrincipal.TInject1GetInviteGroup(const Invite: string);
begin
  ShowMessage(Invite);
end;

procedure TfrmPrincipal.TInject1GetIsDelivered(Sender: TObject);
var
  status: string;
  statusMessage: string;
begin
  //isDelivered       -> fullString
  //IsDeliveredNumber -> Contact number
  //isDeliveredStatus -> Status: -1 one black check, -2 two black checks, -3 two blue checks
  //IsDeliveredBody   -> Body message

  status := TInject(Sender).isDeliveredStatus;

  if status = '-1' then
    statusMessage := '✔️' else
  if status = '-2'  then
    statusMessage := '✔️✔️' else
  if status = '-3'  then
    statusMessage := '✔️✔️✔️';

  mem_delivered.Lines.Add('Delivered Number: '  + TInject(Sender).IsDeliveredNumber);
  mem_delivered.Lines.Add('Delivered Status: '  + statusMessage);
  mem_delivered.Lines.Add('Delivered Body: '    + TInject(Sender).IsDeliveredBody);
  mem_delivered.Lines.Add('');
end;

procedure TfrmPrincipal.TInject1GetMe(const vMe: TGetMeClass);
var
  aList : TStringList;
begin

 try

  aList := TStringList.Create();


  aList.Add('Battery: ' + vMe.battery.ToString);

  aList.Add('LC: ' +  vMe.lc);

  aList.Add('LG: ' + vMe.lg);

  aList.Add('Locate: ' + vMe.locate);



  if vMe.plugged then

   aList.Add('Plugged: true')

  else

   aList.Add('Plugged: false');



  aList.Add('Pushname: ' + vMe.pushname);

  aList.Add('ServerToken: ' + vMe.serverToken);

  //aList.Add('Status: ' + vMe.status.status);

  aList.Add('Me: ' + vMe.me);

  aList.Add('Phone Device_Manufacturer:  ' + vMe.phone.device_manufacturer);

  aList.Add('Phone Device Model: ' + vMe.phone.device_model);

  aList.Add('Phone MCC: ' + vMe.phone.mcc);

  aList.Add('Phone MNC: ' + vMe.phone.mnc);

  aList.Add('Phone OS Builder Number: ' + vMe.phone.os_build_number);

  aList.Add('Phone OS Version: ' + vMe.phone.os_version);

  aList.Add('Phone wa Version: ' + vMe.phone.wa_version);



  if vME.phone.InjectWorking then

   aList.Add('Phone InjectWorkink: true')

  else

   aList.Add('Phone InjectWorkin: false');



  Showmessage (aList.Text);

 finally

  aList.Free;

 end;

end;



procedure TfrmPrincipal.TInject1GetMyNumber(Sender: TObject);
begin
  lblNumeroConectado.Caption :=   TInject(Sender).MyNumber;
end;

procedure TfrmPrincipal.TInject1GetProfilePicThumb(Sender: TObject;
  Base64: string);
var
  LInput: TMemoryStream;
  LOutput: TMemoryStream;
  AStr: TStringList;
  lThread: TThread;
begin
  lThread := TThread.CreateAnonymousThread(
  procedure
  begin
    try
      LInput := TMemoryStream.Create;
      LOutput := TMemoryStream.Create;
      AStr  := TStringList.Create;
      AStr.Add(Base64);
      AStr.SaveToStream(LInput);
      LInput.Position := 0;
      TNetEncoding.Base64.Decode( LInput, LOutput );
      LOutput.Position := 0;
      {$IFDEF VER330}
        Image2.Picture.LoadFromStream(LOutput);
      {$ELSE}
        Image2.Picture.Bitmap.LoadFromStream(LOutput);
      {$ENDIF}
    finally
      LInput.Free;
      LOutput.Free;
      AStr.Free;
    end;
  end);
  lThread.FreeOnTerminate := true;
  lThread.Start;
end;

procedure TfrmPrincipal.TInject1GetQrCode(Const Sender: TObject;  const QrCode: TResultQRCodeClass);
begin
  if TInject1.FormQrCodeType = TFormQrCodeType(Ft_none) then
     Image1.Picture := QrCode.AQrCodeImage else
     Image1.Picture := nil; //Limpa foto
end;

procedure TfrmPrincipal.TInject1GetStatus(Sender: TObject);//Const PStatus : TStatusType; Const PFormQrCode: TFormQrCodeType);
begin
  if not Assigned(Sender) Then
     Exit;

  try
    TabSheet2.TabVisible   := (TInject(Sender).Status = Inject_Initialized);
    TabSheet3.TabVisible   := (TInject(Sender).Status = Inject_Initialized);
    TabSheet4.TabVisible   := (TInject(Sender).Status = Inject_Initialized);
  Except
  end;

  if (TInject(Sender).Status = Inject_Initialized) then
  begin
    lblStatus.Caption            := 'Online';
    lblStatus.Font.Color         := $0000AE11;
    SpeedButton3.Enabled              := true;
  end else
  begin
    SpeedButton3.Enabled              := false;
    lblStatus.Caption            := 'Offline';
    lblStatus.Font.Color         := $002894FF;
  end;

  StatusBar1.Panels[1].Text  := lblStatus.Caption;
  whatsOn.Visible            := SpeedButton3.enabled;
  lblNumeroConectado.Visible := whatsOn.Visible;
  whatsOff.Visible           := Not whatsOn.Visible;


  Label3.Visible := False;
  case TInject(Sender).status of
    Server_ConnectedDown       : Label3.Caption := TInject(Sender).StatusToStr;
    Server_Disconnected        : Label3.Caption := TInject(Sender).StatusToStr;
    Server_Disconnecting       : Label3.Caption := TInject(Sender).StatusToStr;
    Server_Connected           : Label3.Caption := '';
    Server_Connecting          : Label3.Caption := TInject(Sender).StatusToStr;
    Inject_Initializing        : Label3.Caption := TInject(Sender).StatusToStr;
    Inject_Initialized         : Label3.Caption := TInject(Sender).StatusToStr;
    Server_ConnectingNoPhone   : Label3.Caption := TInject(Sender).StatusToStr;
    Server_ConnectingReaderCode: Label3.Caption := TInject(Sender).StatusToStr;
    Server_TimeOut             : Label3.Caption := TInject(Sender).StatusToStr;
    Inject_Destroying          : Label3.Caption := TInject(Sender).StatusToStr;
    Inject_Destroy             : Label3.Caption := TInject(Sender).StatusToStr;
  end;
  If Label3.Caption <> '' Then
     Label3.Visible := true;


  If TInject(Sender).Status in [Server_ConnectingNoPhone, Server_TimeOut] Then
  Begin
    if TInject(Sender).FormQrCodeType = Ft_Desktop then
    Begin
       if TInject(Sender).Status = Server_ConnectingNoPhone then
          TInject1.FormQrCodeStop;
    end else
    Begin
      if TInject(Sender).Status = Server_ConnectingNoPhone then
      Begin
        if not TInject(Sender).FormQrCodeShowing then
           TInject(Sender).FormQrCodeShowing := True;
      end else
      begin
        TInject(Sender).FormQrCodeReloader;
      end;
    end;
  end;
end;

procedure TfrmPrincipal.TInject1GetStatusMessage(Sender: TObject);
begin
  showmessage(TInject(Sender).statusMessage);
end;

procedure TfrmPrincipal.TInject1GetUnReadMessages(Const Chats: TChatList);
var
  AChat: TChatClass;
  AMessage: TMessagesClass;
  contato, telefone: string;
  injectDecrypt: TInjectDecryptFile;
begin
    //Para desativar/ativar o processamento das mensagens recebidas/enviadas em grupos, configure a propriedade  "ProcessGroupMessages" do TInject1.
    for AChat in Chats.result do
    begin
      for AMessage in AChat.messages do
      begin
        if not AChat.isGroup then //Não processa chats de grupos
        begin
          if not AMessage.isGroupMsg then //Não processa mensagens de grupos
          begin
            if not AMessage.fromMe then  //Não exibe mensages enviadas por mim
            begin
              memo_unReadMessage.Clear;

              //Tratando o tipo do arquivo recebido e faz o download para pasta \BIN\temp
              case AnsiIndexStr(UpperCase(AMessage.&type), ['PTT', 'IMAGE', 'VIDEO', 'AUDIO', 'DOCUMENT']) of
                0: begin injectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'mp3', AChat.id); end;
                1: begin injectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'jpg', AChat.id); end;
                2: begin injectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'mp4', AChat.id); end;
                3: begin injectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'mp3', AChat.id); end;
                4: begin injectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'pdf', AChat.id); end;
              end;

              sleepNoFreeze(100);

              memo_unReadMessage.Lines.Add(PChar( 'Nome Contato: ' + Trim(AMessage.Sender.pushName)));
                memo_unReadMessage.Lines.Add(PChar( 'Chat Id     : ' + AChat.id));
              FChatID := AChat.id;

              //Retorna o tipo da mensagem
              memo_unReadMessage.Lines.Add(PChar('Tipo mensagem: '   + AMessage.&type));

              //Retorna o id do button
              memo_unReadMessage.Lines.Add(PChar('ID Button: '       + AMessage.selectedId));
              memo_unReadMessage.Lines.Add(PChar('ID Button in iphone: '+ AMessage.selectedButtonId));

              //Retorna o corpo da mensagem
              memo_unReadMessage.Lines.Add( StringReplace(AMessage.body, #$A, #13#10, [rfReplaceAll, rfIgnoreCase]));

              //Retorna o numero do whatsapp
              telefone  :=  Copy(AChat.id, 3, Pos('@', AChat.id) - 3);

              //Retorna o nome do contato
              contato   :=  AMessage.Sender.pushName;

              //Retorna a url da foto do perfil
              ed_profilePicThumbURL.text := AChat.contact.profilePicThumb;

              //Marca como lida a mensagem
              TInject1.ReadMessages(AChat.id);

              if chk_AutoResposta.Checked then
                 VerificaPalavraChave(AMessage.body, '', AChat.id, contato);
            end;
          end;
        end;
      end;
    end;
end;

procedure TfrmPrincipal.TInject1GetWhatsappVersion(Sender: TObject);
begin
  lblWhatsappType.Caption := TInject(Sender).whatsappVersion;
end;

procedure TfrmPrincipal.TInject1IsConnected(Sender: TObject;
  Connected: Boolean);
begin
  if Connected = true then
    showMessage('Conectado / Connected') else
    showMessage('Desconectado / Not connected')
end;

procedure TfrmPrincipal.TInject1LowBattery(Sender: TObject);
begin
//  Timer2.Enabled        := False;
//  Lbl_Avisos.Caption    := 'Alarme de BATERIA.  Você está com ' + TInject(Sender).BatteryLevel.ToString + '%';
//  Lbl_Avisos.Font.Color := clRed;
//  Timer2.Enabled        := True;
end;

procedure TfrmPrincipal.TInject1NewGetNumber(
  const vCheckNumber: TReturnCheckNumber);
begin
  if vCheckNumber.valid then
    Showmessage(vCheckNumber.id + ' é um numero Válido') else
    Showmessage(vCheckNumber.id + ' é um numero INVÁLIDO');
end;



procedure TfrmPrincipal.TInject1UpdateJS(Sender: TObject);
begin
// showmessage(js.abr Download');
end;

procedure TfrmPrincipal.listaAdministradoresClick(Sender: TObject);
begin
  if listaAdministradores.ItemIndex <>  - 1 then
  begin
    ed_idParticipant.text :=  Copy(listaAdministradores.Items[listaAdministradores.Selected.Index].SubItems[1], 0,
      Pos('@', listaAdministradores.Items[listaAdministradores.Selected.Index].SubItems[1]))+'c.us';
  end;
end;

procedure TfrmPrincipal.listaChatsClick(Sender: TObject);
begin
  lblContactStatus.caption := '-';
end;



procedure TfrmPrincipal.listaChatsDblClick(Sender: TObject);
begin
  ed_num.Text := TInject1.GetChat(listaChats.Selected.Index).id;
  lblContactNumber.Caption := ed_num.Text;
end;

procedure TfrmPrincipal.listaContatosClick(Sender: TObject);
begin
  mem_message.Text := Copy(listaContatos.Items[listaContatos.Selected.Index].SubItems[1], 0,
     Pos('@', listaContatos.Items[listaContatos.Selected.Index].SubItems[1]) + 3);


  FNameContact :=
  stringReplace(Copy(listaContatos.Items[listaContatos.Selected.Index].SubItems[1],
              Pos('@', listaContatos.Items[listaContatos.Selected.Index].SubItems[1])+6,
              length(listaContatos.Items[listaContatos.Selected.Index].SubItems[1])), 'Subitem 2', '', [rfReplaceAll, rfIgnoreCase]);

  mem_message.Text := FNameContact;

  lblContactStatus.caption := '-';
end;

procedure TfrmPrincipal.listaContatosDblClick(Sender: TObject);
begin
  ed_num.Text :=  Copy(listaContatos.Items[listaContatos.Selected.Index].SubItems[1], 0,
    Pos('@', listaContatos.Items[listaContatos.Selected.Index].SubItems[1]))+'c.us';

  lblContactNumber.Caption := ed_num.Text;
end;

procedure TfrmPrincipal.listaGruposClick(Sender: TObject);
begin
  if listaGrupos.ItemIndex <>  - 1 then
  begin
    lbl_idGroup.Caption :=  Copy(listaGrupos.Items[listaGrupos.Selected.Index].SubItems[1], 0,
      Pos('@', listaGrupos.Items[listaGrupos.Selected.Index].SubItems[1]))+'g.us';

    if not TInject1.Auth then
      Exit;

    TInject1.listGroupContacts(lbl_idGroup.Caption);
  end;
end;

procedure TfrmPrincipal.listaParticipantesClick(Sender: TObject);
begin
  if listaParticipantes.ItemIndex <>  - 1 then
  begin
    ed_idParticipant.text :=  Copy(listaParticipantes.Items[listaParticipantes.Selected.Index].SubItems[1], 0,
      Pos('@', listaParticipantes.Items[listaParticipantes.Selected.Index].SubItems[1]))+'c.us';
  end;
end;

procedure TfrmPrincipal.MenuItem1Click(Sender: TObject);
var
  sl: TStringlist;
  i, k: integer;
  s: string;
  Item: TListItem;
begin

  sl := TStringlist.Create;

  try
    for i := 0 To listaGrupos.items.count-1 Do
    begin
      item := listaGrupos.Items[i];
      S   := item.Caption;
      sl.Add( S );
    end;

    Clipboard.AsText := sl.Text;

  finally
    begin
      sl.free;
      application.MessageBox('All Copied', 'Message' , MB_OK + MB_ICONASTERISK);
    end;
  end;

end;

procedure TfrmPrincipal.MenuItem2Click(Sender: TObject);
begin
  try
    Clipboard.AsText := listaAdministradores.Selected.Caption;
  except
  end;
end;

procedure TfrmPrincipal.MenuItem3Click(Sender: TObject);
var
  sl: TStringlist;
  i, k: integer;
  s: string;
  Item: TListItem;
begin
  sl := TStringlist.Create;
  try
    for i := 0 to listaAdministradores.items.count-1 Do Begin
      item := listaAdministradores.Items[i];
      S   := item.Caption;
      sl.Add( S );
    end;
    Clipboard.AsText := sl.Text;
  finally
    begin
      sl.free;
      application.MessageBox('All Copied', 'Message' , MB_OK + MB_ICONASTERISK)
    end;
  end;

end;

procedure TfrmPrincipal.MenuItem4Click(Sender: TObject);
begin
  try
    Clipboard.AsText := listaContatos.Selected.Caption;
  except
  end;
end;

procedure TfrmPrincipal.MenuItem5Click(Sender: TObject);
var
  sl: TStringlist;
  i, k: integer;
  s: string;
  Item: TListItem;
begin
  sl := TStringlist.Create;
  try
    For i := 0 To listaContatos.items.count-1 Do Begin
      item := listaContatos.Items[i];
      S   := item.Caption;
      sl.Add( S );
    End; { For }
    Clipboard.AsText := sl.Text;
  finally
    begin
      sl.free;
      application.MessageBox('All Copied', 'Message' , MB_OK + MB_ICONASTERISK)
    end;
  end;

end;

procedure TfrmPrincipal.SpeedButton10Click(Sender: TObject);
begin
  application.MessageBox('Suporte TInject especializado de seg à sex das 08hs às 17hs pelo WhatsApp', 'Plano standard', MB_OK + MB_ICONASTERISK);
end;

procedure TfrmPrincipal.SpeedButton11Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'https://github.com/mikelustosa/Projeto-TInject', '', '', 1);
end;

procedure TfrmPrincipal.SpeedButton12Click(Sender: TObject);
begin
  application.MessageBox('Suporte via acesso remoto de seg à sex das 08hs às 17hs', 'Plano standard', MB_OK + MB_ICONASTERISK);
end;

procedure TfrmPrincipal.SpeedButton13Click(Sender: TObject);
begin
  if MessageDlg('Olá! Você será direcionado para o site do Enviazap. Cadastre-se usando seu número de Whatsapp e ative sua licença corporate. '+#13+#13+'Ao ativar você ganhará um token de acesso. Insira o seu token na propriedade SERIALCORPORATE do seu TInject1.'+#13+#13+'*Não esqueça de validar o seu token.'+#13+#13+'Prosseguir?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    ShellExecute(Handle, 'open', 'https://mensageria.hcisistemas', '', '', 1);
  end
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin

  if not TInject1.Auth(false) then
  Begin
    TInject1.FormQrCodeType := TFormQrCodeType(Rdb_FormaConexao.ItemIndex);
    TInject1.FormQrCodeStart;
  End;

  if not TInject1.FormQrCodeShowing then
     TInject1.FormQrCodeShowing := True;

end;

procedure TfrmPrincipal.SpeedButton2Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'http://mikelustosa.kpages.online/tinject', '', '', 1);
end;

procedure TfrmPrincipal.SpeedButton3Click(Sender: TObject);
begin
  if not TInject1.auth then
    exit;

  TInject1.Logtout;
  sleepNoFreeze(5000);
  TInject1.Disconnect;
end;

procedure TfrmPrincipal.SpeedButton4Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'https://www.youtube.com/user/mikelustosa', '', '', 1);
end;

procedure TfrmPrincipal.SpeedButton6Click(Sender: TObject);
Type
  TactiveToken = function(token: string): string; stdcall;
var
  error: string;
  lHandle: THandle;
  DoCallDll: TactiveToken;
begin
    if edtToken.Text <> '' then
    begin
      try
        lHandle := LoadLibrary ('sendAndReceiveDLL.dll');

        if lHandle <> 0 then
        begin
          DoCallDll := GetProcAddress (lHandle, 'activateToken');
          if @DoCallDll <> nil then
            application.MessageBox( pchar(DoCallDll (edtToken.Text)) , '' , MB_OK + MB_ICONINFORMATION);
        end;

      except on e:exception do
       error := e.message;
      end;
    end;

end;

procedure TfrmPrincipal.SpeedButton7Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'https://api.whatsapp.com/send?phone=558199301443&text=Preciso%20de%20suporte', '', '', 1);
end;

procedure TfrmPrincipal.SpeedButton8Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'https://youtu.be/dZ1RRXKbjCU', '', '', 1);
end;

procedure TfrmPrincipal.SpeedButton9Click(Sender: TObject);
begin
  application.MessageBox('Novos recursos do componente serão disponibilizados automaticamente', 'Plano standard', MB_OK + MB_ICONASTERISK);
end;

procedure TfrmPrincipal.Timer2Timer(Sender: TObject);
begin
  Lbl_Avisos.Caption := '';
  Timer2.Enabled := False;
end;

procedure TfrmPrincipal.TrayIcon1Click(Sender: TObject);
begin
  TrayIcon1.Visible := False;
  Show();
  WindowState := wsNormal;
  Application.BringToFront();
end;

function TfrmPrincipal.VerificaPalavraChave(pMensagem, pSessao, pTelefone,
  pContato: String): Boolean;
begin
  Result := False;
   if ( POS('OLA', AnsiUpperCase(pMensagem))        > 0 ) or ( POS('OLÁ', AnsiUpperCase(pMensagem))       > 0 ) or
      ( POS('BOM DIA', AnsiUpperCase(pMensagem))    > 0 ) or ( POS('BOA TARDE', AnsiUpperCase(pMensagem)) > 0 ) or
      ( POS('BOA NOITE', AnsiUpperCase(pMensagem))  > 0 ) or ( POS('INÍCIO', AnsiUpperCase(pMensagem))    > 0 ) or
      ( POS('HELLO', AnsiUpperCase(pMensagem))      > 0 ) or ( POS('HI', AnsiUpperCase(pMensagem))        > 0 ) or
      ( POS('INICIO', AnsiUpperCase(pMensagem))     > 0 ) or ( POS('OI', AnsiUpperCase(pMensagem))        > 0 )then
      begin
        mensagem :=
        TInject1.Emoticons.AtendenteH+ 'Olá *'+pContato+'!*\n\n'+
        'Você está no auto atendimento do *TInject*!\n\n'+
        'Digite um número:\n\n'+
        TInject1.Emoticons.Um             +' Suporte\n\n'+
        TInject1.Emoticons.Dois           +' Consultar CEP\n\n'+
        TInject1.Emoticons.Tres           +' Financeiro\n\n'+
        TInject1.Emoticons.Quatro         +' Horários de atendimento\n\n';
        TInject1.SendFile(pTelefone, ExtractFileDir(Application.ExeName)+'\Img\TInject.png', mensagem);
        Result := True;
        exit;
      end;
   exit;
end;

procedure TfrmPrincipal.whatsOnClick(Sender: TObject);
begin
  if not TInject1.FormQrCodeShowing then
     TInject1.FormQrCodeShowing := True;
end;

end.