unit uAutoTablesClientDM;

interface

uses
  System.SysUtils, System.Classes, IPPeerClient, REST.Backend.ServiceTypes,
  System.JSON, REST.Backend.EMSServices, REST.Backend.MetaTypes,
  REST.Backend.BindSource, REST.Backend.ServiceComponents, Data.Bind.Components,
  Data.Bind.ObjectScope, REST.Client, REST.Backend.EndPoint, REST.Types,
  REST.Backend.EMSProvider, FireDAC.Comp.Client, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Stan.StorageJSON, REST.Backend.Providers;

type
  TGetFuncType = procedure of object;
  TPostFuncType = procedure of object;
  TDeleteFuncType = procedure(const ID: String) of object;
  TAutoTablesClientDM = class(TDataModule)
    BackendEndpoint1: TBackendEndpoint;
    RESTResponse1: TRESTResponse;
    getwp_commentmetaMemTable1: TFDMemTable;
    BackendEndpoint2: TBackendEndpoint;
    RESTResponse2: TRESTResponse;
    postwp_commentmetaMemTable2: TFDMemTable;
    postwp_commentmetaPostMemTable2: TFDMemTable;
    BackendEndpoint3: TBackendEndpoint;
    RESTResponse3: TRESTResponse;
    BackendEndpoint4: TBackendEndpoint;
    RESTResponse4: TRESTResponse;
    getwp_commentsMemTable4: TFDMemTable;
    BackendEndpoint5: TBackendEndpoint;
    RESTResponse5: TRESTResponse;
    postwp_commentsMemTable5: TFDMemTable;
    postwp_commentsPostMemTable5: TFDMemTable;
    BackendEndpoint6: TBackendEndpoint;
    RESTResponse6: TRESTResponse;
    BackendEndpoint7: TBackendEndpoint;
    RESTResponse7: TRESTResponse;
    getwp_linksMemTable7: TFDMemTable;
    BackendEndpoint8: TBackendEndpoint;
    RESTResponse8: TRESTResponse;
    postwp_linksMemTable8: TFDMemTable;
    postwp_linksPostMemTable8: TFDMemTable;
    BackendEndpoint9: TBackendEndpoint;
    RESTResponse9: TRESTResponse;
    BackendEndpoint10: TBackendEndpoint;
    RESTResponse10: TRESTResponse;
    getwp_optionsMemTable10: TFDMemTable;
    BackendEndpoint11: TBackendEndpoint;
    RESTResponse11: TRESTResponse;
    postwp_optionsMemTable11: TFDMemTable;
    postwp_optionsPostMemTable11: TFDMemTable;
    BackendEndpoint12: TBackendEndpoint;
    RESTResponse12: TRESTResponse;
    BackendEndpoint13: TBackendEndpoint;
    RESTResponse13: TRESTResponse;
    getwp_postmetaMemTable13: TFDMemTable;
    BackendEndpoint14: TBackendEndpoint;
    RESTResponse14: TRESTResponse;
    postwp_postmetaMemTable14: TFDMemTable;
    postwp_postmetaPostMemTable14: TFDMemTable;
    BackendEndpoint15: TBackendEndpoint;
    RESTResponse15: TRESTResponse;
    BackendEndpoint16: TBackendEndpoint;
    RESTResponse16: TRESTResponse;
    getwp_postsMemTable16: TFDMemTable;
    BackendEndpoint17: TBackendEndpoint;
    RESTResponse17: TRESTResponse;
    postwp_postsMemTable17: TFDMemTable;
    postwp_postsPostMemTable17: TFDMemTable;
    BackendEndpoint18: TBackendEndpoint;
    RESTResponse18: TRESTResponse;
    BackendEndpoint19: TBackendEndpoint;
    RESTResponse19: TRESTResponse;
    getwp_term_relationshipsMemTable19: TFDMemTable;
    BackendEndpoint20: TBackendEndpoint;
    RESTResponse20: TRESTResponse;
    postwp_term_relationshipsMemTable20: TFDMemTable;
    postwp_term_relationshipsPostMemTable20: TFDMemTable;
    BackendEndpoint21: TBackendEndpoint;
    RESTResponse21: TRESTResponse;
    BackendEndpoint22: TBackendEndpoint;
    RESTResponse22: TRESTResponse;
    getwp_term_taxonomyMemTable22: TFDMemTable;
    BackendEndpoint23: TBackendEndpoint;
    RESTResponse23: TRESTResponse;
    postwp_term_taxonomyMemTable23: TFDMemTable;
    postwp_term_taxonomyPostMemTable23: TFDMemTable;
    BackendEndpoint24: TBackendEndpoint;
    RESTResponse24: TRESTResponse;
    BackendEndpoint25: TBackendEndpoint;
    RESTResponse25: TRESTResponse;
    getwp_termmetaMemTable25: TFDMemTable;
    BackendEndpoint26: TBackendEndpoint;
    RESTResponse26: TRESTResponse;
    postwp_termmetaMemTable26: TFDMemTable;
    postwp_termmetaPostMemTable26: TFDMemTable;
    BackendEndpoint27: TBackendEndpoint;
    RESTResponse27: TRESTResponse;
    BackendEndpoint28: TBackendEndpoint;
    RESTResponse28: TRESTResponse;
    getwp_termsMemTable28: TFDMemTable;
    BackendEndpoint29: TBackendEndpoint;
    RESTResponse29: TRESTResponse;
    postwp_termsMemTable29: TFDMemTable;
    postwp_termsPostMemTable29: TFDMemTable;
    BackendEndpoint30: TBackendEndpoint;
    RESTResponse30: TRESTResponse;
    BackendEndpoint31: TBackendEndpoint;
    RESTResponse31: TRESTResponse;
    getwp_usermetaMemTable31: TFDMemTable;
    BackendEndpoint32: TBackendEndpoint;
    RESTResponse32: TRESTResponse;
    postwp_usermetaMemTable32: TFDMemTable;
    postwp_usermetaPostMemTable32: TFDMemTable;
    BackendEndpoint33: TBackendEndpoint;
    RESTResponse33: TRESTResponse;
    BackendEndpoint34: TBackendEndpoint;
    RESTResponse34: TRESTResponse;
    getwp_usersMemTable34: TFDMemTable;
    BackendEndpoint35: TBackendEndpoint;
    RESTResponse35: TRESTResponse;
    postwp_usersMemTable35: TFDMemTable;
    postwp_usersPostMemTable35: TFDMemTable;
    BackendEndpoint36: TBackendEndpoint;
    RESTResponse36: TRESTResponse;
    BackendAuth1: TBackendAuth;
    EMSProvider1: TEMSProvider;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CallGet(MethodName: string);
    procedure CallPost(MethodName: string);
    procedure CallDelete(MethodName: string; const ID: String);
    function Login(const UserName, Password: String): Boolean;
    procedure Logout;
  published
    procedure getwp_commentmetaExecute;
    procedure postwp_commentmetaExecute;
    procedure deletewp_commentmetaExecute(const ID: String);
    procedure getwp_commentsExecute;
    procedure postwp_commentsExecute;
    procedure deletewp_commentsExecute(const ID: String);
    procedure getwp_linksExecute;
    procedure postwp_linksExecute;
    procedure deletewp_linksExecute(const ID: String);
    procedure getwp_optionsExecute;
    procedure postwp_optionsExecute;
    procedure deletewp_optionsExecute(const ID: String);
    procedure getwp_postmetaExecute;
    procedure postwp_postmetaExecute;
    procedure deletewp_postmetaExecute(const ID: String);
    procedure getwp_postsExecute;
    procedure postwp_postsExecute;
    procedure deletewp_postsExecute(const ID: String);
    procedure getwp_term_relationshipsExecute;
    procedure postwp_term_relationshipsExecute;
    procedure deletewp_term_relationshipsExecute(const ID: String);
    procedure getwp_term_taxonomyExecute;
    procedure postwp_term_taxonomyExecute;
    procedure deletewp_term_taxonomyExecute(const ID: String);
    procedure getwp_termmetaExecute;
    procedure postwp_termmetaExecute;
    procedure deletewp_termmetaExecute(const ID: String);
    procedure getwp_termsExecute;
    procedure postwp_termsExecute;
    procedure deletewp_termsExecute(const ID: String);
    procedure getwp_usermetaExecute;
    procedure postwp_usermetaExecute;
    procedure deletewp_usermetaExecute(const ID: String);
    procedure getwp_usersExecute;
    procedure postwp_usersExecute;
    procedure deletewp_usersExecute(const ID: String);
  end;

