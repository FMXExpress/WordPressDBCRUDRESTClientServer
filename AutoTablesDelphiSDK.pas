unit AutoTablesDelphiSDK;

interface

uses
  System.SysUtils, System.Classes, System.JSON, FireDAC.Stan.Intf, System.StrUtils,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Client, REST.Backend.Endpoint, REST.Types,
  REST.Backend.EMSProvider, REST.Backend.ServiceComponents, REST.Backend.Providers;

type
  TSDKClient = class(TComponent)
  private
    { Private declarations }
    FUserName, FPassword: String;
  public
    { Public declarations }
    FEMSProvider: TEMSProvider;
    FBackendAuth: TBackendAuth;

    constructor Create(AOwner: TComponent);
    destructor Destroy;

    function LoginAPI(const UserName, Password: String): Boolean;
    function GetAPI(const APath: String): TBytesStream;
    function PostAPI(const APath: String; ABytesStream: TBytesStream): TBytesStream;
    function DeleteAPI(const APath: String): TBytesStream;

    function getwp_commentmeta(Aformat: String = ''): TBytesStream;

    function postwp_commentmeta(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletewp_commentmeta(Ameta_id: String; Aformat: String = ''): TBytesStream;

    function getwp_comments(Aformat: String = ''): TBytesStream;

    function postwp_comments(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletewp_comments(Acomment_ID: String; Aformat: String = ''): TBytesStream;

    function getwp_links(Aformat: String = ''): TBytesStream;

    function postwp_links(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletewp_links(Alink_id: String; Aformat: String = ''): TBytesStream;

    function getwp_options(Aformat: String = ''): TBytesStream;

    function postwp_options(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletewp_options(Aoption_id: String; Aformat: String = ''): TBytesStream;

    function getwp_postmeta(Aformat: String = ''): TBytesStream;

    function postwp_postmeta(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletewp_postmeta(Ameta_id: String; Aformat: String = ''): TBytesStream;

    function getwp_posts(Aformat: String = ''): TBytesStream;

    function postwp_posts(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletewp_posts(AID: String; Aformat: String = ''): TBytesStream;

    function getwp_term_relationships(Aformat: String = ''): TBytesStream;

    function postwp_term_relationships(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletewp_term_relationships(Aobject_id: String; Aformat: String = ''): TBytesStream;

    function getwp_term_taxonomy(Aformat: String = ''): TBytesStream;

    function postwp_term_taxonomy(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletewp_term_taxonomy(Aterm_taxonomy_id: String; Aformat: String = ''): TBytesStream;

    function getwp_termmeta(Aformat: String = ''): TBytesStream;

    function postwp_termmeta(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletewp_termmeta(Ameta_id: String; Aformat: String = ''): TBytesStream;

    function getwp_terms(Aformat: String = ''): TBytesStream;

    function postwp_terms(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletewp_terms(Aterm_id: String; Aformat: String = ''): TBytesStream;

    function getwp_usermeta(Aformat: String = ''): TBytesStream;

    function postwp_usermeta(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletewp_usermeta(Aumeta_id: String; Aformat: String = ''): TBytesStream;

    function getwp_users(Aformat: String = ''): TBytesStream;

    function postwp_users(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletewp_users(AID: String; Aformat: String = ''): TBytesStream;


  published
    property Username: String read FUsername write FUsername;
    property Password: String read FPassword write FPassword;
  end;

implementation


constructor TSDKClient.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FEMSProvider := TEMSProvider.Create(AOwner);
  FBackendAuth := TBackendAuth.Create(AOwner);
  FEMSProvider.URLHost := 'localhost';
  FEMSProvider.URLPort := StrToInt('8080');
  FEMSProvider.URLBasePath := '';
  FEMSProvider.URLProtocol := 'http';
  FBackendAuth.Provider := FEMSProvider;
  FUserName := '';
  FPassword := '';
end;

destructor TSDKClient.Destroy;
begin
  inherited Destroy;
  FBackendAuth.DisposeOf;
end;

function TSDKClient.LoginAPI(const UserName, Password: String): Boolean;
begin
  if not FBackendAuth.LoggedIn then
    begin
      FBackendAuth.UserName := UserName;
      FBackendAuth.Password := Password;
      FBAckendAuth.Login;

      if FBackendAuth.LoggedIn then
        begin
          if FBackendAuth.LoggedInToken = '' then
            begin
              FBackendAuth.Authentication := TBackendAuthentication.Default;
              Result := False;
            end
          else
            begin
              FBackendAuth.Authentication := TBackendAuthentication.Session;
              Result := True;
            end;
        end;
    end
  else
    Result := True;
end;

function TSDKClient.GetAPI(const APath: String): TBytesStream;
var
  EndPoint: TBackendEndpoint;
begin
  Result := TBytesStream.Create;
  EndPoint := TBackendEndpoint.Create(Self);
  EndPoint.Provider := FEMSProvider;
  EndPoint.Auth := FBackendAuth;
  try
    EndPoint.Resource := APath;
    EndPoint.Method := TRESTRequestMethod.rmGET;
    EndPoint.Execute;
    Result := TBytesStream.Create(EndPoint.Response.RawBytes);
    if EndPoint.Response.StatusCode>=400 then
      begin
        raise Exception.Create(EndPoint.Response.StatusText);
      end;
  finally
    EndPoint.DisposeOf;
  end;
end;

function TSDKClient.PostAPI(const APath: String; ABytesStream: TBytesStream): TBytesStream;
var
  EndPoint: TBackendEndpoint;
begin
  EndPoint := TBackendEndpoint.Create(Self);
  EndPoint.Provider := FEMSProvider;
  EndPoint.Auth := FBackendAuth;
  try
    EndPoint.Resource := APath;
    EndPoint.Method := TRESTRequestMethod.rmPOST;
    EndPoint.AddBody(ABytesStream,TRESTContentType.ctAPPLICATION_JSON);
    EndPoint.Execute;
    Result := TBytesStream.Create(EndPoint.Response.RawBytes);
    if EndPoint.Response.StatusCode>=400 then
      begin
        raise Exception.Create(EndPoint.Response.StatusText);
      end;
  finally
    EndPoint.DisposeOf;
  end;
end;

function TSDKClient.DeleteAPI(const APath: String): TBytesStream;
var
  EndPoint: TBackendEndpoint;
begin
  Result := TBytesStream.Create;
  EndPoint := TBackendEndpoint.Create(Self);
  EndPoint.Provider := FEMSProvider;
  EndPoint.Auth := FBackendAuth;
  try
    EndPoint.Resource := APath;
    EndPoint.Method := TRESTRequestMethod.rmDELETE;
    EndPoint.Execute;
    Result := TBytesStream.Create(EndPoint.Response.RawBytes);
    if EndPoint.Response.StatusCode>=400 then
      begin
        raise Exception.Create(EndPoint.Response.StatusText);
      end;
  finally
    EndPoint.DisposeOf;
  end;
end;

function TSDKClient.getwp_commentmeta(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getwp_commentmeta/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postwp_commentmeta(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postwp_commentmeta/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletewp_commentmeta(Ameta_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletewp_commentmeta/?meta_id='+Ameta_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getwp_comments(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getwp_comments/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postwp_comments(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postwp_comments/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletewp_comments(Acomment_ID: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletewp_comments/?comment_ID='+Acomment_ID+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getwp_links(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getwp_links/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postwp_links(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postwp_links/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletewp_links(Alink_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletewp_links/?link_id='+Alink_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getwp_options(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getwp_options/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postwp_options(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postwp_options/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletewp_options(Aoption_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletewp_options/?option_id='+Aoption_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getwp_postmeta(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getwp_postmeta/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postwp_postmeta(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postwp_postmeta/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletewp_postmeta(Ameta_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletewp_postmeta/?meta_id='+Ameta_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getwp_posts(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getwp_posts/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postwp_posts(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postwp_posts/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletewp_posts(AID: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletewp_posts/?ID='+AID+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getwp_term_relationships(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getwp_term_relationships/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postwp_term_relationships(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postwp_term_relationships/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletewp_term_relationships(Aobject_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletewp_term_relationships/?object_id='+Aobject_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getwp_term_taxonomy(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getwp_term_taxonomy/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postwp_term_taxonomy(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postwp_term_taxonomy/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletewp_term_taxonomy(Aterm_taxonomy_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletewp_term_taxonomy/?term_taxonomy_id='+Aterm_taxonomy_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getwp_termmeta(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getwp_termmeta/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postwp_termmeta(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postwp_termmeta/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletewp_termmeta(Ameta_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletewp_termmeta/?meta_id='+Ameta_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getwp_terms(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getwp_terms/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postwp_terms(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postwp_terms/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletewp_terms(Aterm_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletewp_terms/?term_id='+Aterm_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getwp_usermeta(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getwp_usermeta/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postwp_usermeta(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postwp_usermeta/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletewp_usermeta(Aumeta_id: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletewp_usermeta/?umeta_id='+Aumeta_id+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;

function TSDKClient.getwp_users(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getwp_users/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postwp_users(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postwp_users/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletewp_users(AID: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletewp_users/?ID='+AID+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;



end.
