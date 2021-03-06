object ServiceUser: TServiceUser
  OldCreateOrder = False
  Height = 125
  Width = 359
  object ConnectionUser: TFDConnection
    Params.Strings = (
      'Database=C:\appMobile02\DB\CONTROLLERSERVER.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object QryUser: TFDQuery
    CachedUpdates = True
    Connection = ConnectionUser
    SQL.Strings = (
      'select u.cod_user, u.nome_user, u.login_user, u.senha_user'
      'from tbl_Users u'
      '')
    Left = 112
    Top = 24
    object QryUserCOD_USER: TIntegerField
      FieldName = 'COD_USER'
      Origin = 'COD_USER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryUserNOME_USER: TStringField
      FieldName = 'NOME_USER'
      Origin = 'NOME_USER'
      Size = 30
    end
    object QryUserLOGIN_USER: TStringField
      FieldName = 'LOGIN_USER'
      Origin = 'LOGIN_USER'
      Size = 30
    end
    object QryUserSENHA_USER: TStringField
      FieldName = 'SENHA_USER'
      Origin = 'SENHA_USER'
    end
  end
  object AppendUser: TFDQuery
    CachedUpdates = True
    Connection = ConnectionUser
    SQL.Strings = (
      'select u.cod_user, u.nome_user, u.login_user, u.senha_user'
      'from tbl_Users u')
    Left = 176
    Top = 24
    object AppendUserNOME_USER: TStringField
      FieldName = 'NOME_USER'
      Origin = 'NOME_USER'
      Size = 30
    end
    object AppendUserLOGIN_USER: TStringField
      FieldName = 'LOGIN_USER'
      Origin = 'LOGIN_USER'
      Size = 30
    end
    object AppendUserSENHA_USER: TStringField
      FieldName = 'SENHA_USER'
      Origin = 'SENHA_USER'
    end
    object AppendUserCOD_USER: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'COD_USER'
      Origin = 'COD_USER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