var
  AutoTablesClientDM: TAutoTablesClientDM;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

// https://stackoverflow.com/questions/4186458/delphi-call-a-function-whose-name-is-stored-in-a-string
procedure TAutoTablesClientDM.CallGet(MethodName: string);
var M: System.TMethod;
begin
  M.Code := Self.MethodAddress(MethodName); //find method code
  M.Data := Pointer(Self); //store pointer to object instance
  TGetFuncType(m)();
end;

procedure TAutoTablesClientDM.CallPost(MethodName: string);
var M: System.TMethod;
begin
  M.Code := Self.MethodAddress(MethodName); //find method code
  M.Data := Pointer(Self); //store pointer to object instance
  TPostFuncType(m)();
end;

procedure TAutoTablesClientDM.CallDelete(MethodName: string; const ID: String);
var M: System.TMethod;
begin
  M.Code := Self.MethodAddress(MethodName); //find method code
  M.Data := Pointer(Self); //store pointer to object instance
  TDeleteFuncType(m)(ID);
end;

function TAutoTablesClientDM.Login(const UserName, Password: String): Boolean;
begin
  if not BackendAuth1.LoggedIn then
    begin
      BackendAuth1.UserName := UserName;
      BackendAuth1.Password := Password;
      BackendAuth1.Login;

      if BackendAuth1.LoggedIn then
        begin
          if BackendAuth1.LoggedInToken = '' then
            begin
              BackendAuth1.Authentication := TBackendAuthentication.Default;
              Result := False;
            end
          else
            begin
              BackendAuth1.Authentication := TBackendAuthentication.Session;
              Result := True;
            end;
        end;
    end
  else
    Result := True;
