object fData: TfData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 250
  Top = 206
  Height = 150
  Width = 215
  object Database: TIBDatabase
    DatabaseName = 'BASE.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = Transaction
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    Left = 16
    Top = 8
  end
  object Transaction: TIBTransaction
    Active = False
    DefaultDatabase = Database
    DefaultAction = TACommitRetaining
    AutoStopAction = saNone
    Left = 80
    Top = 8
  end
  object SQL: TIBSQL
    Database = Database
    ParamCheck = True
    Transaction = Transaction
    Left = 136
    Top = 8
  end
  object WordA: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 16
    Top = 56
  end
end