end;

procedure TAutoTablesClientDM.Logout;
begin
  BackendAuth1.Logout;
  BackendAuth1.Authentication := TBackendAuthentication.Default;
end;


procedure TAutoTablesClientDM.getwp_commentmetaExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint1.Execute;
  if RESTResponse1.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse1.RawBytes);
      getwp_commentmetaMemTable1.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postwp_commentmetaExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postwp_commentmetaPostMemTable2.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint2.ClearBody;
  BackendEndpoint2.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint2.Execute;
  if RESTResponse2.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse2.RawBytes);
      postwp_commentmetaMemTable2.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletewp_commentmetaExecute(const ID: String);
begin
  BackendEndpoint3.Params.ParameterByName('meta_id').Value := ID;
  BackendEndpoint3.Execute;
end;

procedure TAutoTablesClientDM.getwp_commentsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint4.Execute;
  if RESTResponse4.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse4.RawBytes);
      getwp_commentsMemTable4.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postwp_commentsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postwp_commentsPostMemTable5.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint5.ClearBody;
  BackendEndpoint5.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint5.Execute;
  if RESTResponse5.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse5.RawBytes);
      postwp_commentsMemTable5.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletewp_commentsExecute(const ID: String);
begin
  BackendEndpoint6.Params.ParameterByName('comment_ID').Value := ID;
  BackendEndpoint6.Execute;
end;

procedure TAutoTablesClientDM.getwp_linksExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint7.Execute;
  if RESTResponse7.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse7.RawBytes);
      getwp_linksMemTable7.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postwp_linksExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postwp_linksPostMemTable8.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint8.ClearBody;
  BackendEndpoint8.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint8.Execute;
  if RESTResponse8.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse8.RawBytes);
      postwp_linksMemTable8.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletewp_linksExecute(const ID: String);
begin
  BackendEndpoint9.Params.ParameterByName('link_id').Value := ID;
  BackendEndpoint9.Execute;
end;

procedure TAutoTablesClientDM.getwp_optionsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint10.Execute;
  if RESTResponse10.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse10.RawBytes);
      getwp_optionsMemTable10.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postwp_optionsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postwp_optionsPostMemTable11.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint11.ClearBody;
  BackendEndpoint11.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint11.Execute;
  if RESTResponse11.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse11.RawBytes);
      postwp_optionsMemTable11.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletewp_optionsExecute(const ID: String);
begin
  BackendEndpoint12.Params.ParameterByName('option_id').Value := ID;
  BackendEndpoint12.Execute;
end;

procedure TAutoTablesClientDM.getwp_postmetaExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint13.Execute;
  if RESTResponse13.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse13.RawBytes);
      getwp_postmetaMemTable13.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postwp_postmetaExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postwp_postmetaPostMemTable14.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint14.ClearBody;
  BackendEndpoint14.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint14.Execute;
  if RESTResponse14.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse14.RawBytes);
      postwp_postmetaMemTable14.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletewp_postmetaExecute(const ID: String);
begin
  BackendEndpoint15.Params.ParameterByName('meta_id').Value := ID;
  BackendEndpoint15.Execute;
end;

procedure TAutoTablesClientDM.getwp_postsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint16.Execute;
  if RESTResponse16.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse16.RawBytes);
      getwp_postsMemTable16.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postwp_postsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postwp_postsPostMemTable17.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint17.ClearBody;
  BackendEndpoint17.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint17.Execute;
  if RESTResponse17.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse17.RawBytes);
      postwp_postsMemTable17.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletewp_postsExecute(const ID: String);
begin
  BackendEndpoint18.Params.ParameterByName('ID').Value := ID;
  BackendEndpoint18.Execute;
end;

procedure TAutoTablesClientDM.getwp_term_relationshipsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint19.Execute;
  if RESTResponse19.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse19.RawBytes);
      getwp_term_relationshipsMemTable19.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postwp_term_relationshipsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postwp_term_relationshipsPostMemTable20.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint20.ClearBody;
  BackendEndpoint20.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint20.Execute;
  if RESTResponse20.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse20.RawBytes);
      postwp_term_relationshipsMemTable20.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletewp_term_relationshipsExecute(const ID: String);
begin
  BackendEndpoint21.Params.ParameterByName('object_id').Value := ID;
  BackendEndpoint21.Execute;
end;

procedure TAutoTablesClientDM.getwp_term_taxonomyExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint22.Execute;
  if RESTResponse22.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse22.RawBytes);
      getwp_term_taxonomyMemTable22.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postwp_term_taxonomyExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postwp_term_taxonomyPostMemTable23.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint23.ClearBody;
  BackendEndpoint23.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint23.Execute;
  if RESTResponse23.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse23.RawBytes);
      postwp_term_taxonomyMemTable23.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletewp_term_taxonomyExecute(const ID: String);
begin
  BackendEndpoint24.Params.ParameterByName('term_taxonomy_id').Value := ID;
  BackendEndpoint24.Execute;
end;

procedure TAutoTablesClientDM.getwp_termmetaExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint25.Execute;
  if RESTResponse25.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse25.RawBytes);
      getwp_termmetaMemTable25.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postwp_termmetaExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postwp_termmetaPostMemTable26.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint26.ClearBody;
  BackendEndpoint26.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint26.Execute;
  if RESTResponse26.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse26.RawBytes);
      postwp_termmetaMemTable26.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletewp_termmetaExecute(const ID: String);
begin
  BackendEndpoint27.Params.ParameterByName('meta_id').Value := ID;
  BackendEndpoint27.Execute;
end;

procedure TAutoTablesClientDM.getwp_termsExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint28.Execute;
  if RESTResponse28.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse28.RawBytes);
      getwp_termsMemTable28.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postwp_termsExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postwp_termsPostMemTable29.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint29.ClearBody;
  BackendEndpoint29.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint29.Execute;
  if RESTResponse29.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse29.RawBytes);
      postwp_termsMemTable29.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletewp_termsExecute(const ID: String);
begin
  BackendEndpoint30.Params.ParameterByName('term_id').Value := ID;
  BackendEndpoint30.Execute;
end;

procedure TAutoTablesClientDM.getwp_usermetaExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint31.Execute;
  if RESTResponse31.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse31.RawBytes);
      getwp_usermetaMemTable31.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postwp_usermetaExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postwp_usermetaPostMemTable32.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint32.ClearBody;
  BackendEndpoint32.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint32.Execute;
  if RESTResponse32.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse32.RawBytes);
      postwp_usermetaMemTable32.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletewp_usermetaExecute(const ID: String);
begin
  BackendEndpoint33.Params.ParameterByName('umeta_id').Value := ID;
  BackendEndpoint33.Execute;
end;

procedure TAutoTablesClientDM.getwp_usersExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint34.Execute;
  if RESTResponse34.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse34.RawBytes);
      getwp_usersMemTable34.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postwp_usersExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postwp_usersPostMemTable35.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint35.ClearBody;
  BackendEndpoint35.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint35.Execute;
  if RESTResponse35.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse35.RawBytes);
      postwp_usersMemTable35.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deletewp_usersExecute(const ID: String);
begin
  BackendEndpoint36.Params.ParameterByName('ID').Value := ID;
  BackendEndpoint36.Execute;
end;

end.

